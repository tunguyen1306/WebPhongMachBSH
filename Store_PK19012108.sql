
--Create database

USE [master]
GO
IF NOT EXISTS (SELECT [name] FROM sys.databases WHERE name = N'nhphompq_phongkhambacsihon')
BEGIN
CREATE DATABASE [nhphompq_phongkhambacsihon] COLLATE SQL_Latin1_General_CP1_CI_AS
END
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'nhphompq_phongkhambacsihon', @new_cmptlevel=100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [nhphompq_phongkhambacsihon].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET ANSI_NULLS OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET ANSI_PADDING OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET ARITHABORT OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET DISABLE_BROKER
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET READ_WRITE
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET RECOVERY FULL
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET MULTI_USER
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [nhphompq_phongkhambacsihon] SET DB_CHAINING OFF
GO

USE [nhphompq_phongkhambacsihon]
GO

--Table dbo.bh_GiftCode

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[bh_GiftCode] (
	[bh_masp] [nvarchar](50) NOT NULL,
	[bh_giftcode] [nvarchar](10) NOT NULL,
	[bh_datecreate] [datetime] NULL CONSTRAINT [DF_bh_GifCode_bh_datecreate] DEFAULT (getdate()),
	[bh_dateend] [datetime] NULL,
	[bh_point] [int] NULL CONSTRAINT [DF_bh_GifCode_bh_point] DEFAULT ((0)),
	[status] [int] NULL CONSTRAINT [DF_bh_GifCode_status] DEFAULT ((0)));
GO

INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'17927', CAST(0x0000a3280013d00c AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'25277', CAST(0x0000a3280013cf09 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'27527', CAST(0x0000a3280013cc6d AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'27857', CAST(0x0000a3280013ccf0 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'29737', CAST(0x0000a3280013cd8b AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'39722', CAST(0x0000a3280013cf8a AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'72859', CAST(0x0000a3280013ce09 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'78727', CAST(0x0000a3280013ce87 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT01', N'79227', CAST(0x0000a3280013d08c AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'17927', CAST(0x0000a3280013d502 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'25277', CAST(0x0000a3280013d401 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'27527', CAST(0x0000a3280013d174 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'27857', CAST(0x0000a3280013d1fc AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'29737', CAST(0x0000a3280013d27f AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'39722', CAST(0x0000a3280013d481 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'72859', CAST(0x0000a3280013d2ff AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'78727', CAST(0x0000a3280013d382 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT02', N'79227', CAST(0x0000a3280013d582 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'17927', CAST(0x0000a3280013d97e AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'25277', CAST(0x0000a3280013d87d AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'27527', CAST(0x0000a3280013d603 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'27857', CAST(0x0000a3280013d683 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'29737', CAST(0x0000a3280013d702 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'39722', CAST(0x0000a3280013d8fe AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'72859', CAST(0x0000a3280013d77d AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'78727', CAST(0x0000a3280013d7fb AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT04', N'79227', CAST(0x0000a3280013d9fe AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT05', N'27527', CAST(0x0000a3280013da81 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT05', N'27857', CAST(0x0000a3280013db02 AS datetime), NULL, 20, 1)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT05', N'29737', CAST(0x0000a3280013db83 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'17927', CAST(0x0000a3280013df8d AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'25277', CAST(0x0000a3280013de8c AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'27527', CAST(0x0000a3280013dc04 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'27857', CAST(0x0000a3280013dc85 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'29737', CAST(0x0000a3280013dd07 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'39722', CAST(0x0000a3280013df0d AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'72859', CAST(0x0000a3280013dd89 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'78727', CAST(0x0000a3280013de0b AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT06', N'79227', CAST(0x0000a3280013e00c AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'17927', CAST(0x0000a3280013e410 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'25277', CAST(0x0000a3280013e312 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'27527', CAST(0x0000a3280013e08e AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'27857', CAST(0x0000a3280013e110 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'29737', CAST(0x0000a3280013e190 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'39722', CAST(0x0000a3280013e390 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'72859', CAST(0x0000a3280013e210 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'78727', CAST(0x0000a3280013e291 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT07', N'79227', CAST(0x0000a3280013e48c AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'17927', CAST(0x0000a3280013e8f1 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'25277', CAST(0x0000a3280013e792 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'27527', CAST(0x0000a3280013e50c AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'27857', CAST(0x0000a3280013e58d AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'29737', CAST(0x0000a3280013e60f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'39722', CAST(0x0000a3280013e813 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'72859', CAST(0x0000a3280013e68f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'78727', CAST(0x0000a3280013e712 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT08', N'79227', CAST(0x0000a3280013e96f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'17927', CAST(0x0000a3280013ed7a AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'25277', CAST(0x0000a3280013ec7f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'27527', CAST(0x0000a3280013e9ef AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'27857', CAST(0x0000a3280013ea83 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'29737', CAST(0x0000a3280013eafe AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'39722', CAST(0x0000a3280013ecf9 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'72859', CAST(0x0000a3280013eb7d AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'78727', CAST(0x0000a3280013ebff AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT10', N'79227', CAST(0x0000a3280013edfd AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT11', N'27527', CAST(0x0000a3280013ee7f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT11', N'27857', CAST(0x0000a3280013eeff AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT11', N'29737', CAST(0x0000a3280013ef7e AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'17927', CAST(0x0000a3280013f388 AS datetime), NULL, 30, 1)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'25277', CAST(0x0000a3280013f284 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'27527', CAST(0x0000a3280013efff AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'27857', CAST(0x0000a3280013f080 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'29737', CAST(0x0000a3280013f101 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'39722', CAST(0x0000a3280013f308 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'72859', CAST(0x0000a3280013f183 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'78727', CAST(0x0000a3280013f206 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT12', N'79227', CAST(0x0000a3280013f408 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'17927', CAST(0x0000a3280013f818 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'25277', CAST(0x0000a3280013f70d AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'27527', CAST(0x0000a3280013f487 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'27857', CAST(0x0000a3280013f507 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'29737', CAST(0x0000a3280013f588 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'39722', CAST(0x0000a3280013f78e AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'72859', CAST(0x0000a3280013f609 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'78727', CAST(0x0000a3280013f68b AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT13', N'79227', CAST(0x0000a3280013f89e AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'17927', CAST(0x0000a3280013fc81 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'25277', CAST(0x0000a3280013fb95 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'27527', CAST(0x0000a3280013f91f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'27857', CAST(0x0000a3280013f99a AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'29737', CAST(0x0000a3280013fa1c AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'39722', CAST(0x0000a3280013fc09 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'72859', CAST(0x0000a3280013fa9e AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'78727', CAST(0x0000a3280013fb1f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT14', N'79227', CAST(0x0000a3280013fd04 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'17927', CAST(0x0000a32800140200 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'25277', CAST(0x0000a328001400a1 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'27527', CAST(0x0000a3280013fd83 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'27857', CAST(0x0000a3280013fe04 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'29737', CAST(0x0000a3280013fe80 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'39722', CAST(0x0000a32800140121 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'72859', CAST(0x0000a3280013ff02 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'78727', CAST(0x0000a3280013ffe8 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT16', N'79227', CAST(0x0000a32800140282 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'17927', CAST(0x0000a3280014067f AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'25277', CAST(0x0000a3280014057c AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'27527', CAST(0x0000a32800140303 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'27857', CAST(0x0000a32800140383 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'29737', CAST(0x0000a32800140406 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'39722', CAST(0x0000a328001405fe AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'72859', CAST(0x0000a32800140484 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'78727', CAST(0x0000a32800140501 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT17', N'79227', CAST(0x0000a328001406fe AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'17927', CAST(0x0000a32800140b02 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'25277', CAST(0x0000a32800140a04 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'27527', CAST(0x0000a3280014077d AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'27857', CAST(0x0000a328001407ff AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'29737', CAST(0x0000a32800140880 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'39722', CAST(0x0000a32800140a84 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'72859', CAST(0x0000a32800140900 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'78727', CAST(0x0000a32800140980 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT18', N'79227', CAST(0x0000a32800140b85 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'17927', CAST(0x0000a32800140f97 AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'25277', CAST(0x0000a32800140e95 AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'27527', CAST(0x0000a32800140c0a AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'27857', CAST(0x0000a32800140c89 AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'29737', CAST(0x0000a32800140d0b AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'39722', CAST(0x0000a32800140f15 AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'72859', CAST(0x0000a32800140d8e AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'78727', CAST(0x0000a32800140e11 AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT21', N'79227', CAST(0x0000a32800141016 AS datetime), NULL, 50, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'17927', CAST(0x0000a3280014141c AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'25277', CAST(0x0000a3280014131d AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'27527', CAST(0x0000a32800141094 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'27857', CAST(0x0000a32800141116 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'29737', CAST(0x0000a32800141196 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'39722', CAST(0x0000a3280014139d AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'72859', CAST(0x0000a32800141217 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'78727', CAST(0x0000a3280014129c AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT22', N'79227', CAST(0x0000a328001414a2 AS datetime), NULL, 30, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'17927', CAST(0x0000a328001418a9 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'25277', CAST(0x0000a328001417a7 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'27527', CAST(0x0000a32800141521 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'27857', CAST(0x0000a328001415a3 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'29737', CAST(0x0000a32800141624 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'39722', CAST(0x0000a32800141826 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'72859', CAST(0x0000a328001416a3 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'78727', CAST(0x0000a32800141727 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'LT24', N'79227', CAST(0x0000a32800141929 AS datetime), NULL, 20, 0)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'ML77', N'ML899', CAST(0x0000a32d0106b462 AS datetime), NULL, 250, 1)

GO
INSERT INTO [dbo].[bh_GiftCode] ([bh_masp], [bh_giftcode], [bh_datecreate], [bh_dateend], [bh_point], [status])
	VALUES (N'TEST', N'15975', CAST(0x0000a33200ac6115 AS datetime), NULL, 120, 1)

GO

--Table dbo.bh_GiftProduct

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[bh_GiftProduct] (
	[id] [bigint] NOT NULL IDENTITY (1, 1),
	[bh_name] [nvarchar](250) NULL,
	[bh_key] [nvarchar](250) NULL,
	[bh_des] [ntext] NULL,
	[bh_quantity] [int] NULL,
	[bh_unit] [nvarchar](50) NULL CONSTRAINT [DF_bh_GiftProduct_bh_unit] DEFAULT (N'Point'),
	[bh_price] [int] NULL,
	[bh_image_before] [nvarchar](250) NULL,
	[bh_status] [int] NULL CONSTRAINT [DF_bh_GiftProduct_bh_status] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[bh_GiftProduct] ON
GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (7, N'Cài tóc pha lê', N'cai-toc-pha-le', N'<p>c&agrave;i t&oacute;c pha l&ecirc;</p>', 1, N'Point', 90, N'~/img/giftproducts/635353592918449490_cai-toc-phale-xanh-trang-90k-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (8, N'Vòng tay tròn bản to thời thượng 08', N'vong-tay-tron-ban-to-thoi-thuong-08', N'<p>v&ograve;ng tay tr&ograve;n bản to thời thượng 08</p>', 1, N'Point', 90, N'~/img/giftproducts/cai-toc-phale-xanh-trang-90k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (9, N'Dây chuyền 3 mặt tứ giác', N'day-chuyen-3-mat-tu-giac', N'<p>d&acirc;y chuyền 3 mặt tứ gi&aacute;c</p>', 1, N'Point', 150, N'~/img/giftproducts/635353593115750762_day-chuyen-02-150k-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (10, N'Dây chuyền giọt nước tia nắng', N'day-chuyen-giot-nuoc-tia-nang', N'<p>d&acirc;y chuyền giọt nước tia nắng</p>', 1, N'Point', 150, N'~/img/giftproducts/day-chuyen-02-150k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (11, N'Dây chuyền 2 mặt ', N'day-chuyen-2-mat', N'<p>d&acirc;y chuyền 2 mặt&nbsp;</p>', 1, N'Point', 200, N'~/img/giftproducts/day-chuyen-03-200k-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (12, N'Dây chuyền ngọc trai pha lê', N'day-chuyen-ngoc-trai-pha-le', N'<p>d&acirc;y chuyền ngọc trai pha l&ecirc;</p>', 1, N'Point', 200, N'~/img/giftproducts/day-chuyen-03-200k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (13, N'Dây đeo pha lê 5 bông hoa ', N'day-deo-pha-le-5-bong-hoa', N'<p>d&acirc;y đeo pha l&ecirc; 5 b&ocirc;ng hoa</p>', 1, N'Point', 250, N'~/img/giftproducts/day-deo-pha-le-5-bong-hoa-250k-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (14, N'Bộ 3 cài tóc đỏ đen tím', N'bo-3-cai-toc-do-den-tim', N'<p>bộ 3 c&agrave;i t&oacute;c đỏ đen t&iacute;m</p>', 3, N'Point', 120, N'~/img/giftproducts/day-deo-pha-le-5-bong-hoa-250k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (15, N'Dây nịt hoa hồng kem ', N'day-nit-hoa-hong-kem', N'<p>d&acirc;y nịt hoa hồng kem&nbsp;</p>', 1, N'Point', 100, N'~/img/giftproducts/day-nit-hoa-hong-kem-100k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (16, N'Dây nịt nâu', N'day-nit-nau', N'<p>d&acirc;y nịt n&acirc;u</p>', 1, N'Point', 60, N'~/img/giftproducts/day-nit-tim-60k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (17, N'Dây nịt tím ', N'day-nit-tim', N'<p>D&acirc;y nịt t&iacute;m&nbsp;</p>', 1, N'Point', 60, N'~/img/giftproducts/day-nit-tim-60k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (18, N'Dây nịt xanh coban', N'day-nit-xanh-coban', N'<p>D&acirc;y nịt xanh coban</p>', 1, N'Point', 60, N'~/img/giftproducts/day-nit-xanh-coban-60k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (19, N'Dây nịt đen ', N'day-nit-den', N'<p>D&acirc;y nịt đen&nbsp;</p>', 1, N'Point', 80, N'~/img/giftproducts/day-nit-xanh-den-80k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (20, N'Dây nịt xanh lá ', N'day-nit-xanh-la', N'<p>D&acirc;y nịt xanh l&aacute;&nbsp;</p>', 1, N'Point', 80, N'~/img/giftproducts/day-nit-xanh-la-80k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (21, N'Dây nịt đen ', N'day-nit-den', N'<p>D&acirc;y nịt đen&nbsp;</p>', 1, N'Point', 100, N'~/img/giftproducts/day-nitden-100k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (22, N'Hoa tai chùm tròn bắt sáng màu bạc', N'hoa-tai-chum-tron-bat-sang-mau-bac', N'<p>Hoa tai ch&ugrave;m tr&ograve;n bắt s&aacute;ng m&agrave;u bạc</p>', 1, N'Point', 60, N'~/img/giftproducts/hoa-tai-chum-tron-bat-sang-mau-bac-60-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (23, N'Hoa tai ba chiếc lá màu vàng', N'hoa-tai-ba-chiec-la-mau-vang', N'<p>Hoa tai ba chiếc l&aacute; m&agrave;u v&agrave;ng&nbsp;</p>', 1, N'Point', 70, N'~/img/giftproducts/hoa-tai-chum-tron-bat-sang-mau-bac-70k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (24, N'Hoa tai hai vòng tròn vàng đen', N'hoa-tai-hai-vong-tron-vang-den', N'<p>Hoa tai hai v&ograve;ng tr&ograve;n v&agrave;ng đen</p>', 1, N'Point', 70, N'~/img/giftproducts/635354220102616989_hoa-tai-hai-vong-tron-vang-den-70k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (25, N'Hoa tai hình thoi vàng đen', N'hoa-tai-hinh-thoi-vang-den', N'<p>Hoa tai h&igrave;nh thoi v&agrave;ng đen</p>', 1, N'Point', 70, N'~/img/giftproducts/635354219913527977_hoa-tai-hinh-thoi-vang-den-70k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (26, N'Hoa tai lá màu bạc ', N'hoa-tai-la-mau-bac', N'<p>Hoa tai l&aacute; m&agrave;u bạc&nbsp;</p>', 1, N'Point', 70, N'~/img/giftproducts/hoa-tai-la-mau-bac-70k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (27, N'Vòng tay pha lê xanh lục ', N'vong-tay-pha-le-xanh-luc', N'<p>V&ograve;ng tay pha l&ecirc; xanh lục&nbsp;</p>', 1, N'Point', 150, N'~/img/giftproducts/vong-tay-phale-xanh-luc-150k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (28, N'Vòng tay thời thượng 02 ', N'vong-tay-thoi-thuong-02', N'<p>V&ograve;ng tay thời thượng 02&nbsp;</p>', 1, N'Point', 120, N'~/img/giftproducts/vong-tay-thoi-thuong-02-120k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (29, N'Vòng tay thời thượng 03', N'vong-tay-thoi-thuong-03', N'<p>V&ograve;ng tay thời thượng 03</p>', 0, N'Point', 120, N'~/img/giftproducts/vong-tay-thoi-thuong-03-120k.jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (30, N'Vòng tay thời thượng 04', N'vong-tay-thoi-thuong-04', N'<p>V&ograve;ng tay thời thượng 04</p>', 1, N'Point', 120, N'~/img/giftproducts/vong-tay-thoi-thuong-05-120k-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (31, N'Vòng tay thời thượng 05', N'vong-tay-thoi-thuong-05', N'<p>V&ograve;ng tay thời thượng 05</p>', 1, N'Point', 120, N'~/img/giftproducts/vong-tay-thoi-thuong-05-120k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (32, N'Vòng tay thời thượng 06', N'vong-tay-thoi-thuong-06', N'<p>V&ograve;ng tay thời thượng 06</p>', 1, N'Point', 120, N'~/img/giftproducts/vong-tay-thoi-thuong-07-140k-(1).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (33, N'Vòng tay thời thượng 07 ', N'vong-tay-thoi-thuong-07', N'<p>V&ograve;ng tay thời thượng 07&nbsp;</p>', 1, N'Point', 120, N'~/img/giftproducts/vong-tay-thoi-thuong-07-140k-(2).jpg', 1)

GO
INSERT INTO [dbo].[bh_GiftProduct] ([id], [bh_name], [bh_key], [bh_des], [bh_quantity], [bh_unit], [bh_price], [bh_image_before], [bh_status])
	VALUES (34, N'Vòng tay thời thượng 01', N'vong-tay-thoi-thuong-01', N'<p>V&ograve;ng tay thời thượng 01</p>', 1, N'Point', 90, N'~/img/giftproducts/vong-tay-thoi-thuong-90k.jpg', 1)

GO
SET IDENTITY_INSERT [dbo].[bh_GiftProduct] OFF
GO

--Table dbo.bh_UserGiftCode

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[bh_UserGiftCode] (
	[user_id] [bigint] NOT NULL,
	[bh_massp] [nvarchar](50) NOT NULL,
	[bh_giftcode] [nvarchar](10) NOT NULL,
	[bh_inputdate] [datetime] NULL CONSTRAINT [DF_bh_UserGiftCode_bh_inputdate] DEFAULT (getdate()),
	[bh_point] [int] NULL);
GO

INSERT INTO [dbo].[bh_UserGiftCode] ([user_id], [bh_massp], [bh_giftcode], [bh_inputdate], [bh_point])
	VALUES (8, N'ML77', N'ML899', CAST(0x0000a32d0107167f AS datetime), 250)

GO
INSERT INTO [dbo].[bh_UserGiftCode] ([user_id], [bh_massp], [bh_giftcode], [bh_inputdate], [bh_point])
	VALUES (9, N'LT05', N'27857', CAST(0x0000a33000c593c0 AS datetime), 20)

GO
INSERT INTO [dbo].[bh_UserGiftCode] ([user_id], [bh_massp], [bh_giftcode], [bh_inputdate], [bh_point])
	VALUES (10, N'TEST', N'15975', CAST(0x0000a33200ad3d14 AS datetime), 120)

GO
INSERT INTO [dbo].[bh_UserGiftCode] ([user_id], [bh_massp], [bh_giftcode], [bh_inputdate], [bh_point])
	VALUES (12, N'lt12', N'17927', CAST(0x0000a34300c25a38 AS datetime), 30)

GO

--Table dbo.bh_UserProduct

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[bh_UserProduct] (
	[id] [bigint] NOT NULL IDENTITY (1, 1),
	[user_id] [bigint] NULL,
	[bh_id] [bigint] NULL,
	[bh_type] [int] NULL,
	[bh_qt] [int] NULL,
	[bh_price] [int] NULL,
	[bh_unit] [nvarchar](50) NULL,
	[bh_date] [datetime] NULL CONSTRAINT [DF_bh_UserProduct_bh_date] DEFAULT (getdate()));
GO

SET IDENTITY_INSERT [dbo].[bh_UserProduct] ON
GO
INSERT INTO [dbo].[bh_UserProduct] ([id], [user_id], [bh_id], [bh_type], [bh_qt], [bh_price], [bh_unit], [bh_date])
	VALUES (11, 3, 17, 1, 1, 60, N'Point', CAST(0x0000a328001528f6 AS datetime))

GO
INSERT INTO [dbo].[bh_UserProduct] ([id], [user_id], [bh_id], [bh_type], [bh_qt], [bh_price], [bh_unit], [bh_date])
	VALUES (12, 3, 16, 1, 1, 60, N'Point', CAST(0x0000a328001531dc AS datetime))

GO
INSERT INTO [dbo].[bh_UserProduct] ([id], [user_id], [bh_id], [bh_type], [bh_qt], [bh_price], [bh_unit], [bh_date])
	VALUES (13, 1, 7, 1, 1, 90, N'Point', CAST(0x0000a328010a9042 AS datetime))

GO
INSERT INTO [dbo].[bh_UserProduct] ([id], [user_id], [bh_id], [bh_type], [bh_qt], [bh_price], [bh_unit], [bh_date])
	VALUES (14, 10, 29, 1, 1, 120, N'Point', CAST(0x0000a33200b0c780 AS datetime))

GO
SET IDENTITY_INSERT [dbo].[bh_UserProduct] OFF
GO

--Table dbo.ctr_in_form

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[ctr_in_form] (
	[id_ctr] [int] NOT NULL,
	[id_form] [int] NOT NULL,
	[order_ctr] [int] NOT NULL CONSTRAINT [DF__ctr_in_fo__order__02084FDA] DEFAULT ((0)),
	[ctr_client_id] [nvarchar](50) NOT NULL,
	[ctr_store] [nvarchar](200) NULL,
	[ctr_name] [nvarchar](200) NULL,
	[id_ctr_in_form] [int] NOT NULL IDENTITY (1, 1),
	[ctr_placeholder] [nvarchar](200) NULL,
	[ctr_name_us] [nvarchar](200) NULL,
	[ctr_placeholder_us] [nvarchar](200) NULL,
	[ctr_parent_active] [nvarchar](50) NULL,
	[ctr_effect_show] [nvarchar](50) NULL,
	[ctr_query_data] [ntext] NULL,
	[ctr_require_validate] [bit] NULL CONSTRAINT [DF_ctr_in_form_ctr_require_validate] DEFAULT ((0)),
	[ctr_require_validate_rex] [nvarchar](250) NULL,
	[ctr_require_validate_mess] [nvarchar](250) NULL);
GO

SET IDENTITY_INSERT [dbo].[ctr_in_form] ON
GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 1, 1, N'fs_combox_project', NULL, N'Tất cả danh mục:', 192, NULL, NULL, NULL, N'0', N'slide', N'select  id_group_other as st_value,group_other_name as st_name,0 as st_parent from other_group where group_other_status=1 and group_other_admin=0', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 1, 2, N'fs_textbox', NULL, N'Tên danh mục:', 193, N'thanh dep trai', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 1, 3, N'fs_combox_other', NULL, N'Danh mục:', 194, NULL, NULL, NULL, N'fs_combox_project', N'slide', N'select  id_list_other as st_value,list_other_name as st_name,id_group_other as st_parent from other_list where list_other_status=1 and list_other_admin=0', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 1, 4, N'fs_combox_other_no', NULL, N'test lần riêng:', 195, NULL, NULL, NULL, N'0', N'slide', N'select  id_list_other as st_value,list_other_name as st_name,id_group_other as st_parent from other_list where list_other_status=1 and list_other_admin=0', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 1, 5, N'fs_combox_item', NULL, N'Thành phần:', 196, NULL, NULL, NULL, N'fs_combox_other', N'slide', N'select id_other as st_value,other_name as st_name,id_list_other as st_parent from other_item where other_status=1 order by other_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 1, 6, N'comboxTemp', NULL, N'CB Tạm:', 197, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''comboxTemp'' and id_form=1 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 3, 1, N'txt_cac_danh_muc', NULL, N'Tên các danh mục:', 297, N'Nhập tên các danh mục', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 3, 2, N'cb_trang_thai', NULL, N'Trạng thái:', 298, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_trang_thai'' and id_form=3 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 3, 3, N'cb_danh_muc_cha', NULL, N'Da mục cha:', 299, NULL, NULL, NULL, N'0', N'slide', N'select  id_group_other as st_value,group_other_name as st_name,0 as st_parent from other_group where group_other_status=1 and group_other_admin=0', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 4, 1, N'txt_orther', NULL, N'Thứ tự', 317, N'Nhập thứ tự', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 4, 2, N'txtFrom', NULL, N'Tên From', 318, N'Nhập tên from', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 4, 3, N'cbb_from_level', NULL, N'Cấp cha', 319, NULL, NULL, NULL, N'cbb_fromtype', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cbb_from_level'' and id_form=4 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 4, 4, N'cbb_fromtype', NULL, N'Loại From', 320, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cbb_fromtype'' and id_form=4 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 15, 1, N'txt_name_department', NULL, N'Phòng ban:', 459, N'department_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 16, 1, N'cb_name_department', NULL, N'Phòng ban:', 467, NULL, NULL, NULL, N'0', N'slide', N'select  id_department as st_value,department_name as st_name,0 as st_parent from pct_department', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 16, 2, N'txt_name_title', NULL, N'Name Title:', 468, N'title_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 17, 1, N'cb_id_title', NULL, N'Chức Vụ:', 477, NULL, NULL, NULL, N'0', N'slide', N'select  id_title as st_value,title_name as st_name,0 as st_parent from pct_title', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 17, 2, N'txt_name', NULL, N'Name Employee:', 478, N'employee_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 17, 3, N'txt_address', NULL, N'Address:', 479, N'employee_address', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 17, 4, N'txt_mobile', NULL, N'Mobile:', 480, N'employee_mobile', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 18, 1, N'cb_employee', NULL, N'Name Employee:', 496, NULL, NULL, NULL, N'0', N'slide', N'select  id_employee as st_value,employee_name as st_name,0 as st_parent from pct_employee', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 18, 2, N'txt_fromdate', NULL, N'From Date:', 497, N'ticket_fromdate', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 18, 3, N'txt_todate', NULL, N'To Date:', 498, N'ticket_todate', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 18, 4, N'txt_money', NULL, N'Money:', 499, N'ticket_money', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 18, 5, N'txt_add', NULL, N'Add:', 500, N'ticket_add', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 18, 6, N'txt_note', NULL, N'Note:', 501, N'ticket_note', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 21, 1, N'txt_banner_name', NULL, N'Tên banner', 516, N'banner_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 21, 2, N'cb_banner_order', NULL, N'Thứ tự', 517, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_banner_order'' and id_form=21 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 21, 3, N'txt_banner_link', NULL, N'Link khi click', 518, N'banner_link', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 21, 4, N'txt_banner_img', NULL, N'Hình banner', 519, N'banner_img', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 21, 5, N'txt_banner_tiny', NULL, N'Hình banner nhỏ', 520, N'banner_tiny', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 21, 6, N'cb_banner_status', NULL, N'Trạng thái', 521, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_banner_status'' and id_form=21 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 20, 1, N'txt_menu_name', NULL, N'Tên menu', 532, N'menu_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 20, 2, N'cb_menu_order', NULL, N'Thứ tự', 533, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_menu_order'' and id_form=20 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 20, 3, N'txt_menu_code', NULL, N'Tên không dấu', 534, N'menu_code', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 20, 4, N'cb_id_banner', NULL, N'Hình banner nhỏ', 535, NULL, NULL, NULL, N'0', N'slide', N'select  banner_tiny as st_value,banner_name as st_name,0 as st_parent from web_banner', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 20, 5, N'cb_menu_status', NULL, N'Trạng thái', 536, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_menu_status'' and id_form=20 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 22, 1, N'txt_list_prod_name', NULL, N'Tên danh mục', 680, N'list_prod_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 22, 2, N'cb_list_prod_order', NULL, N'Thứ tự', 681, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_list_prod_order'' and id_form=22 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 22, 3, N'cb_list_prod_link', NULL, N'Cấp cha', 682, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_list_prod_link'' and id_form=22 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 22, 4, N'cb_list_prod_status', NULL, N'Trạng thái', 683, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_list_prod_status'' and id_form=22 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 31, 1, N'txt_content_name', NULL, N'Nội dung', 685, N'content_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 31, 2, N'cb_id_menu', NULL, N'Mã menu', 686, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_id_menu'' and id_form=31 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 32, 1, N'txt_content_other_title', NULL, N'Tiêu đề', 692, N'content_other_title', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 32, 2, N'txt_content_other', NULL, N'Nội dung', 693, N'content_other', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 32, 3, N'cb_id_menu', NULL, N'Mã menu', 694, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_id_menu'' and id_form=32 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 33, 1, N'txt_customer_name', NULL, N'Tên khách hàng', 726, N'customer_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 33, 2, N'txt_customer_logo', NULL, N'Logo khách hàng', 727, N'customer_logo', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 33, 3, N'txt_customer_prod', NULL, N'Sản phẩm sử dụng', 728, N'customer_prod', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 33, 4, N'txt_customer_idea', NULL, N'Ý kiến khách hàng', 729, N'customer_idea', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 33, 5, N'cb_customer_order', NULL, N'Thứ tự', 730, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_order'' and id_form=33 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 33, 6, N'cb_customer_status', NULL, N'Trạng thái', 731, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_status'' and id_form=33 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 30, 1, N'txt_prod_name', NULL, N'Tên sản phẩm', 738, N'prod_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 30, 2, N'cb_prod_order', NULL, N'Thứ tự', 739, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_prod_order'' and id_form=30 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 30, 3, N'cb_prod_status', NULL, N'Trạng thái', 740, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_prod_status'' and id_form=30 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 30, 4, N'txt_prod_content', NULL, N'Nội dung', 741, N'prod_content', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 35, 1, N'txt_employer_name', NULL, N'Họ và Tên', 757, N'employer_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 35, 2, N'cb_id_title', NULL, N'Mã chức vụ', 758, NULL, NULL, NULL, N'0', N'slide', N'select  id_title as st_value,title_name as st_name,0 as st_parent from web_title', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 35, 3, N'txt_employer_code', NULL, N'Mã nhân viên code', 759, N'employer_code', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 35, 4, N'txt_employer_ext', NULL, N'Số điện thoại ext', 760, N'employer_ext', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 35, 5, N'txt_employer_mobile', NULL, N'Điện thoại di động', 761, N'employer_mobile', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 35, 6, N'cb_employer_status', NULL, N'Trạng thái', 762, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_employer_status'' and id_form=35 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 36, 1, N'txt_chater_name', NULL, N'Họ và Tên', 778, N'chater_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 36, 2, N'txt_customer_logo', NULL, N'Email', 779, N'customer_logo', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 36, 3, N'txt_customer_prod', NULL, N'Điện thoại', 780, N'customer_prod', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 36, 4, N'txt_customer_idea', NULL, N'Nội dung', 781, N'customer_idea', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 36, 5, N'cb_customer_order', NULL, N'Thứ tự', 782, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_order'' and id_form=36 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 36, 6, N'cb_customer_status', NULL, N'Trạng thái', 783, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_status'' and id_form=36 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 37, 1, N'txt_id_employer', NULL, N'Mã nhân viên', 787, N'id_employer', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 37, 2, N'txt_chater_content', NULL, N'Nội dung', 788, N'chater_content', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 37, 3, N'txt_chater_content_create', NULL, N'Thời gian tạo', 789, N'chater_content_create', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 39, 1, N'txt_customer_name', NULL, N'Tên khách hàng', 843, N'customer_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 39, 2, N'txt_customer_logo', NULL, N'Logo khách hàng', 844, N'customer_logo', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 39, 3, N'txt_customer_prod', NULL, N'Sản phẩm sử dụng', 845, N'customer_prod', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 39, 4, N'txt_customer_idea', NULL, N'Ý kiến khách hàng', 846, N'customer_idea', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 39, 5, N'cb_customer_order', NULL, N'Thứ tự', 847, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_order'' and id_form=39 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 39, 7, N'cb_customer_status', NULL, N'Trạng thái', 849, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_status'' and id_form=39 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 42, 1, N'txt_menu_name', NULL, N'Tên menu', 860, N'menu_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 42, 2, N'cb_menu_order', NULL, N'Thứ tự', 861, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_menu_order'' and id_form=42 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 42, 3, N'txt_menu_code', NULL, N'Tên không dấu', 862, N'menu_code', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 42, 4, N'cb_banner_tiny', NULL, N'Hình banner nhỏ', 863, NULL, NULL, NULL, N'0', N'slide', N'select  banner_tiny as st_value,banner_tiny as st_name,0 as st_parent from web_banner', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 42, 5, N'cb_menu_status', NULL, N'Trạng thái', 864, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_menu_status'' and id_form=42 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 43, 1, N'txt_content_other_title', NULL, N'Tiêu đề nội dung', 871, N'content_other_title', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 43, 2, N'txt_content_other', NULL, N'Nội dung', 872, N'content_other', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 43, 3, N'cb_id_menu', NULL, N'Mã menu', 873, NULL, NULL, NULL, N'0', N'slide', N'select  id_menu as st_value,menu_name as st_name,0 as st_parent from web_menu_root', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 44, 1, N'txt_content_other_title', NULL, N'Tiêu đề nội dung', 877, N'content_other_title', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 44, 2, N'txt_content_other', NULL, N'Nội dung', 878, N'content_other', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 44, 3, N'cb_id_menu', NULL, N'Mã menu', 879, NULL, NULL, NULL, N'0', N'slide', N'select  id_menu as st_value,menu_name as st_name,0 as st_parent from web_menu_root', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 45, 1, N'txt_customer_name', NULL, N'Tên khách hàng', 908, N'customer_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 45, 2, N'txt_customer_logo', NULL, N'Logo khách hàng', 909, N'customer_logo', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 45, 3, N'txt_customer_prod', NULL, N'Sản phẩm sử dụng', 910, N'customer_prod', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 45, 4, N'txt_customer_idea', NULL, N'Ý kiến khách hàng', 911, N'customer_idea', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 45, 5, N'cb_customer_order', NULL, N'Thứ tự', 912, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_order'' and id_form=45 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 45, 6, N'cb_customer_status', NULL, N'Trạng thái', 913, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_status'' and id_form=45 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 45, 7, N'thanh_1', NULL, N'Tên textbox:', 914, N'thanh_2', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 46, 1, N'txt_content_other_title', NULL, N'Tiêu đề', 923, N'content_other_title', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 46, 2, N'txt_content_other', NULL, N'Nội dung', 924, N'content_other', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 46, 3, N'cb_id_menu', NULL, N'Mã menu', 925, NULL, NULL, NULL, N'0', N'slide', N'select  id_menu as st_value,menu_name as st_name,0 as st_parent from web_menu_root', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 47, 1, N'txt_chater_name', NULL, N'Họ và Tên', 941, N'chater_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 47, 2, N'txt_customer_logo', NULL, N'Email', 942, N'customer_logo', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 47, 3, N'txt_customer_prod', NULL, N'Điện thoại', 943, N'customer_prod', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 47, 4, N'txt_customer_idea', NULL, N'Nội dung', 944, N'customer_idea', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 47, 5, N'cb_customer_order', NULL, N'Thứ tự', 945, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_order'' and id_form=47 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 47, 6, N'cb_customer_status', NULL, N'Trạng thái', 946, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_customer_status'' and id_form=47 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 48, 1, N'cb_id_chater', NULL, N'Mã hỗ trợ', 975, NULL, NULL, NULL, N'0', N'slide', N'select  id_chater as st_value,chater_name as st_name,0 as st_parent from web_chater', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 48, 2, N'cb_id_employer', NULL, N'Mã nhân viên', 976, NULL, NULL, NULL, N'0', N'slide', N'select  id_employer as st_value,employer_name as st_name,0 as st_parent from web_employer', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 48, 3, N'txt_chater_content_note', NULL, N'Nội dung', 977, N'chater_content', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 48, 4, N'txt_chater_content_create', NULL, N'Thời gian tạo', 978, N'chater_content_create', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 49, 1, N'txt_content_other_title', NULL, N'Tiêu đề', 992, N'content_other_title', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 49, 2, N'cb_id_menu', NULL, N'Mã menu', 993, NULL, NULL, NULL, N'0', N'slide', N'select  id_menu as st_value,menu_name as st_name,0 as st_parent from web_menu_root', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 49, 3, N'textarea1', NULL, N'Tên textarea:', 994, NULL, NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 50, 1, N'test1', NULL, N'test1', 1041, N'Textbox', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 50, 2, N'textarea1', NULL, N'Tên textarea:', 1042, N'Textarea', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 29, 1, N'txt_department_name', NULL, N'Phòng ban', 1048, N'department_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 34, 1, N'txt_title_name', NULL, N'Tên chức vụ', 1049, N'title_name', NULL, NULL, N'0', N'slide', NULL, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 34, 2, N'cb_id_department', NULL, N'Mã phòng ban', 1050, NULL, NULL, NULL, N'0', N'slide', N'select  id_department as st_value,department_name as st_name,0 as st_parent from web_department', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 1, N'cb_nhom_trang', NULL, N'Nhóm page:', 1231, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_group_page AS st_value, group_page_name AS st_name, 0 AS st_parent FROM sys_group_page WHERE (group_page_status = 1) ORDER BY group_page_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 2, N'cb_page', NULL, N'Page:', 1232, NULL, NULL, NULL, N'cb_nhom_trang', N'slide', N'SELECT        id_page AS st_value, page_name AS st_name, id_group_page AS st_parent FROM  sys_page ORDER BY page_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 3, N'cb_tai_khoan', NULL, N'Tài khoản:', 1233, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_user AS st_value, user_full_name AS st_name, 0 AS st_parent FROM            user_steel ORDER BY st_name', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 4, N'cb_cong_ty', NULL, N'Công ty:', 1234, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_company AS st_value, company_name AS st_name, 0 AS st_parent FROM            sys_company', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 5, N'cb_quyen_xem', NULL, N'Quyền xem:', 1235, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_quyen_xem'' and id_form=69 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 6, N'cb_quyen_tao', NULL, N'Quyền tạo:', 1236, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_quyen_tao'' and id_form=69 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 7, N'cb_quyen_xoa', NULL, N'Quyền xóa:', 1237, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_quyen_xoa'' and id_form=69 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 8, N'cb_quyen_cau_hinh', NULL, N'Quyền cấu hình:', 1238, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_quyen_cau_hinh'' and id_form=69 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 69, 9, N'cb_quyen_phan_quyen', NULL, N'Quyền phân quyền:', 1239, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_quyen_phan_quyen'' and id_form=69 order by record_order', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 59, 1, N'cb_nhom_san_pham', NULL, N'Nhóm sản phẩm:', 1333, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_store_cate AS st_value, store_cate_name AS st_name, 0 AS st_parent FROM            store_cate WHERE        (store_cate_status = 1) ORDER BY store_cate_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 59, 2, N'txt_ma_san_pham', NULL, N'Mã sản phẩm *:', 1334, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 59, 3, N'txt_ten_san_pham', NULL, N'Tên sản phẩm *:', 1335, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 59, 4, N'cb_don_vi_tinh', NULL, N'Đơn vị tính', 1336, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_store_unit AS st_value, store_unit_name AS st_name, 0 AS st_parent FROM            store_unit ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 59, 5, N'file_hinh_san_pham', NULL, N'Hình sản phẩm:', 1337, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 57, 1, N'txt_ten_kho', NULL, N'Tên kho *:', 1438, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 57, 2, N'txt_dia_chi', NULL, N'Địa chỉ *:', 1439, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 57, 3, N'txt_dien_thoai', NULL, N'Điện thoại *:', 1440, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 57, 4, N'txt_mo_ta', NULL, N'Mô tả:', 1441, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 60, 1, N'cb_kho_hang', NULL, N'Kho hàng:', 1585, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_store AS st_value, store_name AS st_name, 0 AS st_parent FROM            store_ ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 60, 2, N'txt_ma_ngan_chua', NULL, N'Mã ngăn chứa *:', 1586, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 60, 3, N'cb_ke_hang', NULL, N'Kệ hàng:', 1587, NULL, NULL, NULL, N'cb_kho_hang', N'slide', N'SELECT        id_store_stock AS st_value, store_stock_code AS st_name, store_stock_store AS st_parent FROM store_stock WHERE        (store_stock_status = 1) ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 60, 4, N'txt_so_luong', NULL, N'Số lượng *:', 1588, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), N'^0*[1-9]\d*$', N'* Yêu cầu nhập số nguyên')

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 52, 1, N'txt_company_type', NULL, N'Tên loại *:', 1595, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 55, 1, N'txt_don_vi_tinh', NULL, N'Tên đơn vị *:', 1597, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 1, N'txt_company_name', NULL, N'Tên công ty *:', 1616, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 2, N'txt_company_code', NULL, N'Mã số thuế *:', 1617, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 3, N'txt_company_address', NULL, N'Địa chỉ *:', 1618, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 4, N'txt_company_phone', NULL, N'Điện thoại *:', 1619, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 5, N'txt_company_email', NULL, N'Email *:', 1620, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 6, N'txt_company_website', NULL, N'Website:', 1621, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 51, 7, N'file_company_logo', NULL, N'Hình logo:', 1622, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 8, N'txt_company_des', NULL, N'Mô tả:', 1623, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 51, 9, N'cb_id_store_com_type', NULL, N'Loại hình công ty:', 1624, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_id_store_com_type'' and id_form=51 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 10, N'txt_company_fax', NULL, N'Fax:', 1625, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 11, N'txt_company_bank', NULL, N'Mã tài khoản Bank *:', 1626, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 51, 12, N'txt_company_bank_ads', NULL, N'Địa chỉ đk bank *:', 1627, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 61, 1, N'txt_ma_ke_hang', NULL, N'Mã kệ hàng *:', 1639, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 61, 2, N'cb_trang_thai', NULL, N'Trạng thái:', 1640, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_trang_thai'' and id_form=61 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 61, 3, N'cb_thuoc_kho', NULL, N'Thuộc kho:', 1641, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_thuoc_kho'' and id_form=61 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 53, 1, N'txt_ho_va_ten', NULL, N'Họ và tên *:', 1642, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 53, 2, N'cb_id_company', NULL, N'Tên công ty:', 1643, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_id_company'' and id_form=53 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 53, 3, N'txt_account_chat', NULL, N'Tài khoản CHAT *:', 1644, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 53, 4, N'txt_mobile', NULL, N'Di động *:', 1645, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 53, 5, N'txt_chuc_vu', NULL, N'Chức vụ *:', 1646, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 53, 6, N'txt_noi_bo_ext', NULL, N'Nội bộ (Ext):', 1647, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 53, 7, N'txt_email_nv', NULL, N'Email:', 1648, N'Nhập email (thanh@vcn.com)', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 11, 1, N'txt_mapped_name', NULL, N'Tên table*:', 1684, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 11, 2, N'txt_mapped_code', NULL, N'Mã table*:', 1685, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 11, 3, N'cb_type_table', NULL, N'Loại:', 1686, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_type_table'' and id_form=11 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 12, 1, N'cb_id_mapped', NULL, N'Tên table:', 1693, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_mapped AS st_value, mapped_name AS st_name, 0 AS st_parent  FROM sys_mapped_table ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 12, 2, N'cb_mapped_col_type', NULL, N'Loại cột:', 1694, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_mapped_col_type'' and id_form=12 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 12, 3, N'txt_mapped_col_code', NULL, N'Mã cột *:', 1695, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 12, 4, N'cb_mapped_col_key', NULL, N'Khóa chính:', 1696, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_mapped_col_key'' and id_form=12 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 12, 5, N'txt_mapped_col_name', NULL, N'Tên cột *:', 1697, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 12, 6, N'cb_mapped_col_order', NULL, N'Thứ tự:', 1698, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_mapped_col_order'' and id_form=12 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 13, 1, N'thuoc_du_an', NULL, N'Thuộc dự án:', 1699, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_project AS st_value, project_name AS st_name, 0 AS st_parent FROM            project_steel WHERE        (project_status = 1) ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 13, 2, N'txt_form_name', NULL, N'Tên form *:', 1700, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 13, 3, N'cb_form_grid_form', NULL, N'Script form:', 1701, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_form_grid_form'' and id_form=13 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 13, 4, N'txt_fs_store_c_u_d_s', NULL, N'Store chính *:', 1702, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 13, 5, N'cb_fs_script_page_load', NULL, N'Script load:', 1703, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_fs_script_page_load'' and id_form=13 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 13, 6, N'cb_ban_chinh', NULL, N'Bản chính:', 1704, NULL, NULL, NULL, N'0', N'slide', N'SELECT        mapped_code AS st_value, mapped_name AS st_name, ''0'' AS st_parent FROM            sys_mapped_table ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 13, 7, N'cb_clock_database', NULL, N'Khóa DB:', 1705, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_clock_database'' and id_form=13 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 13, 8, N'cb_form_grid_view', NULL, N'Grid View:', 1706, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_form_grid_view'' and id_form=13 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 65, 1, N'txt_ten_nhom_page', NULL, N'Tên nhóm page *:', 1707, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 65, 2, N'txt_trang_thai', NULL, N'Trạng thái', 1708, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''txt_trang_thai'' and id_form=65 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 65, 3, N'txt_hinh_icon', NULL, N'Hình icon *:', 1709, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 65, 4, N'cb_thu_tu', NULL, N'Thứ tự', 1710, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_thu_tu'' and id_form=65 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 14, 1, N'cb_project', NULL, N'Thuộc dự án:', 1711, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_project AS st_value, project_name AS st_name, 0 AS st_parent FROM            project_steel WHERE        (project_status = 1) ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 14, 2, N'txt_page_name', NULL, N'Tên Page *:', 1712, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 14, 3, N'cb_thuoc_nhom_menu', NULL, N'Thuộc nhóm:', 1713, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_group_page AS st_value, group_page_name AS st_name, ''0'' AS st_parent FROM            sys_group_page WHERE        (group_page_status = 1) ORDER BY group_page_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 14, 4, N'cb_page_order', NULL, N'Thứ tự', 1714, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_page_order'' and id_form=14 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 14, 5, N'cb_form_id', NULL, N'Tên form:', 1715, NULL, NULL, NULL, N'cb_project', N'slide', N'SELECT id_form as st_value,form_name as st_name,id_project as st_parent  FROM form_steel order by st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 64, 1, N'txt_ho', NULL, N'Họ:', 1716, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 64, 2, N'txt_ten', NULL, N'Tên:', 1717, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 64, 3, N'txt_ho_va_ten', NULL, N'Họ và Tên *:', 1718, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 64, 4, N'txt_email', NULL, N'Email *:', 1719, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 64, 5, N'txt_trang_thai', NULL, N'Trạng thái:', 1720, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''txt_trang_thai'' and id_form=64 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 64, 6, N'txt_mat_ma', NULL, N'Mật mã *:', 1721, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 68, 1, N'cb_cong_ty', NULL, N'Công ty:', 1722, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_company AS st_value, company_name AS st_name, 0 AS st_parent FROM            sys_company', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 68, 2, N'cb_nhom_trang', NULL, N'Nhóm trang:', 1723, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_group_page AS st_value, group_page_name AS st_name, 0 AS st_parent FROM sys_group_page WHERE (group_page_status = 1) ORDER BY group_page_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 68, 3, N'cb_nhom_quyen', NULL, N'Nhóm quyền:', 1724, NULL, NULL, NULL, N'0', N'slide', N'SELECT role_group_page_id as st_value,role_group_page_name as st_name,id_company as st_parent   FROM tblSysUserGroupPage   where role_group_status=1', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 68, 4, N'cb_trang', NULL, N'Trang:', 1725, NULL, NULL, NULL, N'cb_nhom_trang', N'slide', N'SELECT        id_page AS st_value, page_name AS st_name, id_group_page AS st_parent FROM  sys_page ORDER BY page_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 70, 1, N'cb_nhom_san_pham_goc', NULL, N'Nhóm sản phẩm Gốc:', 1744, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_nhom_san_pham_goc'' and id_form=70 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 70, 2, N'cb_nhom_san_pham', NULL, N'Nhóm sản phẩm:', 1745, NULL, NULL, NULL, N'0', N'slide', N'SELECT id_store_cate as st_value,store_cate_name as st_name,0 as st_parent   FROM store_cate   where store_cate_status=1   order by store_cate_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 70, 3, N'cb_san_pham_SKU', NULL, N'Sản phẩm SKU:', 1746, NULL, NULL, NULL, N'cb_nhom_san_pham_goc', N'slide', N'SELECT id_store_prod as st_value,store_prod_name as st_name,id_store_cate as st_parent  FROM store_prod  order by st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 70, 4, N'cb_san_pham', NULL, N'Sản phẩm:', 1747, NULL, NULL, NULL, N'cb_nhom_san_pham', N'slide', N'SELECT id_store_prod as st_value,store_prod_name as st_name,id_store_cate as st_parent   FROM store_prod   order by st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 70, 5, N'txt_so_luong', NULL, N'Số lượng:', 1748, N'Số nguyên dương, lớn hơn 0', NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), N'^0*[1-9]\d*$', N'* Số nguyên dương, lớn hơn 0')

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 71, 1, N'txt_ma_kho', NULL, N'Mã kho:', 1750, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 62, 1, N'txt_ten_phieu', NULL, N'Tên phiếu *:', 1768, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 62, 2, N'cb_kho_hang', NULL, N'Kho hàng:', 1769, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_store AS st_value, store_name AS st_name, 0 AS st_parent FROM            store_ ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 62, 3, N'cb_nguoi_duyet', NULL, N'Người xuất phiếu:', 1770, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_user AS st_value, user_full_name AS st_name, 0 AS st_parent FROM   user_steel WHERE        (user_status = 1) ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (7, 62, 4, N'list_san_pham', NULL, N'Sản phẩm:', 1771, NULL, NULL, NULL, N'cb_kho_hang', N'slide', N'SELECT     store_prod.id_store_prod, store_prod.store_prod_img AS [Hình ảnh], store_prod.store_prod_code AS [Mã sản phẩm], store_prod.store_prod_name AS [Tên sản phẩm], 
                      store_slot.store_slot_code AS [Mã ngăn chứa], store_stock.store_stock_code AS [Kệ chứa], store_imp_detail.store_prod_cost AS Giá, store_imp_detail.store_prod_shelf AS [Hạn sử dụng], 
                      SUM(store_imp_detail.store_prod_count) AS [Số Lượng]
FROM         store_imp_detail INNER JOIN
                      store_imp ON store_imp_detail.id_store_imp = store_imp.id_store_imp INNER JOIN
                      store_prod ON store_imp_detail.id_store_prod = store_prod.id_store_prod INNER JOIN
                      store_slot INNER JOIN
                      store_stock ON store_slot.id_store_stock = store_stock.id_store_stock ON store_imp_detail.id_store_slot = store_slot.id_store_slot
WHERE     (store_stock.store_stock_store = @key)
GROUP BY store_prod.id_store_prod, store_prod.store_prod_img, store_prod.store_prod_code, store_prod.store_prod_name, store_imp_detail.store_prod_cost, store_imp_detail.store_prod_shelf, 
                      store_slot.store_slot_code, store_stock.store_stock_code', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 62, 5, N'cb_kiem_tra_xuat', NULL, N'Người kiểm hàng:', 1772, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_kiem_tra_xuat'' and id_form=62 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 62, 6, N'txt_phi_van_chuyen', NULL, N'Phí vận chuyển *:', 1773, N'Phí vận chuyển VNĐ', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), N'^0*[1-9]\d*$', N'* Yêu cầu nhập số nguyên')

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 63, 1, N'cb_cong_ty', NULL, N'Công ty:', 1774, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_company AS st_value, company_name AS st_name, 0 AS st_parent FROM            sys_company', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 63, 2, N'txt_phieu_nhap', NULL, N'Tên phiếu nhập *:', 1775, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 63, 3, N'cb_nguoi_kiem_hang', NULL, N'Người kiểm hàng:', 1776, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_user AS st_value, user_full_name AS st_name, 0 AS st_parent FROM   user_steel WHERE        (user_status = 1) ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 63, 4, N'cbb_khohang', NULL, N'Kho hàng', 1777, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_store AS st_value, store_name AS st_name, 0 AS st_parent FROM            store_ ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 63, 5, N'cb_nguoi_lap_phieu', NULL, N'Người lập phiếu:', 1778, NULL, NULL, NULL, N'0', N'slide', N'SELECT        id_user AS st_value, user_full_name AS st_name, 0 AS st_parent FROM   user_steel WHERE        (user_status = 1) ORDER BY st_name', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (8, 63, 6, N'list_san_pham', NULL, N'Sản phẩm:', 1779, NULL, NULL, NULL, N'cbb_khohang', N'slide', N'SELECT     store_prod.id_store_prod, store_prod.store_prod_img AS [Hình ảnh], store_prod.store_prod_code AS [Mã sản phẩm], store_prod.store_prod_name AS [Tên sản phẩm], 
                      store_slot.store_slot_code AS [Mã ngăn chứa], store_stock.store_stock_code AS [Kệ chứa], store_imp_detail.store_prod_cost AS Giá, store_imp_detail.store_prod_shelf AS [Hạn sử dụng], 
                      SUM(store_imp_detail.store_prod_count) AS [Số Lượng]
FROM      store_prod    LEFT OUTER JOIN
                      store_imp_detail ON store_imp_detail.id_store_prod = store_prod.id_store_prod LEFT OUTER JOIN
                      store_slot LEFT OUTER JOIN
                      store_stock ON store_slot.id_store_stock = store_stock.id_store_stock ON store_imp_detail.id_store_slot = store_slot.id_store_slot

GROUP BY store_prod.id_store_prod, store_prod.store_prod_img, store_prod.store_prod_code, store_prod.store_prod_name, store_imp_detail.store_prod_cost, store_imp_detail.store_prod_shelf, 
                      store_slot.store_slot_code, store_stock.store_stock_code', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 56, 1, N'cb_thu_tu', NULL, N'Thứ tự:', 1780, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_thu_tu'' and id_form=56 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 56, 2, N'txt_loai_san_pham', NULL, N'Loại sản phẩm *:', 1781, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 56, 3, N'cb_trang_thai', NULL, N'Trạng thái:', 1782, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''cb_trang_thai'' and id_form=56 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 56, 4, N'txt_url_loai_san_pham', NULL, N'URL loại sản phẩm:', 1783, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 56, 5, N'file_hinh_mo_ta', NULL, N'Hình mô tả:', 1784, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('True' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 74, 1, N'txt_banner_name', NULL, N'Tên banner*:', 1804, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 74, 2, N'dr_banner_order', NULL, N'Thứ tự:', 1805, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_banner_order'' and id_form=74 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 74, 3, N'ul_image', NULL, N'Upload Image :', 1806, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 74, 4, N'dr_status_banner', NULL, N'Status banner:', 1807, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_banner'' and id_form=74 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 76, 1, N'txt_noidung', NULL, N'Nội dung:', 1953, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 75, 1, N'txt_products_name', NULL, N'Tên sản phẩm*:', 1954, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 75, 2, N'dr_products_type', NULL, N'Loại sản phẩm:', 1955, NULL, NULL, NULL, N'0', N'slide', N'select  id_menu_products as st_value,menu_products_name as st_name,0 as st_parent from wb_menu_products where menu_status=1 order by menu_products_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 75, 3, N'txt_tomtat', NULL, N'Tóm tắt:', 1956, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 75, 4, N'txt_noidung', NULL, N'Nội dung:', 1957, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 75, 5, N'txt_price_products', NULL, N'Giá tiền:', 1958, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 75, 6, N'txt_giam_gia', NULL, N'Giảm giá:', 1959, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 75, 7, N'txt_giasaukhigiam', NULL, N'Giá sau khi giảm:', 1960, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 75, 8, N'dr_status_product', NULL, N'Trạng thái:', 1961, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_product'' and id_form=75 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 75, 9, N'ful_img_main', NULL, N'Hình chính:', 1962, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 75, 10, N'dr_order_product', NULL, N'Thứ tự:', 1963, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_order_product'' and id_form=75 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 75, 11, N'ful_img_small', NULL, N'Hình 1:', 1964, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 75, 12, N'ful_hinh2', NULL, N'Hình 2:', 1965, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 75, 13, N'ful_hinh3', NULL, N'Hình 3:', 1966, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 75, 14, N'ful_hinh4', NULL, N'Hình 4:', 1967, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 75, 15, N'dr_sanphamtieubieu', NULL, N'Sản phẩm tiêu biểu:', 1968, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_sanphamtieubieu'' and id_form=75 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 77, 1, N'txt_qc_name', NULL, N'Tên quảng cáo:', 1969, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 77, 2, N'txt_qc_links', NULL, N'Links:', 1970, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 77, 3, N'dr_qc_status', NULL, N'Trạng thái:', 1971, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_qc_status'' and id_form=77 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 77, 4, N'dr_qc_order', NULL, N'Thứ tự:', 1972, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_qc_order'' and id_form=77 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 77, 5, N'ful_qc_img', NULL, N'Hình quảng cáo:', 1973, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 72, 1, N'txt_menu_name', NULL, N'Tên Menu *:', 1974, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 72, 2, N'txt_tu_khoa_url', NULL, N'Từ khóa url *:', 1975, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 72, 3, N'txt_links', NULL, N'Links:', 1976, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 72, 4, N'dr_status_menu', NULL, N'Trạng thái:', 1977, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_menu'' and id_form=72 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 72, 5, N'dr_thu_tu', NULL, N'Thứ tự:', 1978, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_thu_tu'' and id_form=72 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 73, 1, N'txt_menu_products_name', NULL, N'Tên danh mục sản phẩm*:', 1993, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 73, 2, N'txt_menu_key', NULL, N'Từ khóa danh mục*:', 1994, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 73, 3, N'dr_order', NULL, N'Thứ tự:', 1995, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_order'' and id_form=73 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 73, 4, N'fu_hinh', NULL, N'Hình:', 1996, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 73, 5, N'txt_tomtat', NULL, N'Tóm tắt:', 1997, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 73, 6, N'dr_status', NULL, N'Trạng thái:', 1998, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status'' and id_form=73 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 78, 1, N'txt_menu_top', NULL, N'Tên Menu Top:', 1999, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 78, 2, N'txt_links_menu_top', NULL, N'Links:', 2000, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 78, 3, N'txt_tu_khoa_link', NULL, N'Từ khóa links:', 2001, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 78, 4, N'dr_status_menu_top', NULL, N'Trạng Thái:', 2002, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_menu_top'' and id_form=78 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 78, 5, N'dr_order', NULL, N'Thứ tự:', 2003, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_order'' and id_form=78 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 79, 1, N'txt_name_products', NULL, N'Tên menu sản phẩm:', 2004, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 79, 2, N'dr_order_menu_products', NULL, N'Thứ tự:', 2005, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_order_menu_products'' and id_form=79 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 79, 3, N'dr_status_menu_products', NULL, N'Trạng thái:', 2006, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_menu_products'' and id_form=79 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 79, 4, N'ul_img_products', NULL, N'Hình:', 2007, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 79, 5, N'txt_tomtat', NULL, N'Tóm tắt:', 2008, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 80, 1, N'txt_name_quangcao', NULL, N'Tên quảng cáo:', 2192, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 80, 2, N'txt_link_quangcao', NULL, N'Links:', 2193, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 80, 3, N'dr_status_quangcao', NULL, N'Trạng thái:', 2194, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_quangcao'' and id_form=80 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 80, 4, N'txt_order', NULL, N'Thứ tự:', 2195, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''txt_order'' and id_form=80 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 80, 5, N'ful_img_quangcao', NULL, N'Hình:', 2196, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 80, 6, N'dr_type_quangcao', NULL, N'Loại quảng cáo:', 2197, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_type_quangcao'' and id_form=80 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 81, 1, N'txt_products', NULL, N'Tên sản phẩm:', 2229, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 81, 2, N'dr_type_products', NULL, N'Loại sản phẩm:', 2230, NULL, NULL, NULL, N'0', N'slide', N'SELECT  id_menu_products as st_value, name_menu_products as st_name,0 as st_parent from  web_tr_menu_product where status_menu_products=1', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 81, 3, N'txt_price', NULL, N'Giá:', 2231, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 81, 4, N'txt_giam_phantram', NULL, N'Giảm %:', 2232, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 81, 5, N'txt_giamgia', NULL, N'Giảm giá còn:', 2233, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 81, 6, N'ful_img_main_products', NULL, N'Hình:', 2234, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 81, 7, N'ful_hinh1_products', NULL, N'Hình 1:', 2235, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 81, 8, N'ful_hinh3_products', NULL, N'Hình 3:', 2236, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 81, 9, N'ful_hinh2_products', NULL, N'Hình 2:', 2237, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 81, 10, N'ful_small_img_products', NULL, N'Hình nhỏ:', 2238, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 81, 11, N'txt_tomtat_products', NULL, N'Tóm tắt:', 2239, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 81, 12, N'txt_noidung_products', NULL, N'Nội Dung:', 2240, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 81, 13, N'dr_sanphamtieubieu', NULL, N'Sản phẩm tiêu biểu:', 2241, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_sanphamtieubieu'' and id_form=81 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 81, 14, N'dr_order_products', NULL, N'Thứ tự:', 2242, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_order_products'' and id_form=81 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 81, 15, N'dr_status_products', NULL, N'Trạng thái:', 2243, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''dr_status_products'' and id_form=81 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 84, 1, N'txt_name_silde_PM', NULL, N'Tên Silde:', 2255, N'Nhập tên Silde', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 84, 2, N'ful_img_silde_PM', NULL, N'Hình:', 2256, N'Chọn hình', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 84, 3, N'drp_status_silde_PM', NULL, N'Trạng thái:', 2257, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_status_silde_PM'' and id_form=84 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 84, 4, N'drp_order_silde_PM', NULL, N'Thứ tự:', 2258, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_order_silde_PM'' and id_form=84 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 82, 1, N'txt_name_menu_PM', NULL, N'Tên Menu:', 2280, N'Nhập tên Menu', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 82, 2, N'txt_link_menu_PM', NULL, N'Link:', 2281, N'Nhập Link', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 82, 3, N'drp_type_menu_PM', NULL, N'Loại Menu:', 2282, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_type_menu_PM'' and id_form=82 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 82, 4, N'drp_status_menu_PM', NULL, N'Trạng thái:', 2283, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_status_menu_PM'' and id_form=82 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 82, 5, N'drp_order_menu_PM', NULL, N'Thứ tự:', 2284, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_order_menu_PM'' and id_form=82 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (3, 83, 1, N'txt_title_new_PM', NULL, N'Tiêu đề:', 2309, N'Nhập tiêu đề', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 83, 2, N'drp_status_new_PM', NULL, N'Trạng thái:', 2310, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_status_new_PM'' and id_form=83 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 83, 3, N'txt_shortdescription_new_PM', NULL, N'Mô tả ngắn:', 2311, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (4, 83, 4, N'txt_description_new_PM', NULL, N'Mô tả:', 2312, NULL, NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 83, 5, N'ful_img_new_PM', NULL, N'Hình:', 2313, N'Chọn hình', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 83, 6, N'drp_order_new_PM', NULL, N'Thứ tự:', 2314, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_order_new_PM'' and id_form=83 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (5, 83, 7, N'fl_img1_new_PM', NULL, N'Hình 1:', 2315, N'Chọn hình', NULL, NULL, N'0', N'slide', NULL, CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_in_form] ([id_ctr], [id_form], [order_ctr], [ctr_client_id], [ctr_store], [ctr_name], [id_ctr_in_form], [ctr_placeholder], [ctr_name_us], [ctr_placeholder_us], [ctr_parent_active], [ctr_effect_show], [ctr_query_data], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (1, 83, 8, N'drp_type_new_PM', NULL, N'Loại tin:', 2316, NULL, NULL, NULL, N'0', N'slide', N'select st_value,st_name,st_parent from sys_data_fixed where ctr_client_id=''drp_type_new_PM'' and id_form=83 order by record_order', CAST ('False' AS bit), NULL, NULL)

GO
SET IDENTITY_INSERT [dbo].[ctr_in_form] OFF
GO

--Table dbo.ctr_steel

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[ctr_steel] (
	[ctr_name] [nvarchar](200) NOT NULL,
	[ctr_request_default] [nvarchar](500) NULL,
	[ctr_page_name] [nvarchar](250) NOT NULL,
	[ctr_type] [int] NOT NULL CONSTRAINT [DF__ctr_steel__ctr_t__06CD04F7] DEFAULT ((1)),
	[id_ctr] [int] NOT NULL IDENTITY (1, 1),
	[ctr_client_id] [nvarchar](50) NULL,
	[id_project] [int] NULL,
	[ctr_des] [ntext] NULL,
	[ctr_store_default] [nvarchar](200) NULL,
	[ctr_placeholder] [nvarchar](200) NULL,
	[ctr_placeholder_us] [nvarchar](200) NULL,
	[ctr_name_us] [nvarchar](200) NULL,
	[ctr_code_js] [ntext] NULL,
	[ctr_img] [nvarchar](200) NULL,
	[ctr_require_validate] [bit] NULL CONSTRAINT [DF_ctr_steel_ctr_require_validate] DEFAULT ((0)),
	[ctr_require_validate_rex] [nvarchar](250) NULL,
	[ctr_require_validate_mess] [nvarchar](250) NULL);
GO

SET IDENTITY_INSERT [dbo].[ctr_steel] ON
GO
INSERT INTO [dbo].[ctr_steel] ([ctr_name], [ctr_request_default], [ctr_page_name], [ctr_type], [id_ctr], [ctr_client_id], [id_project], [ctr_des], [ctr_store_default], [ctr_placeholder], [ctr_placeholder_us], [ctr_name_us], [ctr_code_js], [ctr_img], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (N'Combox', N'no', N'~/ctr_steel/ctr_demo_fs/fs_combox.ascx', 1, 1, N'fs_combox', 1, N'Combox dùng trong dự án FrameWork demo', N'Store_2910', NULL, NULL, NULL, N' var __count_up_ctr_combox = 1; $(''#_list_ctr_call_combox'').on(''click'',function ()  {	var str_code = ''<div id="_replace1_id_parent" class=\''dragdrop dragdrop_active\'' dir=\''\''><div class=\''dragdrop-title-form\'' dir=\''slide\''>Tên combox:</div><div style=\''width: 340px; float: left; position:relative;\'' class=\''_fs_dir_parent\'' dir=\''\''><a class="class_active" style="display:none;right: -2px;top: -15px;position: absolute;"><img width="15" src="/img/red-del.png"></a><div class=\''dropdown query_option\'' dir=\''\''><select id=\''_replace_id\'' dir=\''1\'' class=\''dropdown-select _fs_cls_ctr\''><option value=\''Combox\''>Combox</option></select></div></div></div>'';	str_code = str_code.replace(''_replace_id'', ''combox'' + __count_up_ctr_combox);	str_code = str_code.replace(''_replace1_id_parent'', ''fs_combox_combox'' + __count_up_ctr_combox);	$(''.dragdrop-plus'').before(str_code);	__count_up_ctr_combox++;	$.fn.custombox(''close'');_setup_drag_drop(); });', N'<img id=''_list_ctr_call_combox'' style=''cursor: pointer'' src=''/img/img-combox.png'' alt='''' />', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_steel] ([ctr_name], [ctr_request_default], [ctr_page_name], [ctr_type], [id_ctr], [ctr_client_id], [id_project], [ctr_des], [ctr_store_default], [ctr_placeholder], [ctr_placeholder_us], [ctr_name_us], [ctr_code_js], [ctr_img], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (N'Textbox', N'no', N'~/ctr_steel/ctr_demo_fs/fs_textbox.ascx', 2, 3, N'fs_textbox', 1, N'Textbox dùng trong demo', NULL, NULL, NULL, NULL, N'var __count_up_ctr_textbox = 1;$(''#_list_ctr_call_textbox'').on(''click'', function (e) {var str_code = ''<div id="_replace1_id_parent" class=\''dragdrop dragdrop_active\''><div class=\''dragdrop-title-form\'' dir=\''slide\''>Tên textbox:</div><div style=\''width: 340px; float: left; position:relative;\''><a class="class_active" style="display:none;right: -2px;top: -15px;position: absolute;"><img width="15" src="/img/red-del.png"></a><input type=\''text\'' dir=\''3\'' id=\''_replace_id\'' class=\''textboxForm _fs_cls_ctr\'' placeholder=\''Textbox\'' /></div></div>'';str_code = str_code.replace(''_replace_id'', ''textbox'' + __count_up_ctr_textbox);str_code = str_code.replace(''_replace1_id_parent'', ''fs_combox_textbox'' + __count_up_ctr_textbox);$(''.dragdrop-plus'').before(str_code);__count_up_ctr_textbox++;$.fn.custombox(''close'');_setup_drag_drop();});', N'<img id=''_list_ctr_call_textbox'' style=''cursor: pointer'' src=''/img/img-textbox.png'' alt='''' />', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_steel] ([ctr_name], [ctr_request_default], [ctr_page_name], [ctr_type], [id_ctr], [ctr_client_id], [id_project], [ctr_des], [ctr_store_default], [ctr_placeholder], [ctr_placeholder_us], [ctr_name_us], [ctr_code_js], [ctr_img], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (N'Textarea', N'no', N'~/ctr_steel/ctr_demo_fs/fs_textarea.ascx', 2, 4, N'fs_textarea', 1, N'Textarea dùng trong demo', NULL, NULL, NULL, NULL, N'var __count_up_ctr_textarea = 1;$(''#_list_ctr_call_textarea'').on(''click'', function (e) {var str_code = ''<div id="_replace1_id_parent" class=\''dragdrop dragdrop_active\'' style="height: 130px;"><div class=\''dragdrop-title-form\'' dir=\''slide\''>Tên textarea:</div><div style=\''width: 340px; float: left; position:relative;height:100%;\''><a class="class_active" style="display:none;right: -2px;top: -15px;position: absolute;"><img width="15" src="/img/red-del.png"></a>  <textarea id="_replace_id" style="height:100%;" dir="4" class="textareaForm _fs_cls_ctr" rows="3" placeholder="Textarea"></textarea></div></div>'';str_code = str_code.replace(''_replace_id'', ''textarea'' + __count_up_ctr_textarea);str_code = str_code.replace(''_replace1_id_parent'', ''fs_combox_textarea'' + __count_up_ctr_textarea);$(''.dragdrop-plus'').before(str_code);__count_up_ctr_textarea++;$.fn.custombox(''close'');_setup_drag_drop();});', N'<img id=''_list_ctr_call_textarea'' style=''cursor: pointer'' src=''/img/img-textarea.png'' alt='''' />', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_steel] ([ctr_name], [ctr_request_default], [ctr_page_name], [ctr_type], [id_ctr], [ctr_client_id], [id_project], [ctr_des], [ctr_store_default], [ctr_placeholder], [ctr_placeholder_us], [ctr_name_us], [ctr_code_js], [ctr_img], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (N'FileUpload', N'no', N'~/ctr_steel/ctr_demo_fs/fs_fileupload.ascx', 2, 5, N'fd_fileupload', 1, N'FileUpload', NULL, NULL, NULL, NULL, N'Date.prototype.yyyymmddhhMMss = function() { var yyyy = this.getFullYear().toString();var mm = (this.getMonth()+1).toString();var dd  = this.getDate().toString();  var hh =this.getHours();     var MM=this.getMinutes();        var ss=this.getSeconds();	     return yyyy + ''-'' + (mm[1]?mm:"0"+mm[0]) + ''-'' + (dd[1]?dd:"0"+dd[0])+''-''+hh+''-''+MM+''-''+ss;   };    var __count_up_ctr_fileupload = 1;$(''#_list_ctr_call_fileupload'').on(''click'', function (e) {var str_code = ''<div id="_replace1_id_parent" class=\''dragdrop dragdrop_active\''><div class=\''dragdrop-title-form\'' dir=\''slide\''>Tên fileupload:</div><div style=\''width: 340px; float: left; position:relative;\''><a class="class_active" style="display:none;right: -2px;top: -15px;position: absolute;"><img width="15" src="/img/red-del.png"></a><input type=\''text\'' dir=\''5\'' id=\''_replace_id\'' class=\''textboxForm _fs_cls_ctr\'' placeholder=\''fileupload\'' style="width: 70%;float: left;" /><button onclick="addFileUpload(this);" data-id="fileupload''+ __count_up_ctr_fileupload+''" class="uploadFile" id="''+''fileupload'' + __count_up_ctr_fileupload+''_btn" >Chọn File</button></div></div>'';str_code = str_code.replace(''_replace_id'', ''fileupload'' + __count_up_ctr_fileupload);str_code = str_code.replace(''_replace1_id_parent'', ''fs_combox_fileupload'' + __count_up_ctr_fileupload);$(''.dragdrop-plus'').before(str_code);__count_up_ctr_fileupload++;$.fn.custombox(''close'');_setup_drag_drop(); debugger;   });function addFileUpload(el){	if($(''#''+el.getAttribute(''id'')+''_upload'').length==0)	{		$(''body'').append(''<form id="''+el.getAttribute(''data-id'')+''_form''+''" class="uploadControlFrom" method="POST" enctype="multipart/form-data" action="/upload"><input type="file" name="''+el.id+''_upload" class="uploadControl" data-id="''+el.getAttribute(''data-id'')+''" id="''+el.id+''_upload''+''"></form>'');	}	$(''#''+el.id+''_upload'').click();   var url = window.URL || window.webkitURL;$(''#''+el.id+''_upload'').change(function (e) {if (this.disabled) {alert(''Your browser does not support File upload.'');} else {            var filename = _f_s_27+''_''+new Date().yyyymmddhhMMss()+''_''+this.files[0].name;  $(''#'' + $(this).attr(''data-id'')).val(filename);}});}  ', N'<img id=''_list_ctr_call_fileupload'' style=''cursor: pointer'' src=''/img/img-fileupload.png'' alt='''' />', NULL, NULL, NULL)

GO
INSERT INTO [dbo].[ctr_steel] ([ctr_name], [ctr_request_default], [ctr_page_name], [ctr_type], [id_ctr], [ctr_client_id], [id_project], [ctr_des], [ctr_store_default], [ctr_placeholder], [ctr_placeholder_us], [ctr_name_us], [ctr_code_js], [ctr_img], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (N'Gridview', N'no', N'~/ctr_steel/ctr_demo_fs/fs_gridview.ascx', 2, 7, N'fs_gridview', 1, N'GridView', NULL, NULL, NULL, NULL, N'var __count_up_ctr_gridview = 1;$(''#_list_ctr_call_gridview'').click( function (e) {var str_code = ''<div id="_replace1_id_parent" class=\''dragdrop dragdrop_active\''><div class=\''dragdrop-title-form\'' dir=\''slide\''>Tên gridview:</div><div style=\''width: 340px; float: left; position:relative;\''><a class="class_active" style="display:none;right: -2px;top: -15px;position: absolute;"><img width="15" src="/img/red-del.png"></a><div class="query_option" dir="">  <button onclick="return false;" data-id="gridview''+ __count_up_ctr_gridview+''" class="uploadFile" id="''+''gridview'' + __count_up_ctr_gridview+''_btn" >Chọn Item</button> <input type=\''hidden\'' dir=\''7\'' id=\''_replace_id\'' class=\''gridviewForm _fs_cls_ctr\'' placeholder=\''Gridview\'' /></div></div></div>'';str_code = str_code.replace(''_replace_id'', ''gridview'' + __count_up_ctr_gridview);str_code = str_code.replace(''_replace1_id_parent'', ''fs_combox_gridview'' + __count_up_ctr_gridview);$(''.dragdrop-plus'').before(str_code);__count_up_ctr_gridview++;$.fn.custombox(''close'');_setup_drag_drop();});', N'<img id=''_list_ctr_call_gridview'' style=''cursor: pointer'' src=''/img/img-fileupload.png'' alt='''' />', CAST ('False' AS bit), NULL, NULL)

GO
INSERT INTO [dbo].[ctr_steel] ([ctr_name], [ctr_request_default], [ctr_page_name], [ctr_type], [id_ctr], [ctr_client_id], [id_project], [ctr_des], [ctr_store_default], [ctr_placeholder], [ctr_placeholder_us], [ctr_name_us], [ctr_code_js], [ctr_img], [ctr_require_validate], [ctr_require_validate_rex], [ctr_require_validate_mess])
	VALUES (N'PhieuNhap', N'no', N'~/ctr_steel/ctr_demo_fs/fs_gridview_phieunhap.ascx', 2, 8, N'fs_gridview_phieunhap', 1, N'GridView', NULL, NULL, NULL, NULL, N'var __count_up_ctr_gridview_phieunhap = 1;$(''#_list_ctr_call_gridview_phieunhap'').click( function (e) {var str_code = ''<div id="_replace1_id_parent" class=\''dragdrop dragdrop_active\''><div class=\''dragdrop-title-form\'' dir=\''slide\''>Tên gridview:</div><div style=\''width: 340px; float: left; position:relative;\''  class="_fs_dir_parent" dir="0" ><a class="class_active" style="display:none;right: -2px;top: -15px;position: absolute;"><img width="15" src="/img/red-del.png"></a><div class="query_option" dir="">  <button onclick="return false;" data-id="gridview''+ __count_up_ctr_gridview_phieunhap+''" class="uploadFile" id="''+''gridview'' + __count_up_ctr_gridview_phieunhap+''_btn" >Chọn Item</button> <input type=\''hidden\'' dir=\''8\'' id=\''_replace_id\'' class=\''gridviewForm _fs_cls_ctr\'' placeholder=\''Gridview\'' /></div></div></div>'';str_code = str_code.replace(''_replace_id'', ''gridview'' + __count_up_ctr_gridview_phieunhap);str_code = str_code.replace(''_replace1_id_parent'', ''fs_combox_gridview'' + __count_up_ctr_gridview_phieunhap);$(''.dragdrop-plus'').before(str_code);__count_up_ctr_gridview_phieunhap++;$.fn.custombox(''close'');_setup_drag_drop();});', N'<img id=''_list_ctr_call_gridview_phieunhap'' style=''cursor: pointer'' src=''/img/img-fileupload.png'' alt='''' />', CAST ('False' AS bit), NULL, NULL)

GO
SET IDENTITY_INSERT [dbo].[ctr_steel] OFF
GO

--Table dbo.form_steel

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[form_steel] (
	[id_form] [int] NOT NULL IDENTITY (1, 1),
	[form_name] [nvarchar](500) NOT NULL,
	[id_project] [int] NULL,
	[form_grid_view] [nvarchar](200) NULL,
	[form_name_us] [nvarchar](500) NULL,
	[form_view_store] [int] NULL CONSTRAINT [DF_form_steel_form_view_store] DEFAULT ((3)),
	[form_grid_chart] [nvarchar](200) NULL,
	[form_grid_form] [nvarchar](200) NULL,
	[form_db] [int] NULL CONSTRAINT [DF__form_stee__form___0B91BA14] DEFAULT ((0)),
	[fs_table_name] [nvarchar](200) NULL,
	[fs_store_c_u_d_s] [nvarchar](200) NULL,
	[fs_script_page_load] [nvarchar](50) NULL);
GO

SET IDENTITY_INSERT [dbo].[form_steel] ON
GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (3, N'Nhập liệu danh mục', 1, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'fs_other_list', N'test_del_store', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (11, N'Tạo Table', 1, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'sys_mapped_table', N'sys_tao_table', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (12, N'Tạo Col', 1, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'sys_mapped_col', N'sys_tao_col', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (13, N'Cấu hình form', 1, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'form_steel', N'sys_tao_form', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (14, N'Tạo Page', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'sys_page', N'sys_tao_page', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (21, N'Web banner', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_banner', N'pweb_banner', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (22, N'Web list product', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_list_product', N'pweb_ list_product', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (29, N'Web department', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_department', N'pweb_department', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (30, N'Web products', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_products', N'pweb_products', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (31, N'Web content', 1, N'red-action-grid', N'&nbsp;', 3, N'&nbsp;', N'wizend-call-frame-steel', 1, N'web_content', N'pweb_content', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (34, N'Web title', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_title', N'pweb_title', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (35, N'Web employer', 1, N'red-action-grid', N'&nbsp;', 3, N'&nbsp;', N'wizend-call-frame-steel', 1, N'web_employer', N'pweb_employer', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (42, N'Web menu root', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_menu_root', N'pweb_menu_root', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (45, N'Webcustomer', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_customer', N'pweb_customer', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (47, N'Web chater', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_chater', N'pweb_chater', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (48, N'Web chater content', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_chater_content', N'pweb_chater_content', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (49, N'Web content other', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'web_content_other', N'pweb_content_other', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (50, N'pct employee', 1, N'red-action-grid', N'', 3, N'', N'wizend-call-frame-steel', 1, N'pct_employee', N'wpct_employee', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (51, N'Thông tin công ty', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_company', N'kh_store_company', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (52, N'Loại hình kinh doanh', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_com_type', N'kh_store_com_type', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (53, N'Thông tin người liên hệ', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_contact', N'kh_store_contact', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (55, N'Đơn vị tính', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_unit', N'kh_store_unit', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (56, N'Loại sản phẩm', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_cate', N'kh_store_cate', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (57, N'Kho hàng', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_', N'kh_store_', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (58, N'Loại hình vận chuyển', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_com_ship', N'kh_store_com_ship', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (59, N'Sản phẩm kho', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_prod', N'kh_store_prod', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (60, N'Ngăn chứa', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_slot', N'kh_store_slot', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (61, N'Kệ hàng', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_stock', N'kh_store_stock', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (62, N'Phiếu xuất', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_exp', N'kh_store_exp', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (63, N'Phiếu nhập', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_imp', N'kh_store_imp', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (64, N'Tài khoản', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'user_steel', N'sys_user_steel', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (65, N'Nhóm trang', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'sys_group_page', N'sys_group_page', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (66, N'Nhóm quyền', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tblSysUserGroupPage', N'sys_group_page_role', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (67, N'Tài khoản thuộc nhóm quyền', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tblSysUserGroupPageDetail', N'sys_group_page_user', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (68, N'Page thuộc nhóm quyền', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tblSysUserGroupPagePage', N'sys_group_page_page', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (69, N'Phân quyền kết xuất', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tblSysUserRolePage', N'sys_group_user_page', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (70, N'Sản phẩm SKU', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'store_prod_sku', N'kh_store_prod_sku', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (71, N'Báo cáo kho sản phẩm SKU', 2, N'wizend-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 0, N'store_prod', N'report_store_prod_sku', N'black')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (72, N'Quản lý Menu', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'wb_menu', N'pr_wb_menu', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (73, N'Quản lý danh mục sản phẩm', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'wb_menu_products', N'sp_wb_menu_products', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (74, N'Quản lý banner', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'wb_banner', N'sp_wb_banner', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (75, N'Quản lý sản phẩm', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'wb_products', N'sp_wb_products', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (76, N'Quản lý comment', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'wb_comment', N'sp_wb_comment', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (77, N'Quản lý quảng cáo', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'wb_advertising', N'sp_wb_advertising', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (78, N'Quản lý Menu TR', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'web_tr_menutop', N'sp_web_tr_menu_top', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (79, N'Quản lý menu sản phẩm TR', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'web_tr_menu_product', N'sp_web_tr_menu_products', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (80, N'Quản lý quảng cáo', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'web_tr_quangcao', N'sp_web_tr_quangcao', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (81, N'Quản lý sản phẩm TR', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'web_tr_products', N'sp_web_tr_sanpham', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (82, N'Quản lý Menu PM', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tbl_menu_PM', N'sp_menu_PM', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (83, N'Quản lý Tin Tức PM', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tbl_new_PM', N'sp_new_PM', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (84, N'Quản lý Silde PM', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tbl_silde_PM', N'sp_silde_PM', N'red')

GO
INSERT INTO [dbo].[form_steel] ([id_form], [form_name], [id_project], [form_grid_view], [form_name_us], [form_view_store], [form_grid_chart], [form_grid_form], [form_db], [fs_table_name], [fs_store_c_u_d_s], [fs_script_page_load])
	VALUES (85, N'Quản lý loại tin PM', 2, N'red-action-grid', NULL, 3, NULL, N'wizend-call-frame-steel', 1, N'tbl_type_new_PM', N'sp_type_new_PM', N'red')

GO
SET IDENTITY_INSERT [dbo].[form_steel] OFF
GO

--Table dbo.form_store

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[form_store] (
	[id_form_store] [int] NOT NULL IDENTITY (1, 1),
	[form_store_code] [nvarchar](200) NULL,
	[form_store_type] [int] NULL CONSTRAINT [DF__form_stor__form___10566F31] DEFAULT ((1)),
	[form_store_admin] [int] NULL CONSTRAINT [DF__form_stor__form___114A936A] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[form_store] ON
GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (1, N'test_view_list', 1, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (2, N'Store_3710', 2, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (3, N'tbl_store1', 1, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (4, N'test_del_store', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (5, N'from1_1', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (6, N'sys_tao_table', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (7, N'sys_tao_col', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (8, N'sys_tao_form', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (9, N'sys_tao_page', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (10, N'pct_phong_ban', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (11, N'pct_chuc_vu', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (12, N'pct_nhan_vien', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (13, N'pct_phieu_cong_tac', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (14, N'pweb_banner', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (15, N'pweb_ list_product', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (16, N'pweb_content', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (17, N'pweb_department', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (18, N'pweb_title', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (19, N'pweb_products', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (20, N'pweb_employer', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (21, N'pweb_menu_root', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (22, N'pweb_customer', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (23, N'pweb_content_other', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (24, N'pweb_chater', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (25, N'pweb_chater_content', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (26, N'wpct_employee', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (27, N'kh_store_com_type', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (28, N'kh_store_company', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (29, N'kh_store_contact', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (30, N'kh_store_unit', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (31, N'kh_store_cate', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (32, N'kh_store_', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (33, N'kh_store_stock', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (34, N'kh_store_slot', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (35, N'kh_store_prod', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (36, N'sys_user_steel', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (37, N'sys__group_page', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (38, N'sys_group_user_page', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (39, N'kh_store_exp', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (40, N'kh_store_imp', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (41, N'sys_group_page_page', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (42, N'kh_store_prod_sku', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (43, N'report_store_prod_sku', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (44, N'pr_wb_menu', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (45, N'sp_wb_menu_products', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (46, N'sp_wb_banner', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (47, N'sp_wb_products', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (48, N'sp_wb_comment', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (49, N'sp_wb_advertising', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (50, N'sp_web_tr_menu_top', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (51, N'sp_web_tr_menu_products', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (52, N'sp_web_tr_quangcao', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (53, N'sp_web_tr_sanpham', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (54, N'sp_menu_PM', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (55, N'sp_silde_PM', 0, 0)

GO
INSERT INTO [dbo].[form_store] ([id_form_store], [form_store_code], [form_store_type], [form_store_admin])
	VALUES (56, N'sp_new_PM', 0, 0)

GO
SET IDENTITY_INSERT [dbo].[form_store] OFF
GO

--Table dbo.form_store_para

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[form_store_para] (
	[id_store_para] [int] NOT NULL IDENTITY (1, 1),
	[store_para_name] [nvarchar](200) NULL,
	[store_para_type] [int] NULL,
	[id_form_store] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[form_store_para] ON
GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (12, N'fs_textbox', 2, 1)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (150, N'txtFrom', 1, 5)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (151, N'txt_orther', 2, 5)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (152, N'cbb_fromtype', 2, 5)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (153, N'_fs_item_id', 2, 5)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (182, N'txt_name_department', 1, 10)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (183, N'_fs_item_id', 2, 10)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (231, N'cb_id_title', 2, 12)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (232, N'txt_name', 1, 12)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (233, N'txt_address', 1, 12)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (234, N'txt_mobile', 1, 12)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (235, N'_fs_item_id', 2, 12)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (236, N'cb_employee', 2, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (237, N'txt_fromdate', 1, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (238, N'txt_todate', 1, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (239, N'txt_money', 2, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (240, N'txt_add', 1, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (241, N'txt_note', 1, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (242, N'_fs_item_id', 2, 13)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (247, N'cb_id_title', 2, 11)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (248, N'cb_name_department', 2, 11)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (249, N'txt_name_title', 1, 11)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (250, N'_fs_item_id', 2, 11)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (372, N'txt_list_prod_name', 1, 15)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (373, N'cb_list_prod_order', 2, 15)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (374, N'cb_list_prod_link', 2, 15)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (375, N'cb_list_prod_status', 2, 15)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (376, N'_fs_item_id', 2, 15)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (387, N'txt_banner_name', 1, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (388, N'cb_banner_order', 2, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (389, N'txt_banner_link', 1, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (390, N'txt_banner_img', 1, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (391, N'txt_banner_tiny', 1, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (392, N'cb_banner_status', 2, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (393, N'_fs_item_id', 2, 14)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (394, N'txt_prod_name', 1, 19)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (395, N'cb_prod_order', 2, 19)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (396, N'cb_prod_status', 2, 19)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (397, N'txt_prod_content', 0, 19)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (398, N'_fs_item_id', 2, 19)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (399, N'txt_content_name', 0, 16)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (400, N'cb_id_menu', 2, 16)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (401, N'_fs_item_id', 2, 16)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (402, N'txt_employer_name', 1, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (403, N'cb_id_title', 2, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (404, N'txt_employer_code', 1, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (405, N'txt_employer_ext', 1, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (406, N'txt_employer_mobile', 1, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (407, N'cb_employer_status', 2, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (408, N'_fs_item_id', 2, 20)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (409, N'cb_id_menu', 2, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (410, N'txt_menu_name', 1, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (411, N'cb_menu_order', 2, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (412, N'txt_menu_code', 1, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (413, N'cb_banner_tiny', 1, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (414, N'cb_menu_status', 2, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (415, N'_fs_item_id', 2, 21)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (430, N'txt_customer_name', 1, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (431, N'txt_customer_logo', 1, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (432, N'txt_customer_prod', 1, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (433, N'txt_customer_idea', 1, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (434, N'cb_customer_order', 2, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (435, N'cb_customer_status', 2, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (436, N'_fs_item_id', 2, 22)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (449, N'txt_chater_name', 1, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (450, N'txt_customer_logo', 1, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (451, N'txt_customer_prod', 1, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (452, N'txt_customer_idea', 0, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (453, N'cb_customer_order', 2, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (454, N'cb_customer_status', 2, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (455, N'_fs_item_id', 2, 24)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (468, N'cb_id_chater', 0, 25)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (469, N'cb_id_employer', 2, 25)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (470, N'txt_chater_content_note', 0, 25)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (471, N'txt_chater_content_create', 0, 25)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (472, N'_fs_item_id', 2, 25)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (477, N'txt_content_other_title', 1, 23)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (478, N'textarea1', 0, 23)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (479, N'cb_id_menu', 2, 23)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (480, N'_fs_item_id', 2, 23)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (542, N'cb_employee', 2, 26)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (543, N'textarea1', 1, 26)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (544, N'test1', 1, 26)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (545, N'_fs_item_id', 2, 26)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (563, N'cb_id_department', 2, 17)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (564, N'txt_department_name', 1, 17)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (565, N'_fs_item_id', 2, 17)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (570, N'cb_id_title', 2, 18)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (571, N'txt_title_name', 1, 18)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (572, N'cb_id_department', 2, 18)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (573, N'_fs_item_id', 2, 18)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (623, N'cb_id_mapped', 2, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (624, N'txt_mapped_col_name', 1, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (625, N'cb_mapped_col_type', 1, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (626, N'cb_mapped_col_key', 2, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (627, N'txt_mapped_col_code', 1, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (628, N'cb_mapped_col_order', 2, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (629, N'_fs_item_id', 2, 7)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (645, N'txt_company_type', 1, 27)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (646, N'_fs_item_id', 2, 27)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (660, N'txt_company_email', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (661, N'txt_company_website', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (662, N'txt_company_des', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (663, N'cb_id_store_com_type', 2, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (664, N'txt_company_name', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (665, N'txt_company_code', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (666, N'txt_company_address', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (667, N'txt_company_phone', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (668, N'file_company_logo', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (669, N'txt_company_fax', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (670, N'txt_company_bank', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (671, N'txt_company_bank_ads', 1, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (672, N'_fs_item_id', 2, 28)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (685, N'cb_form_id', 2, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (686, N'txt_form_name', 1, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (687, N'thuoc_du_an', 2, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (688, N'cb_form_grid_view', 1, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (689, N'cb_form_grid_form', 1, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (690, N'cb_clock_database', 2, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (691, N'cb_ban_chinh', 1, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (692, N'txt_fs_store_c_u_d_s', 1, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (693, N'cb_fs_script_page_load', 1, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (694, N'_fs_item_id', 2, 8)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (701, N'txt_ten_kho', 1, 32)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (702, N'txt_dia_chi', 1, 32)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (703, N'txt_dien_thoai', 1, 32)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (704, N'txt_mo_ta', 1, 32)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (705, N'_fs_item_id', 2, 32)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (724, N'txt_ten_san_pham', 1, 35)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (725, N'file_hinh_san_pham', 1, 35)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (726, N'txt_ma_san_pham', 1, 35)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (727, N'cb_don_vi_tinh', 2, 35)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (728, N'cb_nhom_san_pham', 2, 35)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (729, N'_fs_item_id', 2, 35)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (730, N'cb_kho_hang', 2, 34)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (731, N'cb_ke_hang', 2, 34)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (732, N'txt_ma_ngan_chua', 1, 34)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (733, N'txt_so_luong', 2, 34)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (734, N'_fs_item_id', 2, 34)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (735, N'txt_ho', 1, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (736, N'txt_ten', 1, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (737, N'txt_ho_va_ten', 1, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (738, N'txt_email', 1, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (739, N'txt_trang_thai', 1, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (740, N'txt_mat_ma', 1, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (741, N'_fs_item_id', 2, 36)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (748, N'cb_thuoc_nhom_menu', 2, 37)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (749, N'txt_ten_nhom_page', 1, 37)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (750, N'txt_trang_thai', 2, 37)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (751, N'cb_thu_tu', 2, 37)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (752, N'txt_hinh_icon', 1, 37)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (753, N'_fs_item_id', 2, 37)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (754, N'cb_page', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (755, N'cb_tai_khoan', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (756, N'cb_quyen_xem', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (757, N'cb_quyen_tao', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (758, N'cb_quyen_xoa', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (759, N'cb_quyen_cau_hinh', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (760, N'cb_quyen_phan_quyen', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (761, N'cb_cong_ty', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (762, N'_fs_item_id', 2, 38)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (763, N'cb_don_vi_tinh', 2, 30)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (764, N'txt_don_vi_tinh', 1, 30)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (765, N'_fs_item_id', 2, 30)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (789, N'cb_ke_hang', 2, 33)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (790, N'txt_ma_ke_hang', 1, 33)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (791, N'cb_trang_thai', 2, 33)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (792, N'cb_thuoc_kho', 2, 33)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (793, N'_fs_item_id', 2, 33)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (794, N'txt_email_nv', 1, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (795, N'cb_id_company', 2, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (796, N'txt_ho_va_ten', 1, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (797, N'txt_account_chat', 1, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (798, N'txt_mobile', 1, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (799, N'txt_chuc_vu', 1, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (800, N'txt_noi_bo_ext', 1, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (801, N'_fs_item_id', 2, 29)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (817, N'list_san_pham', 1, 39)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (818, N'txt_ten_phieu', 1, 39)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (819, N'cb_nguoi_duyet', 2, 39)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (820, N'cb_kiem_tra_xuat', 2, 39)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (821, N'txt_phi_van_chuyen', 2, 39)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (822, N'_fs_item_id', 2, 39)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (827, N'cb_id_mapped', 2, 6)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (828, N'txt_mapped_name', 1, 6)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (829, N'txt_mapped_code', 1, 6)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (830, N'cb_type_table', 2, 6)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (831, N'_fs_item_id', 2, 6)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (832, N'cb_page', 2, 9)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (833, N'txt_page_name', 1, 9)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (834, N'cb_form_id', 2, 9)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (835, N'cb_page_order', 2, 9)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (836, N'cb_thuoc_nhom_menu', 2, 9)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (837, N'_fs_item_id', 2, 9)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (848, N'cb_san_pham', 2, 42)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (849, N'txt_so_luong', 2, 42)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (850, N'cb_san_pham_SKU', 2, 42)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (851, N'_fs_item_id', 2, 42)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (852, N'txt_ma_kho', 1, 43)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (858, N'list_san_pham', 1, 40)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (859, N'txt_phieu_nhap', 1, 40)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (860, N'cb_nguoi_kiem_hang', 2, 40)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (861, N'cb_nguoi_lap_phieu', 2, 40)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (862, N'cbb_khohang', 2, 40)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (863, N'_fs_item_id', 2, 40)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (878, N'cb_nhom_san_pham', 2, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (879, N'txt_url_loai_san_pham', 1, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (880, N'txt_loai_san_pham', 1, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (881, N'cb_thu_tu', 2, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (882, N'cb_trang_thai', 2, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (883, N'file_hinh_mo_ta', 1, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (884, N'_fs_item_id', 2, 31)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (916, N'txt_banner_name', 1, 46)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (917, N'dr_banner_order', 2, 46)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (918, N'ul_image', 1, 46)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (919, N'dr_status_banner', 2, 46)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (920, N'_fs_item_id', 2, 46)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1210, N'txt_noidung', 1, 48)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1211, N'_fs_item_id', 2, 48)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1227, N'ful_hinh2', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1228, N'ful_hinh3', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1229, N'ful_hinh4', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1230, N'txt_products_name', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1231, N'dr_products_type', 2, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1232, N'txt_tomtat', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1233, N'txt_noidung', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1234, N'txt_price_products', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1235, N'txt_giam_gia', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1236, N'txt_giasaukhigiam', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1237, N'dr_status_product', 2, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1238, N'ful_img_main', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1239, N'dr_order_product', 2, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1240, N'ful_img_small', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1241, N'dr_sanphamtieubieu', 1, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1242, N'_fs_item_id', 2, 47)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1243, N'txt_qc_name', 1, 49)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1244, N'txt_qc_links', 1, 49)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1245, N'dr_qc_status', 1, 49)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1246, N'dr_qc_order', 2, 49)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1247, N'ful_qc_img', 1, 49)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1248, N'_fs_item_id', 2, 49)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1249, N'cb_id_menu', 2, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1250, N'txt_menu_name', 1, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1251, N'txt_tu_khoa_url', 1, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1252, N'dr_thu_tu', 2, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1253, N'dr_status_menu', 2, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1254, N'txt_links', 1, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1255, N'_fs_item_id', 2, 44)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1290, N'txt_menu_products_name', 1, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1291, N'txt_menu_key', 1, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1292, N'dr_order', 2, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1293, N'fu_hinh', 1, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1294, N'cb_menu_status', 1, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1295, N'txt_tomtat', 1, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1296, N'_fs_item_id', 2, 45)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1297, N'txt_menu_top', 1, 50)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1298, N'txt_links_menu_top', 1, 50)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1299, N'txt_tu_khoa_link', 1, 50)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1300, N'dr_status_menu_top', 2, 50)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1301, N'dr_order', 2, 50)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1302, N'_fs_item_id', 2, 50)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1303, N'txt_name_products', 1, 51)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1304, N'dr_order_menu_products', 2, 51)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1305, N'dr_status_menu_products', 2, 51)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1306, N'ul_img_products', 1, 51)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1307, N'txt_tomtat', 1, 51)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1308, N'_fs_item_id', 2, 51)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1325, N'txt_name_quangcao', 1, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1326, N'txt_link_quangcao', 1, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1327, N'dr_status_quangcao', 1, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1328, N'txt_order', 2, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1329, N'ful_img_quangcao', 1, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1330, N'dr_type_quangcao', 2, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1331, N'_fs_item_id', 2, 52)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1589, N'ful_img_main_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1590, N'ful_hinh1_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1591, N'dr_sanphamtieubieu', 2, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1592, N'txt_tomtat_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1593, N'txt_noidung_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1594, N'ful_hinh2_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1595, N'ful_hinh3_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1596, N'txt_giamgia', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1597, N'txt_giam_phantram', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1598, N'txt_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1599, N'dr_type_products', 2, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1600, N'dr_status_products', 2, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1601, N'dr_order_products', 2, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1602, N'txt_price', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1603, N'ful_small_img_products', 1, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1604, N'_fs_item_id', 2, 53)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1605, N'cb_nhom_quyen', 2, 41)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1606, N'cb_trang', 2, 41)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1607, N'cb_cong_ty', 2, 41)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1608, N'_fs_item_id', 2, 41)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1609, N'txt_name_menu_PM', 1, 54)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1610, N'txt_link_menu_PM', 1, 54)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1611, N'drp_type_menu_PM', 2, 54)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1612, N'drp_status_menu_PM', 2, 54)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1613, N'drp_order_menu_PM', 2, 54)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1614, N'_fs_item_id', 2, 54)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1615, N'txt_name_silde_PM', 1, 55)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1616, N'ful_img_silde_PM', 1, 55)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1617, N'drp_status_silde_PM', 2, 55)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1618, N'drp_order_silde_PM', 2, 55)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1619, N'_fs_item_id', 2, 55)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1652, N'txt_shortdescription_new_PM', 1, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1653, N'txt_description_new_PM', 1, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1654, N'fl_img1_new_PM', 1, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1655, N'ful_img_new_PM', 1, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1656, N'txt_title_new_PM', 1, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1657, N'drp_status_new_PM', 2, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1658, N'drp_order_new_PM', 2, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1659, N'drp_type_new_PM', 2, 56)

GO
INSERT INTO [dbo].[form_store_para] ([id_store_para], [store_para_name], [store_para_type], [id_form_store])
	VALUES (1660, N'_fs_item_id', 2, 56)

GO
SET IDENTITY_INSERT [dbo].[form_store_para] OFF
GO

--Table dbo.fs_auth

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[fs_auth] (
	[auth_id] [bigint] NOT NULL IDENTITY (1, 1),
	[auth_name] [nvarchar](250) NULL);
GO

SET IDENTITY_INSERT [dbo].[fs_auth] ON
GO
INSERT INTO [dbo].[fs_auth] ([auth_id], [auth_name])
	VALUES (1, N'Lê Minh Lộc')

GO
SET IDENTITY_INSERT [dbo].[fs_auth] OFF
GO

--Table dbo.fs_manga

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[fs_manga] (
	[manga_id] [bigint] NOT NULL IDENTITY (1, 1),
	[manga_name] [nvarchar](250) NULL,
	[manga_key] [nvarchar](250) NULL,
	[type_id] [bigint] NULL,
	[manga_des] [ntext] NULL,
	[manga_img] [nvarchar](500) NULL,
	[manga_view] [int] NULL,
	[manga_status] [int] NULL,
	[manga_create] [datetime] NULL,
	[auth_id] [bigint] NULL);
GO

SET IDENTITY_INSERT [dbo].[fs_manga] ON
GO
INSERT INTO [dbo].[fs_manga] ([manga_id], [manga_name], [manga_key], [type_id], [manga_des], [manga_img], [manga_view], [manga_status], [manga_create], [auth_id])
	VALUES (1, N'Nghịch Thiên', N'nghich-thien', 1, N'Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên Ngich thiên ', N'/music/1.jpg', 0, 1, CAST(0x0000a33200000000 AS datetime), 1)

GO
SET IDENTITY_INSERT [dbo].[fs_manga] OFF
GO

--Table dbo.fs_manga_chap

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[fs_manga_chap] (
	[chap_id] [bigint] NOT NULL IDENTITY (1, 1),
	[manga_id] [bigint] NULL,
	[chap_name] [nvarchar](250) NULL,
	[chap_orther] [int] NULL,
	[chap_create] [datetime] NULL,
	[chap_key] [nvarchar](250) NULL);
GO

SET IDENTITY_INSERT [dbo].[fs_manga_chap] ON
GO
INSERT INTO [dbo].[fs_manga_chap] ([chap_id], [manga_id], [chap_name], [chap_orther], [chap_create], [chap_key])
	VALUES (3, 1, N'dasdsa', 0, CAST(0x0000a33200af3f04 AS datetime), N'chap-1')

GO
SET IDENTITY_INSERT [dbo].[fs_manga_chap] OFF
GO

--Table dbo.fs_manga_img

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[fs_manga_img] (
	[chap_id] [bigint] NULL,
	[img_orther] [int] NOT NULL,
	[img_link] [nvarchar](500) NULL);
GO

INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 1, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page1.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 2, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page2.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 3, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page3.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 4, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page4.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 5, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page5.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 6, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page6.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 7, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page7.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 8, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page8.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 9, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page9.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 10, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page10.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 11, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page11.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 12, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page12.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 13, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page13.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 14, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page14.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 15, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page15.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 16, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page16.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 17, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page17.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 18, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page18.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 19, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page19.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 20, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page20.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 21, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page21.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 22, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page22.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 23, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page23.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 24, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page24.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 25, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page25.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 26, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page26.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 27, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page27.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 28, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page28.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 29, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page29.jpg')

GO
INSERT INTO [dbo].[fs_manga_img] ([chap_id], [img_orther], [img_link])
	VALUES (3, 30, N'/content/upload/hp1-hon-da-phu-thuy/hp1-hon-da-phu-thuyjpg_Page30.jpg')

GO

--Table dbo.fs_manga_tag

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[fs_manga_tag] (
	[tag_id] [bigint] NOT NULL,
	[manga_id] [bigint] NULL,
	[tag_view] [int] NULL);
GO

--Table dbo.fs_manga_type

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[fs_manga_type] (
	[type_id] [bigint] NOT NULL IDENTITY (1, 1),
	[type_name] [nvarchar](250) NULL,
	[type_key] [nvarchar](250) NULL,
	[type_orther] [int] NULL,
	[type_status] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[fs_manga_type] ON
GO
INSERT INTO [dbo].[fs_manga_type] ([type_id], [type_name], [type_key], [type_orther], [type_status])
	VALUES (1, N'Tiên hiệp', N'tien-hiep', 0, 1)

GO
INSERT INTO [dbo].[fs_manga_type] ([type_id], [type_name], [type_key], [type_orther], [type_status])
	VALUES (2, N'Kiếm hiệp', N'kiem-hiep', 1, 1)

GO
SET IDENTITY_INSERT [dbo].[fs_manga_type] OFF
GO

--Table dbo.grid_view_mapping

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[grid_view_mapping] (
	[id_mapped] [int] NOT NULL,
	[id_ctr_name] [nvarchar](200) NULL,
	[orther] [int] NULL);
GO

INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (61, N'txt_qc_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (61, N'txt_qc_links', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (61, N'dr_qc_status', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (61, N'dr_qc_order', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (61, N'ful_qc_img', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (58, N'txt_banner_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (58, N'dr_banner_order', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (58, N'ul_image', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (58, N'dr_status_banner', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (22, N'txt_title_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (22, N'cb_id_department', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (60, N'txt_noidung', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (60, N'0', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (60, N'0', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (60, N'0', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (60, N'0', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (56, N'txt_menu_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (56, N'cb_id_menu', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (56, N'txt_tu_khoa_url', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (56, N'dr_thu_tu', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (56, N'cb_menu_status', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (56, N'txt_links', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (40, N'txt_don_vi_tinh', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (40, N'cb_don_vi_tinh', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (45, N'txt_ma_ke_hang', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (45, N'cb_ke_hang', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (45, N'cb_trang_thai', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (45, N'cb_thuoc_kho', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (29, N'txt_customer_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (29, N'txt_customer_logo', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (29, N'txt_customer_prod', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (29, N'txt_customer_idea', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (29, N'cb_customer_order', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (29, N'cb_customer_status', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (43, N'cb_kho_hang', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (43, N'txt_ten_kho', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (43, N'txt_dia_chi', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (43, N'txt_dien_thoai', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (43, N'txt_mo_ta', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (37, N'txt_ho_va_ten', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (37, N'txt_account_chat', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (37, N'txt_mobile', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (37, N'txt_chuc_vu', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (37, N'txt_noi_bo_ext', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (37, N'txt_email_nv', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (36, N'txt_company_type', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (41, N'txt_loai_san_pham', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (41, N'cb_thu_tu', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (41, N'cb_trang_thai', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (41, N'file_hinh_mo_ta', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (57, N'txt_menu_products_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (57, N'txt_menu_key', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (57, N'dr_order', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (57, N'fu_hinh', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (57, N'cb_menu_status', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (63, N'txt_name_products', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (63, N'dr_order_menu_products', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (63, N'dr_status_menu_products', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (63, N'ul_img_products', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (63, N'txt_tomtat', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (62, N'txt_menu_top', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (62, N'txt_links_menu_top', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (62, N'txt_tu_khoa_link', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (62, N'dr_status_menu_top', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (62, N'dr_order', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (44, N'cb_kho_hang', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (44, N'cb_ke_hang', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (44, N'txt_ma_ngan_chua', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (44, N'txt_so_luong', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'file_company_logo', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_name', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_code', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_address', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_phone', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_fax', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_bank', 6)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (35, N'txt_company_bank_ads', 7)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (23, N'txt_employer_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (23, N'cb_id_employer', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (23, N'txt_employer_code', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (23, N'txt_employer_ext', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (23, N'txt_employer_mobile', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (23, N'cb_employer_status', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (51, N'cb_cong_ty', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (51, N'cb_nhom_quyen', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (51, N'cb_quyen_xem', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (51, N'cb_quyen_tao', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (51, N'cb_quyen_xoa', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (50, N'txt_ten_nhom_page', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (50, N'txt_trang_thai', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (50, N'txt_hinh_icon', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (50, N'cb_thu_tu', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (53, N'cb_cong_ty', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (53, N'cb_nhom_quyen', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (53, N'cb_page', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (34, N'textarea1', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (34, N'test1', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_cong_ty', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_page', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_tai_khoan', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_quyen_xem', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_quyen_tao', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_quyen_xoa', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_quyen_cau_hinh', 6)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (54, N'cb_quyen_phan_quyen', 7)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (48, N'txt_phieu_nhap', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (48, N'cb_nguoi_kiem_hang', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (48, N'cb_nguoi_lap_phieu', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (47, N'txt_ten_phieu', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (47, N'cb_nguoi_duyet', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (47, N'cb_kiem_tra_xuat', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (14, N'txt_department_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (14, N'cb_id_department', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (64, N'txt_name_quangcao', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (64, N'txt_link_quangcao', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (64, N'dr_status_quangcao', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (64, N'txt_order', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (64, N'ful_img_quangcao', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (64, N'dr_type_quangcao', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'txt_products_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'dr_products_type', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'txt_price', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'0', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'txt_giam_gia', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'txt_giasaukhigiam', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'dr_status_product', 6)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'ful_img_main', 7)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'dr_order_product', 8)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (59, N'dr_sanphamtieubieu', 9)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (42, N'file_hinh_san_pham', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (42, N'txt_ma_san_pham', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (42, N'txt_ten_san_pham', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (42, N'cb_don_vi_tinh', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (55, N'cb_san_pham_SKU', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (55, N'txt_so_luong', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (65, N'txt_products', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (65, N'dr_type_products', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (65, N'dr_status_products', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (65, N'txt_price', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (65, N'ful_small_img_products', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (49, N'txt_ho_va_ten', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (49, N'txt_email', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (49, N'txt_trang_thai', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (49, N'txt_mat_ma', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (52, N'cb_cong_ty', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (52, N'cb_nhom_quyen', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (52, N'cb_tai_khoan', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (6, N'cb_id_mapped', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (6, N'txt_mapped_col_name', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (6, N'cb_mapped_col_type', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (6, N'cb_mapped_col_key', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (6, N'txt_mapped_col_code', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (6, N'cb_mapped_col_order', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'txt_form_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'cb_form_id', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'cb_form_grid_view', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'cb_ban_chinh', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'txt_fs_store_c_u_d_s', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'cb_fs_script_page_load', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (7, N'cb_form_grid_form', 6)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (8, N'txt_page_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (8, N'cb_page', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (8, N'cb_form_id', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (8, N'cb_page_order', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (5, N'cb_id_mapped', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (5, N'txt_mapped_name', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (5, N'txt_mapped_code', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (5, N'cb_type_table', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (66, N'txt_name_menu_PM', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (66, N'txt_link_menu_PM', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (66, N'drp_type_menu_PM', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (66, N'drp_status_menu_PM', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (66, N'drp_order_menu_PM', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (68, N'ful_img_new_PM', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (68, N'txt_title_new_PM', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (68, N'drp_status_new_PM', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (68, N'drp_order_new_PM', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (68, N'drp_type_new_PM', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (67, N'ful_img_silde_PM', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (67, N'txt_name_silde_PM', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (67, N'drp_status_silde_PM', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (67, N'drp_order_silde_PM', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (17, N'txt_banner_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (17, N'cb_banner_order', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (17, N'txt_banner_link', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (17, N'txt_banner_img', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (17, N'cb_banner_tiny', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (17, N'cb_banner_status', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'cb_id_chater', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'txt_chater_name', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'txt_customer_logo', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'txt_customer_prod', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'txt_customer_idea', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'cb_customer_order', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (31, N'cb_customer_status', 6)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (32, N'cb_id_chater', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (32, N'cb_id_employer', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (32, N'txt_chater_content_note', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (32, N'txt_chater_content_create', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (19, N'txt_content_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (19, N'cb_id_menu', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (33, N'txt_content_other_title', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (33, N'textarea1', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (33, N'cb_id_menu', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (15, N'txt_list_prod_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (15, N'cb_list_prod_order', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (15, N'cb_list_prod_link', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (15, N'cb_list_prod_status', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (26, N'txt_menu_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (26, N'cb_id_menu', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (26, N'dr_thu_tu', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (26, N'txt_menu_code', 3)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (26, N'cb_banner_tiny', 4)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (26, N'cb_menu_status', 5)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (18, N'txt_prod_name', 0)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (18, N'cb_prod_order', 1)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (18, N'cb_prod_status', 2)

GO
INSERT INTO [dbo].[grid_view_mapping] ([id_mapped], [id_ctr_name], [orther])
	VALUES (18, N'txt_prod_content', 3)

GO

--Table dbo.log_store_prod

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[log_store_prod] (
	[id_store_prod] [int] NOT NULL,
	[store_prod_name] [nvarchar](200) NOT NULL,
	[store_prod_code] [nvarchar](200) NOT NULL,
	[store_prod_img] [nvarchar](200) NOT NULL,
	[store_prod_count] [int] NOT NULL,
	[store_prod_cost] [int] NOT NULL,
	[store_prod_cost_sell] [int] NOT NULL,
	[store_prod_shelf] [int] NOT NULL,
	[log_sell] [datetime] NOT NULL CONSTRAINT [DF_log_store_prod_log_sell] DEFAULT (getdate()),
	[id_store_cate] [int] NOT NULL,
	[store_cate_name] [nvarchar](200) NOT NULL,
	[id_store_unit] [int] NOT NULL,
	[store_unit_name] [nvarchar](200) NOT NULL,
	[id_store] [int] NOT NULL,
	[store_name] [nvarchar](200) NOT NULL,
	[id_store_stock] [int] NOT NULL,
	[store_stock_code] [nvarchar](200) NOT NULL,
	[id_store_slot] [int] NOT NULL,
	[store_slot_code] [nvarchar](200) NOT NULL);
GO

--Table dbo.mar_project

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[mar_project] (
	[id_mar_project] [int] NOT NULL IDENTITY (1, 1),
	[mar_project_name] [nvarchar](200) NOT NULL,
	[mar_project_status] [int] NULL,
	[mar_project_begin] [datetime] NOT NULL,
	[mar_project_end] [datetime] NOT NULL,
	[mar_project_sell_off] [int] NULL,
	[mar_project_sell_type] [int] NULL);
GO

--Table dbo.mar_project_detail

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[mar_project_detail] (
	[id_mar_project] [int] NULL,
	[id_store_prod] [int] NULL,
	[store_prod_sell_off] [int] NULL);
GO

--Table dbo.other_group

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[other_group] (
	[id_group_other] [int] NOT NULL IDENTITY (1, 1),
	[group_other_name] [nvarchar](200) NULL,
	[group_other_status] [int] NULL CONSTRAINT [DF__other_gro__group__1EA48E88] DEFAULT ((1)),
	[group_other_admin] [int] NULL CONSTRAINT [DF__other_gro__group__1F98B2C1] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[other_group] ON
GO
INSERT INTO [dbo].[other_group] ([id_group_other], [group_other_name], [group_other_status], [group_other_admin])
	VALUES (1, N'Danh mục Report động', 1, 0)

GO
INSERT INTO [dbo].[other_group] ([id_group_other], [group_other_name], [group_other_status], [group_other_admin])
	VALUES (2, N'Danh mục iPlusOne', 1, 0)

GO
SET IDENTITY_INSERT [dbo].[other_group] OFF
GO

--Table dbo.other_item

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[other_item] (
	[id_other] [int] NOT NULL IDENTITY (1, 1),
	[other_name] [nvarchar](200) NULL,
	[other_status] [int] NULL CONSTRAINT [DF__other_ite__other__245D67DE] DEFAULT ((0)),
	[id_list_other] [int] NOT NULL,
	[other_order] [int] NULL CONSTRAINT [DF__other_ite__other__25518C17] DEFAULT ((1)));
GO

SET IDENTITY_INSERT [dbo].[other_item] ON
GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (1, N'Thùng', 1, 1, 2)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (4, N'Hợp', 1, 1, 1)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (5, N'Cái', 1, 1, 3)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (6, N'Thêm', 1, 2, 1)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (7, N'Xóa', 1, 2, 3)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (8, N'Sửa', 1, 2, 2)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (9, N'Giám đốc', 1, 3, 1)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (10, N'Trưởng phòng', 1, 3, 2)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (11, N'Nhân viên', 1, 3, 3)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (12, N'Tập đoàn', 1, 4, 1)

GO
INSERT INTO [dbo].[other_item] ([id_other], [other_name], [other_status], [id_list_other], [other_order])
	VALUES (13, N'Chinh nhánh', 1, 4, 2)

GO
SET IDENTITY_INSERT [dbo].[other_item] OFF
GO

--Table dbo.other_list

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[other_list] (
	[id_list_other] [int] NOT NULL IDENTITY (1, 1),
	[list_other_name] [nvarchar](200) NULL,
	[list_other_admin] [int] NULL CONSTRAINT [DF__other_lis__list___2A164134] DEFAULT ((0)),
	[list_other_status] [int] NULL CONSTRAINT [DF__other_lis__list___2B0A656D] DEFAULT ((1)),
	[id_group_other] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[other_list] ON
GO
INSERT INTO [dbo].[other_list] ([id_list_other], [list_other_name], [list_other_admin], [list_other_status], [id_group_other])
	VALUES (1, N'Danh mục đơn vị', 0, 1, 1)

GO
INSERT INTO [dbo].[other_list] ([id_list_other], [list_other_name], [list_other_admin], [list_other_status], [id_group_other])
	VALUES (2, N'Danh mục chức năng', 0, 1, 1)

GO
INSERT INTO [dbo].[other_list] ([id_list_other], [list_other_name], [list_other_admin], [list_other_status], [id_group_other])
	VALUES (3, N'Danh mục chức vụ', 0, 1, 2)

GO
INSERT INTO [dbo].[other_list] ([id_list_other], [list_other_name], [list_other_admin], [list_other_status], [id_group_other])
	VALUES (4, N'Danh mục phòng ban', 0, 1, 2)

GO
SET IDENTITY_INSERT [dbo].[other_list] OFF
GO

--Table dbo.pct_department

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[pct_department] (
	[id_department] [int] NOT NULL IDENTITY (1, 1),
	[department_name] [nvarchar](200) NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[pct_department] ON
GO
INSERT INTO [dbo].[pct_department] ([id_department], [department_name])
	VALUES (1, N'Triển khai')

GO
INSERT INTO [dbo].[pct_department] ([id_department], [department_name])
	VALUES (2, N'Dev')

GO
SET IDENTITY_INSERT [dbo].[pct_department] OFF
GO

--Table dbo.pct_employee

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[pct_employee] (
	[id_employee] [int] NOT NULL IDENTITY (1, 1),
	[id_title] [int] NOT NULL,
	[employee_name] [nvarchar](200) NOT NULL,
	[employee_address] [nvarchar](200) NOT NULL,
	[employee_mobile] [nvarchar](200) NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[pct_employee] ON
GO
INSERT INTO [dbo].[pct_employee] ([id_employee], [id_title], [employee_name], [employee_address], [employee_mobile])
	VALUES (1, 1, N'Lê Minh Thành', N'quận 4', N'1234567890')

GO
SET IDENTITY_INSERT [dbo].[pct_employee] OFF
GO

--Table dbo.pct_ticket

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[pct_ticket] (
	[id_ticket] [int] NOT NULL IDENTITY (1, 1),
	[id_employee] [int] NOT NULL,
	[ticket_fromdate] [nvarchar](200) NOT NULL,
	[ticket_todate] [nvarchar](200) NOT NULL,
	[ticket_money] [int] NOT NULL,
	[ticket_add] [nvarchar](200) NOT NULL,
	[ticket_note] [nvarchar](200) NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[pct_ticket] ON
GO
INSERT INTO [dbo].[pct_ticket] ([id_ticket], [id_employee], [ticket_fromdate], [ticket_todate], [ticket_money], [ticket_add], [ticket_note])
	VALUES (1, 1, N'04/04/2014', N'05/04/2014', 1000000, N'quận 7', N'chơi game ')

GO
SET IDENTITY_INSERT [dbo].[pct_ticket] OFF
GO

--Table dbo.pct_title

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[pct_title] (
	[id_title] [int] NOT NULL IDENTITY (1, 1),
	[id_department] [int] NOT NULL,
	[title_name] [nvarchar](200) NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[pct_title] ON
GO
INSERT INTO [dbo].[pct_title] ([id_title], [id_department], [title_name])
	VALUES (1, 1, N'Trưởng phòng')

GO
SET IDENTITY_INSERT [dbo].[pct_title] OFF
GO

--Table dbo.project_steel

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[project_steel] (
	[id_project] [int] NOT NULL IDENTITY (1, 1),
	[project_name] [nvarchar](200) NOT NULL,
	[project_status] [int] NULL CONSTRAINT [DF__project_s__proje__2FCF1A8A] DEFAULT ((1)),
	[project_des] [ntext] NULL);
GO

SET IDENTITY_INSERT [dbo].[project_steel] ON
GO
INSERT INTO [dbo].[project_steel] ([id_project], [project_name], [project_status], [project_des])
	VALUES (1, N'Framework Steel', 1, N'Mẫu cấu trúc thành phẩm demo của Framework Steel')

GO
INSERT INTO [dbo].[project_steel] ([id_project], [project_name], [project_status], [project_des])
	VALUES (2, N'Quản lý kho', 1, N'Hệ thống quản lý kho trực tuyến bằng website')

GO
INSERT INTO [dbo].[project_steel] ([id_project], [project_name], [project_status], [project_des])
	VALUES (3, N'Công cụ marketing', 1, N'Hệ thống setting hỗ trợ marketing')

GO
SET IDENTITY_INSERT [dbo].[project_steel] OFF
GO

--Table dbo.so_orther

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[so_orther] (
	[so_id] [int] NOT NULL IDENTITY (1, 1),
	[so_code] [nvarchar](200) NOT NULL,
	[so_date] [datetime] NULL CONSTRAINT [DF_so_orther_so_date] DEFAULT (getdate()),
	[so_user_id] [int] NOT NULL,
	[so_sms_status] [int] NULL CONSTRAINT [DF_so_Orther_so_sms_status] DEFAULT ((0)),
	[so_fullname] [nvarchar](200) NOT NULL,
	[so_email] [nvarchar](50) NOT NULL,
	[so_phone_number] [nvarchar](20) NOT NULL,
	[so_address] [nvarchar](500) NOT NULL);
GO

--Table dbo.so_orther_detail

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[so_orther_detail] (
	[so_orther_id] [int] NOT NULL,
	[so_prod_id] [int] NOT NULL,
	[so_prod_count_id] [int] NOT NULL,
	[so_prod_price] [int] NOT NULL);
GO

--Table dbo.so_prod_image_detail

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[so_prod_image_detail] (
	[id] [int] NOT NULL,
	[so_image] [nvarchar](250) NULL,
	[so_orther] [int] NULL,
	[so_id_prod] [int] NULL);
GO

--Table dbo.store_

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_] (
	[id_store] [int] NOT NULL IDENTITY (1, 1),
	[store_name] [nvarchar](200) NOT NULL,
	[store_ads] [nvarchar](200) NULL,
	[store_phone] [nvarchar](200) NULL,
	[store_des] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[store_] ON
GO
INSERT INTO [dbo].[store_] ([id_store], [store_name], [store_ads], [store_phone], [store_des])
	VALUES (2, N'Kho Long An', N'Số 48, đường Âu Dương Lân, Quận 5, tỉnh Long An', N'(08) 23 789; (08) 367 78', N'Đồ điện tử')

GO
INSERT INTO [dbo].[store_] ([id_store], [store_name], [store_ads], [store_phone], [store_des])
	VALUES (1, N'Kho quận 8', N'Số 48, đường Âu Dương Lân, Quận 8, tp HCM', N'(08) 345 789; (08) 4567 78', N'Chủ yếu cất giữ đồ gia dụng')

GO
SET IDENTITY_INSERT [dbo].[store_] OFF
GO

--Table dbo.store_cate

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_cate] (
	[id_store_cate] [int] NOT NULL IDENTITY (1, 1),
	[store_cate_name] [nvarchar](200) NOT NULL,
	[store_cate_order] [int] NULL,
	[store_cate_status] [int] NULL,
	[store_cate_key] [nvarchar](200) NULL,
	[store_cate_img] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[store_cate] ON
GO
INSERT INTO [dbo].[store_cate] ([id_store_cate], [store_cate_name], [store_cate_order], [store_cate_status], [store_cate_key], [store_cate_img])
	VALUES (12, N'Combo fashion', 2, 1, N'combo-fashion', N'56_2014-06-24-11-44-42_combo-fashion.jpg')

GO
INSERT INTO [dbo].[store_cate] ([id_store_cate], [store_cate_name], [store_cate_order], [store_cate_status], [store_cate_key], [store_cate_img])
	VALUES (1, N'Thời trang công sở', 1, 1, N'thoi-trang-cong-so', N'56_2014-06-24-11-27-32_thoi-trang-cong-so.jpg')

GO
INSERT INTO [dbo].[store_cate] ([id_store_cate], [store_cate_name], [store_cate_order], [store_cate_status], [store_cate_key], [store_cate_img])
	VALUES (4, N'Thời trang dạo phố', 3, 1, N'thoi-trang-dao-pho', N'56_2014-06-24-11-45-32_thoi-trang-dao-pho.jpg')

GO
INSERT INTO [dbo].[store_cate] ([id_store_cate], [store_cate_name], [store_cate_order], [store_cate_status], [store_cate_key], [store_cate_img])
	VALUES (3, N'Thời trang trẻ', 4, 1, N'thoi-trang-tre', N'56_2014-06-24-11-46-19_thoi-trang-tre.jpg')

GO
SET IDENTITY_INSERT [dbo].[store_cate] OFF
GO

--Table dbo.store_com_ship

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_com_ship] (
	[id_store_com_ship] [int] NOT NULL IDENTITY (1, 1));
GO

--Table dbo.store_com_type

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_com_type] (
	[id_store_com_type] [int] NOT NULL IDENTITY (1, 1),
	[type_name] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[store_com_type] ON
GO
INSERT INTO [dbo].[store_com_type] ([id_store_com_type], [type_name])
	VALUES (1, N'Thương mại và dịch vụ')

GO
SET IDENTITY_INSERT [dbo].[store_com_type] OFF
GO

--Table dbo.store_company

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_company] (
	[id_store_company] [int] NOT NULL IDENTITY (1, 1),
	[company_name] [nvarchar](200) NULL,
	[company_code] [nvarchar](200) NULL,
	[company_address] [nvarchar](200) NULL,
	[company_phone] [nvarchar](200) NULL,
	[company_email] [nvarchar](200) NULL,
	[company_website] [nvarchar](200) NULL,
	[company_logo] [nvarchar](200) NULL,
	[company_des] [nvarchar](200) NULL,
	[id_store_com_type] [int] NULL,
	[company_fax] [nvarchar](200) NULL,
	[company_bank] [nvarchar](200) NULL,
	[company_bank_ads] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[store_company] ON
GO
INSERT INTO [dbo].[store_company] ([id_store_company], [company_name], [company_code], [company_address], [company_phone], [company_email], [company_website], [company_logo], [company_des], [id_store_com_type], [company_fax], [company_bank], [company_bank_ads])
	VALUES (1, N'TNHH MTV LÊ THỊNH', N'123456789', N'Số 68, đường số 9, KDC Bình chánh, Quận 10, tp.HCM', N'(08) 761249, (08) 567812', N'support@lethinh.com', N'lethinh.com', N'51_2014-06-02-10-45-31_uconn_logo.jpg', N'', 1, N'', N'', N'')

GO
INSERT INTO [dbo].[store_company] ([id_store_company], [company_name], [company_code], [company_address], [company_phone], [company_email], [company_website], [company_logo], [company_des], [id_store_com_type], [company_fax], [company_bank], [company_bank_ads])
	VALUES (2, N'TNHH BBBOOO', N'123456789', N'37 Vườn chuối, Quận 4, tp. HCM', N'(08) 345678, (08)765432', N'', N'', N'51_2014-06-02-10-48-58_beats_logo_.png', N'', 1, N'', N'', N'')

GO
SET IDENTITY_INSERT [dbo].[store_company] OFF
GO

--Table dbo.store_contact

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_contact] (
	[id_store_contact] [int] NOT NULL IDENTITY (1, 1),
	[id_store_company] [int] NULL,
	[contact_full_name] [nvarchar](200) NULL,
	[contact_chat] [nvarchar](200) NULL,
	[contact_mobile] [nvarchar](200) NULL,
	[contact_title] [nvarchar](200) NULL,
	[contact_ext] [nvarchar](200) NULL,
	[contact_email] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[store_contact] ON
GO
INSERT INTO [dbo].[store_contact] ([id_store_contact], [id_store_company], [contact_full_name], [contact_chat], [contact_mobile], [contact_title], [contact_ext], [contact_email])
	VALUES (1, 1, N'Lê Minh Thành', N'Sky:mkthanh27', N'09 3562 3572', N'Bán hàng', N'29', N'thanh@gmail.com')

GO
INSERT INTO [dbo].[store_contact] ([id_store_contact], [id_store_company], [contact_full_name], [contact_chat], [contact_mobile], [contact_title], [contact_ext], [contact_email])
	VALUES (2, 2, N'Huỳnh Thị Thanh Thủy', N'Sky:thuy298', N'09 3562 6789', N'Trưởng phòng', N'89', NULL)

GO
SET IDENTITY_INSERT [dbo].[store_contact] OFF
GO

--Table dbo.store_exp

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_exp] (
	[id_store_exp] [int] NOT NULL IDENTITY (1, 1),
	[store_exp_name] [nvarchar](200) NULL,
	[store_exp_list_data] [nvarchar](200) NULL,
	[store_exp_creater] [int] NULL,
	[store_exp_checker] [int] NULL,
	[store_exp_cost] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[store_exp] ON
GO
INSERT INTO [dbo].[store_exp] ([id_store_exp], [store_exp_name], [store_exp_list_data], [store_exp_creater], [store_exp_checker], [store_exp_cost])
	VALUES (1, N'Phiếu Nhập 100SP', N'1:7', 1, 1, NULL)

GO
INSERT INTO [dbo].[store_exp] ([id_store_exp], [store_exp_name], [store_exp_list_data], [store_exp_creater], [store_exp_checker], [store_exp_cost])
	VALUES (4, N'Nhập thử', N'6:9;8:13', 2, 2, NULL)

GO
INSERT INTO [dbo].[store_exp] ([id_store_exp], [store_exp_name], [store_exp_list_data], [store_exp_creater], [store_exp_checker], [store_exp_cost])
	VALUES (5, N'Phiếu xuất kho', N'6:8', 2, 1, NULL)

GO
SET IDENTITY_INSERT [dbo].[store_exp] OFF
GO

--Table dbo.store_exp_detail

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_exp_detail] (
	[id_store_exp] [int] NULL,
	[id_store_prod] [int] NULL,
	[store_prod_count] [int] NULL,
	[id_store_slot] [int] NULL,
	[store_prod_cost] [int] NULL,
	[store_prod_shelf] [datetime] NULL);
GO

INSERT INTO [dbo].[store_exp_detail] ([id_store_exp], [id_store_prod], [store_prod_count], [id_store_slot], [store_prod_cost], [store_prod_shelf])
	VALUES (4, 6, 9, NULL, NULL, NULL)

GO
INSERT INTO [dbo].[store_exp_detail] ([id_store_exp], [id_store_prod], [store_prod_count], [id_store_slot], [store_prod_cost], [store_prod_shelf])
	VALUES (4, 8, 13, NULL, NULL, NULL)

GO

--Table dbo.store_imp

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_imp] (
	[id_store_imp] [int] NOT NULL IDENTITY (1, 1),
	[store_imp_name] [nvarchar](200) NULL,
	[store_imp_checker] [int] NULL,
	[store_imp_creater] [int] NULL,
	[store_imp_list_data] [nvarchar](200) NULL,
	[store_imp_store] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[store_imp] ON
GO
INSERT INTO [dbo].[store_imp] ([id_store_imp], [store_imp_name], [store_imp_checker], [store_imp_creater], [store_imp_list_data], [store_imp_store])
	VALUES (1, N'Nhập checker', 1, 1, NULL, NULL)

GO
SET IDENTITY_INSERT [dbo].[store_imp] OFF
GO

--Table dbo.store_imp_detail

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_imp_detail] (
	[id_store_imp] [int] NULL,
	[id_store_prod] [int] NULL,
	[store_prod_count] [int] NULL,
	[id_store_slot] [int] NULL,
	[store_prod_cost] [int] NULL,
	[store_prod_shelf] [datetime] NULL);
GO

--Table dbo.store_prod

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_prod] (
	[id_store_prod] [int] NOT NULL IDENTITY (1, 1),
	[store_prod_name] [nvarchar](200) NOT NULL,
	[id_store_unit] [int] NOT NULL,
	[store_prod_img] [nvarchar](200) NULL,
	[store_prod_code] [nvarchar](200) NOT NULL,
	[id_store_cate] [int] NULL,
	[store_prod_cost] [int] NOT NULL CONSTRAINT [DF_store_prod_store_prod_cost] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[store_prod] ON
GO
INSERT INTO [dbo].[store_prod] ([id_store_prod], [store_prod_name], [id_store_unit], [store_prod_img], [store_prod_code], [id_store_cate], [store_prod_cost])
	VALUES (6, N'Collagen', 2, N'59_2014-06-20-14-34-9_tải xuống.jpg', N'COLLAGEN-C', 1, 0)

GO
INSERT INTO [dbo].[store_prod] ([id_store_prod], [store_prod_name], [id_store_unit], [store_prod_img], [store_prod_code], [id_store_cate], [store_prod_cost])
	VALUES (9, N'Sony Vaio 910', 2, N'59_2014-06-21-23-55-6_sony.jpg', N'SH-J678', 3, 0)

GO
INSERT INTO [dbo].[store_prod] ([id_store_prod], [store_prod_name], [id_store_unit], [store_prod_img], [store_prod_code], [id_store_cate], [store_prod_cost])
	VALUES (10, N'Sony + chăm sóc da', 2, N'59_2014-06-21-23-57-9_depositphotos_35424145-Store-icon.jpg', N'SKU-890', 3, 0)

GO
INSERT INTO [dbo].[store_prod] ([id_store_prod], [store_prod_name], [id_store_unit], [store_prod_img], [store_prod_code], [id_store_cate], [store_prod_cost])
	VALUES (8, N'Latop Sony U410', 5, N'59_2014-06-21-9-41-9_clip_image004_36AA697A.jpg', N'SONY-U410', 3, 0)

GO
SET IDENTITY_INSERT [dbo].[store_prod] OFF
GO

--Table dbo.store_prod_sku

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_prod_sku] (
	[id_store_prod_sku] [int] NOT NULL IDENTITY (1, 1),
	[id_store_prod] [int] NOT NULL,
	[sku_count] [int] NOT NULL,
	[id_prod_sku] [int] NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[store_prod_sku] ON
GO
INSERT INTO [dbo].[store_prod_sku] ([id_store_prod_sku], [id_store_prod], [sku_count], [id_prod_sku])
	VALUES (1, 6, 1, 10)

GO
INSERT INTO [dbo].[store_prod_sku] ([id_store_prod_sku], [id_store_prod], [sku_count], [id_prod_sku])
	VALUES (6, 9, 1, 10)

GO
SET IDENTITY_INSERT [dbo].[store_prod_sku] OFF
GO

--Table dbo.store_slot

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_slot] (
	[id_store_slot] [int] NOT NULL IDENTITY (1, 1),
	[id_store] [int] NULL,
	[store_slot_code] [nvarchar](200) NOT NULL,
	[id_store_stock] [int] NULL,
	[store_slot_contain] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[store_slot] ON
GO
INSERT INTO [dbo].[store_slot] ([id_store_slot], [id_store], [store_slot_code], [id_store_stock], [store_slot_contain])
	VALUES (6, 1, N'K5', 2, 10)

GO
INSERT INTO [dbo].[store_slot] ([id_store_slot], [id_store], [store_slot_code], [id_store_stock], [store_slot_contain])
	VALUES (3, 1, N'K9', 2, 300)

GO
INSERT INTO [dbo].[store_slot] ([id_store_slot], [id_store], [store_slot_code], [id_store_stock], [store_slot_contain])
	VALUES (4, 1, N'K91', 2, 15)

GO
INSERT INTO [dbo].[store_slot] ([id_store_slot], [id_store], [store_slot_code], [id_store_stock], [store_slot_contain])
	VALUES (1, 2, N'LA1', 5, 200)

GO
INSERT INTO [dbo].[store_slot] ([id_store_slot], [id_store], [store_slot_code], [id_store_stock], [store_slot_contain])
	VALUES (2, 2, N'LA5', 5, 300)

GO
SET IDENTITY_INSERT [dbo].[store_slot] OFF
GO

--Table dbo.store_stock

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_stock] (
	[id_store_stock] [int] NOT NULL IDENTITY (1, 1),
	[store_stock_code] [nvarchar](200) NOT NULL,
	[store_stock_status] [int] NULL,
	[store_stock_store] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[store_stock] ON
GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (1, N'K-34-F2', 0, 1)

GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (2, N'K-34-F3', 1, 1)

GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (3, N'K-34-F4', 1, 1)

GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (4, N'K-34-F5', 0, 1)

GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (6, N'LA-34-G1', 1, 2)

GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (7, N'LA-34-G2', 1, 2)

GO
INSERT INTO [dbo].[store_stock] ([id_store_stock], [store_stock_code], [store_stock_status], [store_stock_store])
	VALUES (5, N'LA-34-G5', 1, 2)

GO
SET IDENTITY_INSERT [dbo].[store_stock] OFF
GO

--Table dbo.store_unit

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[store_unit] (
	[id_store_unit] [int] NOT NULL IDENTITY (1, 1),
	[store_unit_name] [nvarchar](200) NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[store_unit] ON
GO
INSERT INTO [dbo].[store_unit] ([id_store_unit], [store_unit_name])
	VALUES (2, N'hộp')

GO
INSERT INTO [dbo].[store_unit] ([id_store_unit], [store_unit_name])
	VALUES (4, N'chiếc')

GO
INSERT INTO [dbo].[store_unit] ([id_store_unit], [store_unit_name])
	VALUES (5, N'cái')

GO
INSERT INTO [dbo].[store_unit] ([id_store_unit], [store_unit_name])
	VALUES (8, N'thùng')

GO
SET IDENTITY_INSERT [dbo].[store_unit] OFF
GO

--Table dbo.sys_company

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_company] (
	[id_company] [int] NOT NULL,
	[company_name] [nvarchar](200) NULL);
GO

INSERT INTO [dbo].[sys_company] ([id_company], [company_name])
	VALUES (3, N'Wizend')

GO

--Table dbo.sys_data_fixed

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_data_fixed] (
	[ctr_client_id] [nvarchar](200) NOT NULL,
	[record_order] [int] NULL,
	[st_value] [nvarchar](200) NULL,
	[st_name] [nvarchar](200) NULL,
	[st_parent] [nvarchar](200) NULL,
	[ctr_key_query] [nvarchar](200) NULL,
	[id_form] [int] NULL);
GO

INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1', 0, N'2sddfdf', N'dfdf', N'0', NULL, 2)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1moi', 0, N'3', N'3', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1moi', 1, N'4', N'4', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'comboxTemp', 0, N'1', N'1', N'0', NULL, 1)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'comboxTemp', 1, N'2', N'2', N'0', NULL, 1)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1', 0, N'1', N'Hiện', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1', 1, N'2', N'Ẩn', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1moinew', 0, N'5', N'5', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'combox1moinew', 1, N'7', N'7', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_danh_muc_cha', 0, N'1', N'1', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_trang_thai', 0, N'1', N'Hiện', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_trang_thai', 1, N'2', N'Ẩn', N'0', NULL, 3)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cbb_fromtype', 0, N'1', N'Loại 1', N'0', NULL, 4)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cbb_fromtype', 1, N'2', N'Loại 2', N'0', NULL, 4)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cbb_fromtype', 2, N'3', N'Loại 3', N'0', NULL, 4)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cbb_from_level', 0, N'1', N'Danh mục Report động', N'0', NULL, 4)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cbb_from_level', 1, N'2', N'Danh mục iPlusOne', N'0', NULL, 4)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cbb_from_level', 2, N'3', N'Cấp 3', N'0', NULL, 4)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 0, N'1', N'Danh mục dự án', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 1, N'2', N'Các danh mục', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 2, N'3', N'Chi tiết danh mục', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 3, N'5', N'Tạo Table', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 4, N'6', N'Tạo Col', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_type', 0, N'INTEGER', N'INTEGER', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_type', 1, N'NVARCHAR(200)', N'NVARCHAR(200)', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_key', 0, N'0', N'-', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_key', 1, N'1', N'Khóa chính', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 0, N'1', N'1', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 1, N'2', N'2', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 2, N'3', N'3', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 3, N'4', N'4', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 4, N'5', N'5', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 5, N'6', N'6', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 6, N'7', N'7', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 7, N'8', N'8', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 8, N'9', N'9', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 9, N'10', N'10', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_order', 10, N'11', N'11', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_clock_database', 0, N'0', N'Black', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_project', 0, N'1', N'1', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_grid_view', 0, N'wizend-grid', N'Mặc định', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_grid_view', 1, N'red-action-grid', N'Admin RED', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_view_store', 0, N'1', N'1', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_view_store', 1, N'3', N'3', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_grid_form', 0, N'wizend-call-frame-steel', N'Mặc định', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_db', 0, N'0', N'0', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_db', 1, N'1', N'1', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_fs_script_page_load', 0, N'black', N'Black', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_fs_script_page_load', 1, N'red', N'Red', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 0, N'3', N'Nhập liệu danh mục', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 1, N'11', N'Tạo Table', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 2, N'12', N'Tạo Col', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 3, N'13', N'Cấu hình form', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 4, N'14', N'Tạo Page', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 5, N'21', N'Web banner', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 0, N'1', N'1', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 1, N'2', N'2', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 2, N'3', N'3', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 3, N'4', N'4', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 4, N'5', N'5', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 5, N'6', N'6', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 6, N'7', N'7', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 7, N'8', N'8', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 8, N'9', N'9', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 9, N'10', N'10', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_type', 2, N'datetime', N'DATATIME', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_group_page', 0, N'1', N'1', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_group_page', 1, N'2', N'2', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_group_page', 2, N'3', N'3', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_type', 3, N'NTEXT', N'NTEXT', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_mapped_col_type', 4, N'bigint', N'BIGINT', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 0, N'1', N'1', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 1, N'2', N'2', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 2, N'3', N'3', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 3, N'4', N'4', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 4, N'5', N'5', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 5, N'6', N'6', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 6, N'7', N'7', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 7, N'8', N'8', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 8, N'9', N'9', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_order', 9, N'10', N'10', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_status', 0, N'1', N'Hiện', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_banner_status', 1, N'0', N'Ẩn', N'0', NULL, 21)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 0, N'1', N'1', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 1, N'2', N'2', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 2, N'3', N'3', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 3, N'4', N'4', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 4, N'5', N'5', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 5, N'6', N'6', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 6, N'7', N'7', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 7, N'8', N'8', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 8, N'9', N'9', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 9, N'10', N'10', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_status', 0, N'1', N'Hiện', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_status', 1, N'0', N'Ẩn', N'0', NULL, 20)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_status', 0, N'1', N'Hiện', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_status', 1, N'0', N'Ẩn', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_employer_status', 0, N'1', N'Hiện', N'0', NULL, 35)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_employer_status', 1, N'0', N'Ẩn', N'0', NULL, 35)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 0, N'1', N'1', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 1, N'2', N'2', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 2, N'3', N'3', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 3, N'4', N'4', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 4, N'5', N'5', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 5, N'6', N'6', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 6, N'7', N'7', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 0, N'1', N'Hiện', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 1, N'0', N'Ẩn', N'0', NULL, 36)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 0, N'1', N'1', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 1, N'2', N'2', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 6, N'22', N'Web list product', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 0, N'1', N'1', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 1, N'2', N'2', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 2, N'3', N'3', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 3, N'4', N'4', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 4, N'5', N'5', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 5, N'6', N'6', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 6, N'7', N'7', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 7, N'8', N'8', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 8, N'9', N'9', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_order', 9, N'10', N'10', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_link', 0, N'0', N'0', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_status', 0, N'1', N'Hiện', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_list_prod_status', 1, N'0', N'Ẩn', N'0', NULL, 22)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 0, N'1', N'1', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 1, N'2', N'2', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 2, N'3', N'3', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 3, N'4', N'4', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 4, N'5', N'5', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 5, N'6', N'6', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 6, N'7', N'7', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 7, N'8', N'8', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 8, N'9', N'9', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 9, N'10', N'10', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 10, N'11', N'11', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 11, N'12', N'12', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 12, N'13', N'13', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 13, N'14', N'14', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 14, N'15', N'15', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 15, N'16', N'16', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 16, N'17', N'17', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 17, N'18', N'18', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 18, N'19', N'19', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 19, N'20', N'20', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 20, N'21', N'21', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 21, N'22', N'22', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 22, N'23', N'23', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 23, N'24', N'24', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 24, N'25', N'25', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 25, N'26', N'26', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 26, N'27', N'27', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 27, N'28', N'28', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 28, N'29', N'29', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 29, N'30', N'30', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 0, N'1', N'Hiện', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 1, N'0', N'Ẩn', N'0', NULL, 33)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 2, N'3', N'3', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 3, N'4', N'4', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 4, N'5', N'5', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 5, N'6', N'6', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 6, N'7', N'7', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 7, N'8', N'8', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 8, N'9', N'9', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 9, N'10', N'10', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 10, N'11', N'11', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 11, N'12', N'12', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 12, N'13', N'13', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 13, N'14', N'14', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 14, N'15', N'15', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 15, N'16', N'16', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 16, N'17', N'17', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 17, N'18', N'18', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 18, N'19', N'19', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 19, N'20', N'20', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 20, N'21', N'21', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 21, N'22', N'22', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 22, N'23', N'23', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 23, N'24', N'24', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 24, N'25', N'25', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 25, N'26', N'26', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 26, N'27', N'27', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 27, N'28', N'28', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 28, N'29', N'29', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 29, N'30', N'30', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 0, N'1', N'Hiện', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 1, N'0', N'Ẩn', N'0', NULL, 39)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 0, N'1', N'1', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 1, N'2', N'2', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 2, N'3', N'3', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 3, N'4', N'4', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 4, N'5', N'5', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 5, N'6', N'6', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 6, N'7', N'7', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 7, N'8', N'8', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 8, N'9', N'9', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_order', 9, N'10', N'10', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_status', 0, N'1', N'Hiện', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_menu_status', 1, N'0', N'Ẩn', N'0', NULL, 42)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 0, N'1', N'1', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 1, N'2', N'2', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 2, N'3', N'3', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 3, N'4', N'4', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 4, N'5', N'5', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 5, N'6', N'6', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 6, N'7', N'7', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 7, N'8', N'8', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 8, N'9', N'9', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 9, N'10', N'10', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 0, N'1', N'Hiện', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 1, N'0', N'Ẩn', N'0', NULL, 45)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 0, N'1', N'1', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 1, N'2', N'2', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 2, N'3', N'3', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 3, N'4', N'4', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 4, N'5', N'5', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 5, N'6', N'6', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 6, N'7', N'7', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 7, N'8', N'8', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 8, N'9', N'9', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 9, N'10', N'10', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 10, N'11', N'11', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 11, N'12', N'12', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 12, N'13', N'13', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 13, N'14', N'14', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 0, N'1', N'1', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 1, N'2', N'2', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 2, N'3', N'3', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 3, N'4', N'4', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 4, N'5', N'5', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 5, N'6', N'6', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_prod_order', 6, N'7', N'7', N'0', NULL, 30)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 14, N'15', N'15', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 15, N'16', N'16', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 16, N'17', N'17', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 17, N'18', N'18', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 18, N'19', N'19', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 19, N'20', N'20', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 20, N'21', N'21', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 21, N'22', N'22', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 22, N'23', N'23', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 23, N'24', N'24', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 24, N'25', N'25', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 25, N'26', N'26', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 26, N'27', N'27', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 27, N'28', N'28', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 28, N'29', N'29', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_order', 29, N'30', N'30', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 0, N'1', N'Hiện', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_customer_status', 1, N'0', N'Ần', N'0', NULL, 47)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 7, N'29', N'Web department', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 8, N'30', N'Web products', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 9, N'31', N'Web content', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 10, N'34', N'Web title', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 11, N'35', N'Web employer', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 12, N'42', N'Web menu root', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 13, N'45', N'Webcustomer', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 14, N'47', N'Web chater', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 15, N'48', N'Web chater content', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 16, N'49', N'Web content other', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_form', 17, N'50', N'pct employee', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page_order', 10, N'11', N'11', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_sys_group_page', 0, N'1', N'Quản lý kho', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_sys_group_page', 1, N'2', N'Incident', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_sys_group_page', 2, N'3', N'Quản trị hệ thống', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_type_table', 0, N'0', N'Mặc định', N'0', NULL, 11)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 5, N'7', N'Tạo Form', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 6, N'8', N'Tạo Page', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 7, N'14', N'Phòng ban', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 8, N'15', N'Web list product', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 9, N'17', N'Web banner', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 10, N'18', N'Web products', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 11, N'19', N'Web content', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 12, N'22', N'Chức vụ', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 13, N'23', N'Nhân viên', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 14, N'26', N'Web menu root', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 15, N'29', N'Khách hàng', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 16, N'31', N'Web chater', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 17, N'32', N'Web chater content', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 18, N'33', N'Web content other', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_mapped', 19, N'34', N'pct employee', N'0', NULL, 12)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_clock_database', 1, N'1', N'Red', N'0', NULL, 13)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_store_com_type', 0, N'1', N'Thương mại và dịch vụ', N'0', NULL, 51)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_store_com_type', 1, N'2', N'Sản xuất và phân phối', N'0', NULL, 51)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 0, N'1', N'1', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 1, N'2', N'2', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 2, N'3', N'3', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 3, N'4', N'4', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 4, N'5', N'5', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 5, N'6', N'6', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 6, N'7', N'7', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 7, N'8', N'8', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 8, N'9', N'9', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 9, N'10', N'10', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 10, N'11', N'11', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 11, N'12', N'12', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 12, N'13', N'13', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 13, N'14', N'14', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 14, N'15', N'15', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 15, N'16', N'16', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 16, N'17', N'17', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 17, N'18', N'18', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 18, N'19', N'19', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 19, N'20', N'20', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_trang_thai', 0, N'0', N'Không hoạt động', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_trang_thai', 1, N'1', N'Đang hoạt động', N'0', NULL, 56)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_trang_thai', 0, N'0', N'Khóa', N'0', NULL, 61)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_trang_thai', 1, N'1', N'Có thể dùng', N'0', NULL, 61)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_trang_thai', 0, N'0', N'Không hoạt động', N'0', NULL, 64)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_trang_thai', 1, N'1', N'Hoạt động', N'0', NULL, 64)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_trang_thai', 0, N'0', N'Không hoạt động', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_trang_thai', 1, N'1', N'Hoạt động', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 0, N'1', N'1', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 1, N'2', N'2', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 2, N'3', N'3', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 3, N'4', N'4', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 4, N'5', N'5', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 5, N'6', N'6', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 6, N'7', N'7', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thu_tu', 7, N'8', N'8', N'0', NULL, 65)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_trang', 0, N'1', N'Quản lý kho', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_trang', 1, N'2', N'Incident', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_trang', 2, N'3', N'Quản trị hệ thống', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_trang', 3, N'5', N'Quản lý thông tin', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_trang', 4, N'6', N'Quản lý phiếu', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_trang', 5, N'7', N'Quyền Coder', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_xoa', 0, N'1', N'Có', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_xoa', 1, N'0', N'Không', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_cau_hinh', 0, N'1', N'Có', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_cau_hinh', 1, N'0', N'Không', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_phan_quyen', 0, N'1', N'Có', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_phan_quyen', 1, N'0', N'Không', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 0, N'18', N'Tạo table', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 1, N'19', N'Tạo cột table', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 2, N'20', N'Cấu hình form', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 3, N'21', N'Tạo page', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 4, N'28', N'Banner', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 5, N'29', N'Danh mục sản phẩm', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 6, N'30', N'Phòng ban', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 7, N'31', N'Sản phẩm', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 8, N'32', N'Nội dung', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 9, N'35', N'Chức vụ', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 10, N'36', N'Nhân viên', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 11, N'40', N'Menu', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 12, N'43', N'Khách hàng', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 13, N'45', N'Thông tin hỗ trợ trực tuyến', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 14, N'46', N'Quá trình hỗ trợ', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 15, N'47', N'Nội dung bất kỳ', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 16, N'48', N'pct employee', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 17, N'49', N'Thông tin công ty', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 18, N'50', N'Loại hình kinh doanh', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 19, N'51', N'Thông tin người liên hệ', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 20, N'52', N'Sản phẩm kho', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 21, N'53', N'Đơn vị tính', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 22, N'54', N'Loại sản phẩm', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 23, N'55', N'Kho hàng', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 24, N'56', N'Loại hình vận chuyển', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 25, N'57', N'Ngăn chứa', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 26, N'58', N'Kệ hàng', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 27, N'59', N'Phiếu xuất', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 28, N'60', N'Phiếu nhập', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 29, N'61', N'Tài khoản', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 30, N'62', N'Nhóm page', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 31, N'63', N'Nhóm quyền', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 32, N'64', N'Tài khoản thuộc nhóm quyền', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 33, N'65', N'Page thuộc nhóm quyền', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_page', 34, N'66', N'Phân quyền kết xuất', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_tao', 0, N'1', N'Có', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_tao', 1, N'0', N'Không', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_xem', 0, N'1', N'Có', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_quyen_xem', 1, N'0', N'Không', N'0', NULL, 69)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thuoc_kho', 0, N'1', N'Kho quận 8', N'0', NULL, 61)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_thuoc_kho', 1, N'2', N'Kho Long An', N'0', NULL, 61)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_company', 0, N'1', N'TNHH MTV LÊ THỊNH', N'0', NULL, 53)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_id_company', 1, N'2', N'TNHH BBBOOO', N'0', NULL, 53)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_kiem_tra_xuat', 0, N'1', N'Lê Minh Thành', N'0', NULL, 62)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_kiem_tra_xuat', 1, N'2', N'Lê Minh Lộc', N'0', NULL, 62)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 0, N'3', N'Nhập liệu danh mục', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 1, N'11', N'Tạo Table', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 2, N'12', N'Tạo Col', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 3, N'13', N'Cấu hình form', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 4, N'14', N'Tạo Page', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 5, N'21', N'Web banner', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 6, N'22', N'Web list product', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 7, N'29', N'Web department', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 8, N'30', N'Web products', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 9, N'31', N'Web content', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 10, N'34', N'Web title', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 11, N'35', N'Web employer', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 12, N'42', N'Web menu root', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 13, N'45', N'Webcustomer', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 14, N'47', N'Web chater', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 15, N'48', N'Web chater content', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 16, N'49', N'Web content other', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 17, N'50', N'pct employee', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 18, N'51', N'Thông tin công ty', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 19, N'52', N'Loại hình kinh doanh', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 20, N'53', N'Thông tin người liên hệ', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 21, N'55', N'Đơn vị tính', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 22, N'56', N'Loại sản phẩm', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 23, N'57', N'Kho hàng', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 24, N'58', N'Loại hình vận chuyển', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 25, N'59', N'Sản phẩm kho', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 26, N'60', N'Ngăn chứa', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 27, N'61', N'Kệ hàng', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 28, N'62', N'Phiếu xuất', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 29, N'63', N'Phiếu nhập', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 30, N'64', N'Tài khoản', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 31, N'65', N'Nhóm trang', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 32, N'66', N'Nhóm quyền', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 33, N'67', N'Tài khoản thuộc nhóm quyền', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 34, N'68', N'Page thuộc nhóm quyền', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_form_id', 35, N'69', N'Phân quyền kết xuất', N'0', NULL, 14)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_san_pham_goc', 0, N'1', N'Chăm sóc da', N'0', NULL, 70)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_san_pham_goc', 1, N'3', N'Điện tử', N'0', NULL, 70)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_san_pham_goc', 2, N'4', N'Dệt may', N'0', NULL, 70)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'cb_nhom_san_pham_goc', 3, N'12', N'Mỹ phẩm', N'0', NULL, 70)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_thu_tu', 0, N'1', N'1', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_thu_tu', 1, N'2', N'2', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_thu_tu', 2, N'3', N'3', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_thu_tu', 3, N'4', N'4', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_thu_tu', 4, N'5', N'5', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_thu_tu', 5, N'6', N'6', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 0, N'1', N'1', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 1, N'2', N'2', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 2, N'3', N'3', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 3, N'4', N'4', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 4, N'5', N'5', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 5, N'6', N'6', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 6, N'7', N'7', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 0, N'1', N'1', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 1, N'2', N'2', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 2, N'3', N'3', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 3, N'4', N'4', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 4, N'5', N'5', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 5, N'6', N'6', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_banner_order', 6, N'7', N'7', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_banner', 0, N'1', N'Hoạt động', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_banner', 1, N'2', N'Không hoạt động', N'0', NULL, 74)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_products_type', 0, N'1', N'1', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_products_type', 1, N'2', N'2', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_products_type', 2, N'3', N'3', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status', 0, N'1', N'Hoạt động', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status', 1, N'0', N'Không hoạt động', N'0', NULL, 73)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_menu', 0, N'0', N'Không hoạt dộng', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_menu', 1, N'1', N'Hoạt động', N'0', NULL, 72)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_product', 0, N'1', N'1', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_product', 1, N'2', N'2', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_product', 2, N'3', N'3', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_product', 3, N'4', N'4', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_product', 4, N'5', N'5', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_product', 5, N'6', N'6', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_product', 0, N'0', N'Không hoạt động', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_product', 1, N'1', N'Hoạt động', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_sanphamtieubieu', 0, N'0', N'Tiêu biểu', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_sanphamtieubieu', 1, N'1', N'Bình thường', N'0', NULL, 75)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_status', 0, N'0', N'Không hoạt động', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_status', 1, N'1', N'Hoạt động', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 0, N'1', N'1', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 1, N'2', N'2', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 2, N'3', N'3', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 3, N'4', N'4', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 4, N'5', N'5', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 5, N'6', N'6', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 6, N'7', N'7', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 7, N'8', N'8', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 8, N'9', N'9', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order', 9, N'10', N'10', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_menu_top', 0, N'1', N'Hoạt động', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_menu_top', 1, N'0', N'Không hoạt động', N'0', NULL, 78)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 0, N'1', N'1', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 1, N'2', N'2', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 2, N'3', N'3', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 3, N'4', N'4', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 4, N'5', N'5', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 5, N'6', N'6', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 6, N'7', N'7', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 7, N'8', N'8', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 8, N'9', N'9', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_menu_products', 9, N'10', N'10', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_menu_products', 0, N'1', N'Hoạt động', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_menu_products', 1, N'0', N'Không hoạt động', N'0', NULL, 79)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_quangcao', 0, N'0', N'Không hoạt động', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_quangcao', 1, N'1', N'Hoạt động', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 0, N'1', N'1', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 1, N'2', N'2', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 2, N'3', N'3', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 3, N'4', N'4', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 4, N'5', N'5', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 5, N'6', N'6', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 6, N'7', N'7', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 7, N'8', N'8', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 8, N'9', N'9', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'txt_order', 9, N'10', N'10', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_products', 0, N'0', N'Không hoạt động', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_status_products', 1, N'1', N'Hoạt động', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 0, N'1', N'1', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 1, N'2', N'2', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 2, N'3', N'3', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 3, N'4', N'4', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 4, N'5', N'5', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 5, N'6', N'6', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 6, N'7', N'7', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 7, N'8', N'8', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 8, N'9', N'9', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_order_products', 9, N'10', N'10', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_type_products', 0, N'1', N'1', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_sanphamtieubieu', 0, N'1', N'Sản phẩm tiêu biểu', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_sanphamtieubieu', 1, N'0', N'Sản phẩm không tiêu biểu', N'0', NULL, 81)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 0, N'1', N'1', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 1, N'2', N'2', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 2, N'3', N'3', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 3, N'4', N'4', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 4, N'5', N'5', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 5, N'6', N'6', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 6, N'7', N'7', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 7, N'8', N'8', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 8, N'9', N'9', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_qc_order', 9, N'10', N'10', N'0', NULL, 77)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_type_quangcao', 0, N'0', N'Show lớn', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_type_quangcao', 1, N'1', N'Show nhỏ', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_type_quangcao', 2, N'2', N'Show trái', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'dr_type_quangcao', 3, N'3', N'Show phải', N'0', NULL, 80)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 0, N'999999999', N'Thứ tự', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 1, N'1', N'1', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 2, N'2', N'2', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 3, N'3', N'3', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 4, N'4', N'4', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 5, N'5', N'5', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 6, N'6', N'6', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 7, N'7', N'7', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 8, N'8', N'8', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 9, N'9', N'9', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_new_PM', 10, N'10', N'10', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_status_new_PM', 0, N'0', N'Không hoạt động', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_status_new_PM', 1, N'1', N'Hoạt động', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_menu_PM', 0, N'0', N'Chọn Menu', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_menu_PM', 1, N'1', N'Menu Ngang', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 0, N'9999999', N'Thứ tự', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 1, N'1', N'1', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 2, N'2', N'2', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 3, N'3', N'3', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 4, N'4', N'4', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 5, N'5', N'5', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 6, N'6', N'6', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 7, N'7', N'7', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 8, N'8', N'8', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 9, N'9', N'9', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_menu_PM', 10, N'10', N'10', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_status_menu_PM', 0, N'0', N'Không hoạt động', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_status_menu_PM', 1, N'1', N'Hoạt động', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_status_silde_PM', 0, N'0', N'Không hoạt động', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_status_silde_PM', 1, N'1', N'Hoạt động', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 0, N'9999999', N'Chọn thứ tự', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 1, N'1', N'1', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 2, N'2', N'2', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 3, N'3', N'3', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 4, N'4', N'4', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 5, N'5', N'5', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 6, N'6', N'6', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 7, N'7', N'7', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 8, N'8', N'8', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 9, N'9', N'9', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_order_silde_PM', 10, N'10', N'10', N'0', NULL, 84)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_menu_PM', 2, N'2', N'Menu Dọc', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_menu_PM', 3, N'3', N'Menu Footer', N'0', NULL, 82)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_new_PM', 0, N'5', N'Vấn đề liên quan', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_new_PM', 1, N'1', N'Vấn đề về tai', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_new_PM', 2, N'2', N'Vấn đề về mũi', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_new_PM', 3, N'3', N'Vấn đề về họng', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_new_PM', 4, N'4', N'Tin tức phòng mạch', N'0', NULL, 83)

GO
INSERT INTO [dbo].[sys_data_fixed] ([ctr_client_id], [record_order], [st_value], [st_name], [st_parent], [ctr_key_query], [id_form])
	VALUES (N'drp_type_new_PM', 5, N'6', N'Tin Tức Trong Ngày', N'0', NULL, 83)

GO

--Table dbo.sys_fs_help

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_fs_help] (
	[id_fs_help] [int] NOT NULL IDENTITY (1, 1),
	[fs_help_name] [nvarchar](200) NULL,
	[fs_help_content] [ntext] NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_fs_help] ON
GO
INSERT INTO [dbo].[sys_fs_help] ([id_fs_help], [fs_help_name], [fs_help_content])
	VALUES (1, N'Hướng dẫn sử dụng BLACK ADMIN', N'Chưa có hướng dẫn dùng')

GO
INSERT INTO [dbo].[sys_fs_help] ([id_fs_help], [fs_help_name], [fs_help_content])
	VALUES (2, N'Hướng dẫn sử dụng RED ADMIN', N'Chưa có hướng dẫn dùng')

GO
SET IDENTITY_INSERT [dbo].[sys_fs_help] OFF
GO

--Table dbo.sys_gridview_control

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_gridview_control] (
	[table_name] [nvarchar](50) NOT NULL,
	[column_name] [varchar](250) NOT NULL,
	[column_caption] [nvarchar](250) NULL,
	[column_key] [bit] NULL,
	[column_edit] [bit] NULL);
GO

INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_prod', N'id_store_cate', N'id_store_cate', CAST ('False' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_prod', N'id_store_prod', N'Key', CAST ('True' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_prod', N'id_store_unit', N'id_store_unit', CAST ('False' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_prod', N'store_prod_code', N'store_prod_code', CAST ('False' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_prod', N'store_prod_img', N'store_prod_img', CAST ('False' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_prod', N'store_prod_name', N'store_prod_name', CAST ('False' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_unit', N'id_store_unit', N'Key', CAST ('True' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[sys_gridview_control] ([table_name], [column_name], [column_caption], [column_key], [column_edit])
	VALUES (N'store_unit', N'store_unit_name', N'store_unit_name', CAST ('False' AS bit), CAST ('False' AS bit))

GO

--Table dbo.sys_group_page

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_group_page] (
	[id_group_page] [int] NOT NULL IDENTITY (1, 1),
	[group_page_name] [nvarchar](200) NULL,
	[group_page_status] [int] NULL,
	[group_page_order] [int] NULL CONSTRAINT [DF__sys_group__group__395884C4] DEFAULT ((0)),
	[group_page_icon] [nvarchar](50) NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_group_page] ON
GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (1, N'Quản lý kho', 0, 1, N'store.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (2, N'Incident', 0, 5, N'icon_incident.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (3, N'Quản trị hệ thống', 1, 5, N'icon_request.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (5, N'Quản lý thông tin', 0, 3, N'bill_icon.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (6, N'Quản lý phiếu', 0, 2, N'bill_ex_in.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (7, N'Quyền Coder', 1, 6, N'icon_setting.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (8, N'Công cụ Marketing', 0, 4, N'group-marketing.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (9, N'Quản trị Website', 0, 8, N'report-all.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (10, N'Quản lý Website TR', 0, 1, N'abc.jpg')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (11, N'Quản lý quảng cáo', 0, 1, N'apc.png')

GO
INSERT INTO [dbo].[sys_group_page] ([id_group_page], [group_page_name], [group_page_status], [group_page_order], [group_page_icon])
	VALUES (12, N'Quản trị Web PM', 1, 1, N'icon_setting.png')

GO
SET IDENTITY_INSERT [dbo].[sys_group_page] OFF
GO

--Table dbo.sys_info

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_info] (
	[id_sys_info] [int] NOT NULL IDENTITY (1, 1),
	[sys_info_name] [nvarchar](200) NULL,
	[sys_info_des] [ntext] NULL,
	[sys_info_key] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_info] ON
GO
INSERT INTO [dbo].[sys_info] ([id_sys_info], [sys_info_name], [sys_info_des], [sys_info_key])
	VALUES (1, N'Store_2910', N'Dùng trong kiểm thử dropbox call store trong setting', 2)

GO
SET IDENTITY_INSERT [dbo].[sys_info] OFF
GO

--Table dbo.sys_mapped_col

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_col] (
	[id_mapped_col] [int] NOT NULL IDENTITY (1, 1),
	[id_mapped] [int] NULL,
	[mapped_col_name] [nvarchar](200) NULL,
	[mapped_col_type] [nvarchar](50) NULL,
	[mapped_col_key] [int] NULL CONSTRAINT [DF__sys_mappe__mappe__41EDCAC5] DEFAULT ((0)),
	[mapped_col_code] [nvarchar](200) NULL,
	[mapped_col_order] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_mapped_col] ON
GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (1, 1, N'Mã danh mục dự án', N'INTEGER', 1, N'id_group_other', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (2, 1, N'Tên danh mục dự án', N'NVARCHAR(200)', 0, N'group_other_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (3, 1, N'Trạng thái danh mục', N'INTEGER', 0, N'group_other_status', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (4, 2, N'Mã các danh mục', N'INTEGER', 1, N'id_list_other', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (5, 2, N'Tên các danh mục', N'NVARCHAR(200)', 0, N'list_other_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (6, 2, N'ST các danh mục', N'INTEGER', 0, N'list_other_status', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (7, 3, N'Mã chi tiết danh mục', N'INTEGER', 1, N'id_other', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (8, 3, N'Tên chi tiết danh mục', N'NVARCHAR(200)', 0, N'other_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (9, 3, N'ST chi tiết danh mục', N'INTEGER', 0, N'other_status', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (10, 3, N'TT chi tiết danh mục', N'INTEGER', 0, N'other_order', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (11, 2, N'KN danh mục dự án', N'INTEGER', 0, N'id_group_other', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (12, 3, N'KN chi tiết danh mục', N'INTEGER', 0, N'id_list_other', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (20, 5, N'ID Map', N'INTEGER', 1, N'id_mapped', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (21, 5, N'Tên table', N'NVARCHAR(200)', 0, N'mapped_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (22, 5, N'Mã table', N'NVARCHAR(200)', 0, N'mapped_code', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (23, 5, N'Loại', N'INTEGER', 0, N'type_other', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (24, 6, N'ID Col', N'INTEGER', 1, N'id_mapped_col', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (25, 6, N'Tên table', N'INTEGER', 0, N'id_mapped', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (26, 6, N'Tên cột', N'NVARCHAR(200)', 0, N'mapped_col_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (27, 6, N'Loại cột', N'NVARCHAR(200)', 0, N'mapped_col_type', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (28, 6, N'Khóa chính', N'INTEGER', 0, N'mapped_col_key', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (29, 6, N'Mã cột', N'NVARCHAR(200)', 0, N'mapped_col_code', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (30, 6, N'Thứ tự', N'INTEGER', 0, N'mapped_col_order', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (31, 7, N'ID Form', N'INTEGER', 1, N'id_form', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (32, 7, N'Tên form', N'NVARCHAR(200)', 0, N'form_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (33, 7, N'IF Project', N'INTEGER', 0, N'id_project', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (34, 7, N'Loại quản trị', N'NVARCHAR(200)', 0, N'form_grid_view', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (35, 7, N'Name us', N'NVARCHAR(200)', 0, N'form_name_us', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (36, 7, N'View store', N'INTEGER', 0, N'form_view_store', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (37, 7, N'Grid chart', N'NVARCHAR(200)', 0, N'form_grid_chart', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (38, 7, N'Script form', N'NVARCHAR(200)', 0, N'form_grid_form', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (39, 7, N'DB Form', N'INTEGER', 0, N'form_db', 8)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (40, 7, N'Bản chính', N'NVARCHAR(200)', 0, N'fs_table_name', 9)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (41, 7, N'Store chính', N'NVARCHAR(200)', 0, N'fs_store_c_u_d_s', 10)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (42, 7, N'Script load', N'NVARCHAR(200)', 0, N'fs_script_page_load', 11)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (43, 8, N'ID Page', N'INTEGER', 1, N'id_page', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (44, 8, N'Tên Page', N'NVARCHAR(200)', 0, N'page_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (45, 8, N'Tên form', N'INTEGER', 0, N'id_form', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (46, 8, N'Thứ tự', N'INTEGER', 0, N'page_order', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (47, 8, N'Thuộc nhóm', N'INTEGER', 0, N'id_group_page', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (68, 15, N'Mã danh mục sp', N'INTEGER', 1, N'id_list_prod', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (74, 17, N'Mã banner', N'INTEGER', 1, N'id_banner', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (75, 17, N'Tên banner', N'NVARCHAR(200)', 0, N'banner_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (76, 17, N'Thứ tự', N'INTEGER', 0, N'banner_order', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (77, 17, N'Link khi click', N'NVARCHAR(200)', 0, N'banner_link', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (78, 17, N'Hình banner', N'NVARCHAR(200)', 0, N'banner_img', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (79, 17, N'Hình nhỏ banner', N'NVARCHAR(200)', 0, N'banner_tiny', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (80, 17, N'Status banner', N'INTEGER', 0, N'banner_status', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (81, 14, N'Mã phòng ban', N'INTEGER', 1, N'id_department', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (82, 14, N'Tên phòng ban', N'NVARCHAR(200)', 0, N'department_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (83, 15, N'Tên danh mục', N'NVARCHAR(200)', 0, N'list_prod_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (84, 15, N'Thứ tự', N'INTEGER', 0, N'list_prod_order', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (85, 15, N'Cấp cha', N'INTEGER', 0, N'list_prod_link', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (86, 15, N'Trạng thái', N'INTEGER', 0, N'list_prod_status', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (87, 18, N'Mã sản phẩm', N'INTEGER', 1, N'id_prod', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (88, 18, N'Tên sản phẩm', N'NVARCHAR(200)', 0, N'prod_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (89, 18, N'Thứ tự', N'INTEGER', 0, N'prod_order', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (90, 18, N'Trạng thái', N'INTEGER', 0, N'prod_status', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (91, 18, N'Nội dung', N'NTEXT', 0, N'prod_content', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (92, 19, N'Mã menu', N'INTEGER', 0, N'id_menu', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (95, 19, N'Mã nội dung', N'INTEGER', 1, N'id_content', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (96, 19, N'Nội dung', N'NTEXT', 0, N'content_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (104, 22, N'Mã chức vụ', N'INTEGER', 1, N'id_title', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (105, 22, N'Tên chức vụ', N'NVARCHAR(200)', 0, N'title_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (106, 22, N'Mã phòng ban', N'INTEGER', 0, N'id_department', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (109, 23, N'Mã nhân viên', N'INTEGER', 1, N'id_employer', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (110, 23, N'Họ và Tên ', N'NVARCHAR(200)', 0, N'employer_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (111, 23, N'Mã chức vụ', N'INTEGER', 0, N'id_title', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (113, 23, N'Mã nhân viên code', N'NVARCHAR(200)', 0, N'employer_code', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (114, 23, N'Số điện thoại ext', N'NVARCHAR(200)', 0, N'employer_ext', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (115, 23, N'Trạng thái', N'INTEGER', 0, N'employer_status', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (116, 23, N'Điện thoại di động', N'NVARCHAR(200)', 0, N'employer_mobile', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (127, 26, N'Mã menu', N'INTEGER', 1, N'id_menu', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (128, 26, N'Tên menu', N'NVARCHAR(200)', 0, N'menu_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (129, 26, N'Thứ tự', N'INTEGER', 0, N'menu_order', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (130, 26, N'Tên không dấu', N'NVARCHAR(200)', 0, N'menu_code', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (131, 26, N'Hình banner nhỏ', N'NVARCHAR(200)', 0, N'banner_tiny', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (132, 26, N'Trạng thái', N'INTEGER', 0, N'menu_status', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (141, 29, N'Mã khách hàng', N'INTEGER', 1, N'id_customer', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (142, 29, N'Tên khách hàng', N'NVARCHAR(200)', 0, N'customer_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (143, 29, N'Logo khách hàng', N'NVARCHAR(200)', 0, N'customer_logo', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (144, 29, N'Sản phẩm sử dụng', N'NTEXT', 0, N'customer_prod', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (145, 29, N'Ý kiến khách hàng', N'NTEXT', 0, N'customer_idea', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (146, 29, N'Thứ tự', N'INTEGER', 0, N'customer_order', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (147, 29, N'Trạng thái', N'INTEGER', 0, N'customer_status', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (152, 31, N'Mã hỗ trợ', N'INTEGER', 1, N'id_chater', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (153, 31, N'Họ và Tên ', N'NVARCHAR(200)', 0, N'chater_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (154, 31, N'Email', N'NVARCHAR(200)', 0, N'customer_logo', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (155, 31, N'Điện thoại', N'NVARCHAR(200)', 0, N'customer_prod', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (156, 31, N'Nội dung', N'NTEXT', 0, N'customer_idea', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (157, 31, N'Thứ tự', N'INTEGER', 0, N'customer_order', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (158, 31, N'Trạng thái', N'INTEGER', 0, N'customer_status', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (159, 32, N'Nội dung', N'NTEXT', 0, N'chater_content', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (160, 32, N'Mã hỗ trợ', N'bigint', 0, N'id_chater', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (161, 32, N'Mã nhân viên', N'INTEGER', 0, N'id_employer', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (162, 32, N'Thời gian tạo', N'datetime', 0, N'chater_content_create', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (163, 33, N'Mã nội dung ', N'INTEGER', 1, N'id_content_other', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (164, 33, N'Tiêu đề', N'NVARCHAR(200)', 0, N'content_other_title', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (165, 33, N'Nội dung', N'NTEXT', 0, N'content_other', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (166, 33, N'Mã menu', N'INTEGER', 0, N'id_menu', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (167, 32, N'Mã chát', N'bigint', 1, N'id_up', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (172, 34, N'id employee', N'INTEGER', 1, N'id_employee', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (173, 34, N'employee name', N'NVARCHAR(200)', 0, N'employee_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (174, 34, N'employee address', N'NVARCHAR(200)', 0, N'employee_address', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (175, 36, N'Mã loại nhà cung cấp', N'INTEGER', 1, N'id_store_com_type', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (176, 35, N'Mã nhà cung cấp', N'INTEGER', 1, N'id_store_company', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (177, 37, N'Mã liên hệ nhà cung cấp', N'INTEGER', 1, N'id_store_contact', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (178, 36, N'Tên loại', N'NVARCHAR(200)', 0, N'type_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (191, 35, N'Tên công ty', N'NVARCHAR(200)', 0, N'company_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (192, 35, N'Mã số thuế', N'NVARCHAR(200)', 0, N'company_code', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (193, 35, N'Ðịa chỉ', N'NVARCHAR(200)', 0, N'company_address', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (194, 35, N'Ðiện thoại', N'NVARCHAR(200)', 0, N'company_phone', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (195, 35, N'Email', N'NVARCHAR(200)', 0, N'company_email', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (196, 35, N'Website', N'NVARCHAR(200)', 0, N'company_website', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (197, 35, N'Logo', N'NVARCHAR(200)', 0, N'company_logo', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (198, 35, N'Mô tả', N'NVARCHAR(200)', 0, N'company_des', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (199, 35, N'Loại hình kinh doanh', N'INTEGER', 0, N'id_store_com_type', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (200, 35, N'Fax', N'NVARCHAR(200)', 0, N'company_fax', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (201, 35, N'Tài khoản Bank', N'NVARCHAR(200)', 0, N'company_bank', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (202, 35, N'Ðịa chỉ Bank', N'NVARCHAR(200)', 0, N'company_bank_ads', 8)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (215, 37, N'Tên công ty', N'INTEGER', 0, N'id_store_company', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (216, 37, N'Họ và tên', N'NVARCHAR(200)', 0, N'contact_full_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (217, 37, N'Tài khoản CHAT', N'NVARCHAR(200)', 0, N'contact_chat', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (218, 37, N'Di động', N'NVARCHAR(200)', 0, N'contact_mobile', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (219, 37, N'Chức vụ', N'NVARCHAR(200)', 0, N'contact_title', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (220, 37, N'Nội bộ (Ext)', N'NVARCHAR(200)', 0, N'contact_ext', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (227, 40, N'Mã đơn vị tính', N'INTEGER', 1, N'id_store_unit', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (228, 41, N'Mã loại sản phẩm', N'INTEGER', 1, N'id_store_cate', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (229, 42, N'Mã sản phẩm kho', N'INTEGER', 1, N'id_store_prod', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (230, 43, N'Mã kho hàng', N'INTEGER', 1, N'id_store', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (231, 44, N'Mã ngăn chứa', N'INTEGER', 1, N'id_store_slot', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (232, 45, N'Mã kệ hàng', N'INTEGER', 1, N'id_store_stock', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (233, 46, N'Mã loại hình vận chuyển', N'INTEGER', 1, N'id_store_com_ship', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (234, 40, N'Tên đơn vị', N'NVARCHAR(200)', 0, N'store_unit_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (235, 41, N'Loại sản phẩm', N'NVARCHAR(200)', 0, N'store_cate_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (236, 41, N'Thứ tự', N'INTEGER', 0, N'store_cate_order', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (237, 41, N'Trạng thái', N'INTEGER', 0, N'store_cate_status', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (238, 43, N'Tên kho', N'NVARCHAR(200)', 0, N'store_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (239, 43, N'Ðịa chỉ', N'NVARCHAR(200)', 0, N'store_ads', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (240, 43, N'Ðiện thoại', N'NVARCHAR(200)', 0, N'store_phone', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (241, 43, N'Mô tả', N'NVARCHAR(200)', 0, N'store_des', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (242, 45, N'Mã khách hàng', N'NVARCHAR(200)', 0, N'store_stock_code', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (243, 45, N'Trạng thái', N'INTEGER', 0, N'store_stock_status', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (244, 45, N'Thuộc kho', N'INTEGER', 0, N'store_stock_store', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (245, 47, N'Mã phiếu xuất', N'INTEGER', 1, N'id_store_exp', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (246, 48, N'Mã phiếu nhập', N'INTEGER', 1, N'id_store_imp', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (247, 44, N'Kho hàng', N'INTEGER', 0, N'id_store', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (248, 44, N'Mã ngăn chứa', N'NVARCHAR(200)', 0, N'store_slot_code', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (249, 44, N'Kệ hàng', N'INTEGER', 0, N'id_store_stock', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (250, 44, N'Số lượng', N'INTEGER', 0, N'store_slot_contain', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (251, 42, N'Tên sản phẩm', N'NVARCHAR(200)', 0, N'store_prod_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (252, 42, N'Đơn vị tính', N'INTEGER', 0, N'id_store_unit', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (253, 42, N'Hình sản phẩm', N'NVARCHAR(200)', 0, N'store_prod_img', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (254, 42, N'Mã sản phẩm', N'NVARCHAR(200)', 0, N'store_prod_code', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (258, 42, N'Nhóm sản phẩm', N'INTEGER', 0, N'id_store_cate', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (260, 49, N'Mã tài khoản', N'INTEGER', 1, N'id_user', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (261, 49, N'Họ', N'NVARCHAR(200)', 0, N'user_first_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (262, 49, N'Tên', N'NVARCHAR(200)', 0, N'user_last_name', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (263, 49, N'Họ và Tên', N'NVARCHAR(200)', 0, N'user_full_name', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (264, 49, N'Email', N'NVARCHAR(200)', 0, N'user_email', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (265, 49, N'Trạng thái', N'NVARCHAR(200)', 0, N'user_status', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (266, 49, N'Mật mã', N'NVARCHAR(200)', 0, N'user_pass', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (267, 50, N'Mã nhóm trang', N'INTEGER', 1, N'id_group_page', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (268, 50, N'Tên nhóm trang', N'NVARCHAR(200)', 0, N'group_page_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (269, 50, N'Trạng thái', N'INTEGER', 0, N'group_page_status', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (270, 50, N'Thứ tự', N'INTEGER', 0, N'group_page_order', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (271, 50, N'Icon', N'NVARCHAR(200)', 0, N'group_page_icon', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (272, 51, N'Mã nhóm quyền', N'INTEGER', 1, N'role_group_page_id', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (273, 51, N'Tên nhóm quyền', N'NVARCHAR(200)', 0, N'role_group_page_name', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (274, 51, N'Ghi chú', N'NTEXT', 0, N'role_group_page_des', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (275, 51, N'Người cập nhập', N'INTEGER', 0, N'update_by', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (276, 51, N'Quyền xóa', N'INTEGER', 0, N'role_page_del', 8)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (277, 51, N'Người tạo', N'INTEGER', 0, N'create_by', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (278, 51, N'Công ty', N'INTEGER', 0, N'id_company', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (279, 51, N'Trạng thái', N'INTEGER', 0, N'role_group_status', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (280, 51, N'Quyền xem', N'INTEGER', 0, N'role_page_view', 9)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (281, 51, N'Quyền tạo', N'INTEGER', 0, N'role_page_create', 10)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (282, 52, N'Mã tài khoản nhóm quyền', N'INTEGER', 1, N'id_group_user_detail', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (283, 52, N'Nhóm quyền', N'INTEGER', 0, N'role_group_page_id', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (284, 52, N'Tài khoản', N'INTEGER', 0, N'user_id', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (285, 52, N'Công ty', N'INTEGER', 0, N'id_company', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (286, 53, N'Mã page nhóm quyền', N'INTEGER', 1, N'id_group_page_detail', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (287, 53, N'Nhóm quyền', N'INTEGER', 0, N'role_group_page_id', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (288, 53, N'Page', N'INTEGER', 0, N'id_page', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (289, 53, N'Công ty', N'INTEGER', 0, N'id_company', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (290, 54, N'Mã quyền kết xuất', N'INTEGER', 1, N'id_user_role_page', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (291, 54, N'Page', N'INTEGER', 0, N'id_page', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (292, 54, N'Tài khoản', N'INTEGER', 0, N'user_id', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (293, 54, N'Quyền xem', N'INTEGER', 0, N'role_page_view', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (294, 54, N'Quyền tạo', N'INTEGER', 0, N'role_page_create', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (295, 54, N'Quyền xóa', N'INTEGER', 0, N'role_page_del', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (296, 54, N'Quyền cài đặt', N'INTEGER', 0, N'role_page_config', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (297, 54, N'Quyền thiết lập quyền', N'INTEGER', 0, N'role_page_role', 8)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (298, 54, N'Công ty', N'INTEGER', 0, N'id_company', 9)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (299, 47, N'Tên phiếu', N'NVARCHAR(200)', 0, N'store_exp_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (300, 47, N'Sản phẩm đã chọn', N'NVARCHAR(200)', 0, N'store_exp_list_data', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (301, 37, N'Email', N'NVARCHAR(200)', 0, N'contact_email', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (303, 47, N'Người xuất phiếu', N'INTEGER', 0, N'store_exp_creater', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (304, 47, N'Người kiểm hàng', N'INTEGER', 0, N'store_exp_checker', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (307, 47, N'Phí vận chuyển', N'INTEGER', 0, N'store_exp_cost', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (308, 48, N'Tên phiếu', N'NVARCHAR(200)', 0, N'store_imp_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (309, 48, N'Người kiểm hàng', N'INTEGER', 0, N'store_imp_checker', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (310, 48, N'Người lập phiếu', N'INTEGER', 0, N'store_imp_creater', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (311, 55, N'Mã sản phẩm SKU', N'INTEGER', 1, N'id_store_prod_sku', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (312, 55, N'Sản phẩm', N'INTEGER', 0, N'id_store_prod', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (313, 55, N'Số lượng', N'INTEGER', 0, N'sku_count', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (314, 55, N'Sản phẩm SKU', N'INTEGER', 0, N'id_store_prod_sku', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (315, 55, N'Sản phẩm SKU', N'INTEGER', 0, N'id_prod_sku', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (316, 48, N'List Data', N'NVARCHAR(200)', 0, N'store_imp_list_data', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (317, 48, N'Kho hàng', N'INTEGER', 0, N'store_imp_store', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (318, 41, N'URL Key', N'NVARCHAR(200)', 0, N'store_cate_key', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (319, 41, N'Hình mô tả', N'NVARCHAR(200)', 0, N'store_cate_img', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (320, 56, N'Mã Menu', N'INTEGER', 1, N'id_menu', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (321, 56, N'Tên Menu', N'NVARCHAR(200)', 0, N'menu_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (322, 56, N'Từ khóa url', N'NVARCHAR(200)', 0, N'menu_key_url', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (323, 56, N'Thứ tự', N'INTEGER', 0, N'menu_order', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (324, 57, N'Mã menu sản phẩm', N'INTEGER', 1, N'id_menu_products', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (325, 57, N'Tên danh mục sản phẩm', N'NVARCHAR(200)', 0, N'menu_products_name', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (326, 57, N'Từ khóa danh mục', N'NVARCHAR(200)', 0, N'menu_products_key', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (327, 57, N'Thứ tự', N'INTEGER', 0, N'menu_products_order', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (328, 58, N'Mã banner', N'INTEGER', 1, N'id_banner', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (329, 58, N'Tên banner', N'NVARCHAR(200)', 0, N'name_banner', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (330, 58, N'Link khi lick', N'NVARCHAR(200)', 0, N'links_banner', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (331, 58, N'Thứ tự', N'INTEGER', 0, N'order_banner', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (332, 58, N'Image', N'NVARCHAR(200)', 0, N'image_banner', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (333, 58, N'Status banner', N'INTEGER', 0, N'status_banner', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (334, 59, N'Mã sản phẩm', N'INTEGER', 1, N'id_products', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (335, 57, N'Hình', N'NVARCHAR(200)', 0, N'img_products', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (336, 56, N'Trạng thái', N'INTEGER', 0, N'menu_status', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (338, 57, N'Trạng thái', N'NVARCHAR(200)', 0, N'menu_status', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (343, 57, N'Tóm tắt', N'NVARCHAR(200)', 0, N'menu_tomtat', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (344, 59, N'Tên sản phẩm', N'NVARCHAR(200)', 0, N'name_products', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (418, 59, N'Loại sản phẩm', N'INTEGER', 0, N'type_products', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (420, 59, N'Tóm tắt', N'NVARCHAR(200)', 0, N'tomtat_products', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (421, 59, N'Nội dung', N'NVARCHAR(200)', 0, N'noidung_products', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (422, 59, N'Giá Tiền', N'NVARCHAR(200)', 0, N'price_products', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (423, 59, N'Giảm giá', N'NVARCHAR(200)', 0, N'giamgia_products', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (424, 59, N'Giá sau giảm', N'NVARCHAR(200)', 0, N'giasaugiam_products', 7)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (425, 59, N'Trạng thái', N'INTEGER', 0, N'status_products', 8)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (426, 59, N'Hình chính', N'NVARCHAR(200)', 0, N'img_main_products', 9)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (427, 59, N'Thứ tự', N'INTEGER', 0, N'order_products', 10)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (428, 59, N'Hình 1', N'NVARCHAR(200)', 0, N'img1_products', 10)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (429, 59, N'Hình 2', N'NVARCHAR(200)', 0, N'img2_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (430, 59, N'Hình 3', N'NVARCHAR(200)', 0, N'img3_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (431, 59, N'Hình 4', N'NVARCHAR(200)', 0, N'img4_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (432, 60, N'Mã comment', N'INTEGER', 1, N'id_comment', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (433, 60, N'Nội dung comment', N'NVARCHAR(200)', 0, N'noidung_comment', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (434, 60, N'Mã sản phẩm', N'NVARCHAR(200)', 0, N'id_products', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (435, 60, N'Số điện thoại', N'NVARCHAR(200)', 0, N'phone', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (436, 60, N'Họ và tên', N'NVARCHAR(200)', 0, N'name_full', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (437, 60, N'Email', N'NVARCHAR(200)', 0, N'email', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (438, 59, N'Sản phẩm tiêu biểu', N'NVARCHAR(200)', 0, N'tieubieu_products', 10)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (439, 61, N'Mã quảng cáo', N'INTEGER', 1, N'id_advertising', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (440, 61, N'Tên quảng cáo', N'NVARCHAR(200)', 0, N'name_advertising', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (441, 61, N'Links', N'NVARCHAR(200)', 0, N'links_advertising', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (442, 61, N'Trạng thái', N'NVARCHAR(200)', 0, N'status_advertising', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (443, 61, N'Thứ tự', N'INTEGER', 0, N'order_advertising', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (444, 61, N'Hình ', N'NVARCHAR(200)', 0, N'img_advertising', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (445, 56, N'Links', N'NVARCHAR(200)', 0, N'menu_links', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (446, 57, N'Nội dung', N'NVARCHAR(200)', 0, N'menu_noidung', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (447, 62, N'Mã menu top', N'INTEGER', 1, N'id_menu_top', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (448, 62, N'Tên menu top', N'NVARCHAR(200)', 0, N'name_menu_top', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (449, 62, N'Links', N'NVARCHAR(200)', 0, N'links_menu_top', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (450, 62, N'Từ khóa links', N'NVARCHAR(200)', 0, N'key_links_menu_top', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (451, 62, N'Trạng thái', N'INTEGER', 0, N'status_menu_top', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (452, 62, N'Thứ tự', N'INTEGER', 0, N'order_menu_top', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (453, 63, N'Mã menu sản phẩm', N'INTEGER', 1, N'id_menu_products', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (454, 63, N'Tên sản phẩm', N'NVARCHAR(200)', 0, N'name_menu_products', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (455, 63, N'Thứ tự', N'INTEGER', 0, N'order_menu_products', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (456, 63, N'Trạng thái', N'INTEGER', 0, N'status_menu_products', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (457, 63, N'Hình', N'NVARCHAR(200)', 0, N'img_menu_products', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (458, 63, N'Tóm tắt', N'NVARCHAR(200)', 0, N'tomtat_menu_products', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (459, 64, N'Mã quảng cáo', N'INTEGER', 1, N'id_quangcao', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (481, 64, N'Tên quảng cáo', N'NVARCHAR(200)', 0, N'name_quangcao', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (484, 64, N'Links', N'NVARCHAR(200)', 0, N'links_quangcao', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (485, 64, N'Trạng thái', N'NVARCHAR(200)', 0, N'status_quangcao', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (486, 64, N'Thứ tự', N'INTEGER', 0, N'order_quangcao', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (487, 64, N'Hình', N'NVARCHAR(200)', 0, N'img_quangcao', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (488, 64, N'Loại quảng cáo', N'INTEGER', 0, N'type_quangcao', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (489, 65, N'Mã Sản phẩm', N'INTEGER', 1, N'id_products_tr', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (492, 65, N'Trạng thái', N'INTEGER', 0, N'status_products_tr', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (493, 65, N'Thứ tự', N'INTEGER', 0, N'order_products_tr', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (494, 65, N'Tên sản phẩm', N'NVARCHAR(200)', 0, N'name_product_tr', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (495, 65, N'Loại sản phẩm', N'INTEGER', 0, N'type_products_tr', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (505, 65, N'Hình', N'NVARCHAR(200)', 0, N'img_main_products_tr', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (513, 65, N'Hình 1', N'NVARCHAR(200)', 0, N'img1_main_products_tr', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (516, 65, N'Sản phẩm tiêu biểu', N'INTEGER', 0, N'Specials', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (517, 65, N'Giá', N'NVARCHAR(200)', 0, N'price_products', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (518, 65, N'Tóm tắt ', N'NTEXT', 0, N'tomtat_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (521, 65, N'Nội dung', N'NTEXT', 0, N'noidung_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (522, 65, N'Hình nhỏ', N'NVARCHAR(200)', 0, N'img_small_products', 6)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (523, 65, N'Hình 2', N'NVARCHAR(200)', 0, N'img2_main_products_tr', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (524, 65, N'Hình 3', N'NVARCHAR(200)', 0, N'img3_main_products_tr', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (525, 65, N'Giảm giá còn', N'NVARCHAR(200)', 0, N'price_products1', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (528, 65, N'Phần trăm', N'NVARCHAR(200)', 0, N'phantram_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (529, 66, N'Col Menu PM', N'INTEGER', 1, N'ID_menu_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (530, 67, N'Col Silde PM', N'INTEGER', 1, N'ID_silde_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (531, 68, N'Col New PM', N'INTEGER', 1, N'ID_new_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (532, 66, N'Tên Menu', N'NVARCHAR(200)', 0, N'Name_menu_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (533, 66, N'Link Menu', N'NVARCHAR(200)', 0, N'Link_menu_PM', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (534, 66, N'Loại Menu', N'INTEGER', 0, N'Type_menu_PM', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (535, 66, N'Trạng thái Menu', N'INTEGER', 0, N'Status_menu_PM', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (536, 66, N'Thứ tự', N'INTEGER', 0, N'Order_menu_PM', 5)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (537, 67, N'Tên Silde PM', N'NVARCHAR(200)', 0, N'Name_silde_PM', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (538, 67, N'Hình', N'NVARCHAR(200)', 0, N'Img_silde_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (539, 67, N'Trạng Thái ', N'INTEGER', 0, N'Status_silde_PM', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (540, 67, N'Thứ tự', N'INTEGER', 0, N'Order_silde_PM', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (541, 68, N'Tiêu đề', N'NVARCHAR(200)', 0, N'Title_new_PM', 2)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (542, 68, N'Trạng thái', N'INTEGER', 0, N'Status_new_PM', 3)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (543, 68, N'Mô tả ngắn', N'NTEXT', 0, N'Shortdescription_new_PM', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (544, 68, N'Mô tả', N'NTEXT', 0, N'Description', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (545, 68, N'Hình', N'NVARCHAR(200)', 0, N'Img_new_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (546, 68, N'Thứ tự', N'INTEGER', 0, N'Order_new_PM', 4)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (547, 68, N'Hình 1', N'NVARCHAR(200)', 0, N'Img1_new_PM', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (548, 68, N'Hình 1', N'NVARCHAR(200)', 0, N'Img1_new_PM_', 0)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (549, 69, N'col ID type new PM', N'INTEGER', 1, N'ID_type_new_PM', 1)

GO
INSERT INTO [dbo].[sys_mapped_col] ([id_mapped_col], [id_mapped], [mapped_col_name], [mapped_col_type], [mapped_col_key], [mapped_col_code], [mapped_col_order])
	VALUES (550, 68, N'Loại tin', N'INTEGER', 0, N'Type_new_PM', 5)

GO
SET IDENTITY_INSERT [dbo].[sys_mapped_col] OFF
GO

--Table dbo.sys_mapped_form

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_form] (
	[ctr_client_id] [nvarchar](50) NULL,
	[id_form] [int] NULL,
	[mapped_col_code] [nvarchar](200) NULL,
	[view_selected] [int] NULL,
	[ctr_name] [nvarchar](200) NULL);
GO

INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 3, N'Id', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 3, N'from_name', 1, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 3, N'from_orther', 2, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 4, N'Id', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txtFrom', 4, N'from_name', 1, N'Tên From')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_orther', 4, N'from_orther', 0, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cbb_fromtype', 4, N'from_type', 6, N'Loại From')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 4, N'from_level', 0, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_don_vi_tinh', 55, N'id_store_unit', 1, N'Đơn vị tính')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_don_vi_tinh', 55, N'store_unit_name', 2, N'Tên đơn vị')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_mapped', 11, N'id_mapped', 1, N'Tên table')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mapped_name', 11, N'mapped_name', 1, N'Name table')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mapped_code', 11, N'mapped_code', 2, N'Code table')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 53, N'id_store_contact', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_email_nv', 53, N'contact_email', 7, N'Email')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_company', 53, N'id_store_company', 1, N'Tên công ty')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ho_va_ten', 53, N'contact_full_name', 2, N'Họ và tên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_account_chat', 53, N'contact_chat', 3, N'Tài khoản CHAT')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mobile', 53, N'contact_mobile', 4, N'Di động')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 22, N'id_list_prod', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_list_prod_name', 22, N'list_prod_name', 1, N'Tên danh mục')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_list_prod_order', 22, N'list_prod_order', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_list_prod_link', 22, N'list_prod_link', 3, N'Cấp cha')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_list_prod_status', 22, N'list_prod_status', 4, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 21, N'id_banner', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_banner_name', 21, N'banner_name', 1, N'Tên banner')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_banner_order', 21, N'banner_order', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_banner_link', 21, N'banner_link', 3, N'Link khi click')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_banner_img', 21, N'banner_img', 4, N'Hình banner')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_banner_tiny', 21, N'banner_tiny', 5, N'Hình banner nhỏ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_banner_status', 21, N'banner_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chuc_vu', 53, N'contact_title', 5, N'Chức vụ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_ke_hang', 61, N'id_store_stock', 0, N'Kệ hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ma_ke_hang', 61, N'store_stock_code', 1, N'Mã kệ hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 15, N'id_department', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name_department', 15, N'department_name', 1, N'Phòng ban')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_title', 16, N'id_title', 0, N'Chức Vụ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_name_department', 16, N'id_department', 1, N'Phòng ban')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name_title', 16, N'title_name', 2, N'Name Title')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 17, N'id_employee', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_title', 17, N'id_title', 1, N'Chức Vụ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name', 17, N'employee_name', 2, N'Name Employee')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_address', 17, N'employee_address', 3, N'Address')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mobile', 17, N'employee_mobile', 4, N'Mobile')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 18, N'id_ticket', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_employee', 18, N'id_employee', 1, N'Name Employee')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_fromdate', 18, N'ticket_fromdate', 2, N'From Date')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_todate', 18, N'ticket_todate', 3, N'To Date')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_money', 18, N'ticket_money', 4, N'Money')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_add', 18, N'ticket_add', 5, N'Add')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_note', 18, N'ticket_note', 6, N'Note')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 30, N'id_prod', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_prod_name', 30, N'prod_name', 1, N'Tên sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_prod_order', 30, N'prod_order', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_prod_status', 30, N'prod_status', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_prod_content', 30, N'prod_content', 4, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 35, N'id_employer', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_employer_name', 35, N'employer_name', 1, N'Họ và Tên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_title', 35, N'id_title', 2, N'Chức Vụ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_employer_code', 35, N'employer_code', 3, N'Mã nhân viên code')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_employer_ext', 35, N'employer_ext', 4, N'Số điện thoại ext')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_employer_mobile', 35, N'employer_mobile', 5, N'Điện thoại di động')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_employer_status', 35, N'employer_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 36, N'id_ chater', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chater_name', 36, N'chater_name', 1, N'Họ và Tên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_logo', 36, N'customer_logo', 2, N'Logo khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_prod', 36, N'customer_prod', 3, N'Sản phẩm sử dụng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_idea', 36, N'customer_idea', 4, N'Ý kiến khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_order', 36, N'customer_order', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_status', 36, N'customer_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 37, N'id_ chater', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_id_employer', 37, N'id_employer', 1, N'Mã nhân viên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chater_content', 37, N'chater_content', 2, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chater_content_create', 37, N'chater_content_create', 3, N'Thời gian tạo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 33, N'id_ customer', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_name', 33, N'customer_name', 1, N'Tên khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_logo', 33, N'customer_logo', 2, N'Logo khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_prod', 33, N'customer_prod', 3, N'Sản phẩm sử dụng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_idea', 33, N'customer_idea', 4, N'Ý kiến khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_order', 33, N'customer_order', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_status', 33, N'customer_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 39, N'id_ customer', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_name', 39, N'customer_name', 1, N'Tên khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_logo', 39, N'customer_logo', 2, N'Logo khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_prod', 39, N'customer_prod', 3, N'Sản phẩm sử dụng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_idea', 39, N'customer_idea', 4, N'Ý kiến khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_order', 39, N'customer_order', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_status', 39, N'customer_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 42, N'id_menu', 0, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_menu_name', 42, N'menu_name', 1, N'Tên menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 31, N'id_content', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_name', 31, N'content_name', 1, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 31, N'id_menu', 2, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 32, N'id_content_other', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other_title', 32, N'content_other_title', 1, N'Tiêu đề')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other', 32, N'content_other', 2, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 32, N'id_menu', 3, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_department', 29, N'id_department', 0, N'Mã phòng ban')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_department_name', 29, N'department_name', 1, N'Phòng ban')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_title', 34, N'id_title', 0, N'Chức Vụ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_title_name', 34, N'title_name', 1, N'Tên chức vụ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_department', 34, N'id_department', 2, N'Mã phòng ban')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_menu_order', 42, N'menu_order', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_menu_code', 42, N'menu_code', 3, N'Tên không dấu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_banner_tiny', 42, N'banner_tiny', 4, N'Hình banner nhỏ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_menu_status', 42, N'menu_status', 5, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 43, N'id_content_other', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other_title', 43, N'content_other_title', 1, N'Tiêu đề')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other', 43, N'content_other', 2, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 43, N'id_menu', 3, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 44, N'id_content_other', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other_title', 44, N'content_other_title', 1, N'Tiêu đề')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other', 44, N'content_other', 2, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 44, N'id_menu', 3, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 46, N'id_content_other', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other_title', 46, N'content_other_title', 1, N'Tiêu đề')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other', 46, N'content_other', 2, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 46, N'id_menu', 3, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 47, N'id_chater', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chater_name', 47, N'chater_name', 1, N'Họ và Tên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_logo', 47, N'customer_logo', 2, N'Logo khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_prod', 47, N'customer_prod', 3, N'Sản phẩm sử dụng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_idea', 47, N'customer_idea', 4, N'Ý kiến khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_order', 47, N'customer_order', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_status', 47, N'customer_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 48, N'id_up', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_chater', 48, N'id_chater', 1, N'Mã hỗ trợ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_employer', 48, N'id_employer', 2, N'Mã nhân viên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chater_content_note', 48, N'chater_content', 3, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_chater_content_create', 48, N'chater_content_create', 4, N'Thời gian tạo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 49, N'id_content_other', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_content_other_title', 49, N'content_other_title', 1, N'Tiêu đề')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'textarea1', 49, N'content_other', 2, N'Tên textarea')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 49, N'id_menu', 3, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_form_id', 13, N'id_form', 2, N'Tên form')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_form_name', 13, N'form_name', 1, N'Tên Form')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'thuoc_du_an', 13, N'id_project', 0, N'Thuộc dự án')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_form_grid_view', 13, N'form_grid_view', 2, N'Mã cấu hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 13, N'form_name_us', 0, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 13, N'form_view_store', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 13, N'form_grid_chart', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_form_grid_form', 13, N'form_grid_form', 6, N'Grid Form')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_clock_database', 13, N'form_db', 0, N'Khóa DB')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_ban_chinh', 13, N'fs_table_name', 3, N'Bản chính')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_fs_store_c_u_d_s', 13, N'fs_store_c_u_d_s', 4, N'Store tiến trình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_fs_script_page_load', 13, N'fs_script_page_load', 5, N'Script Page Load')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_form_id', 14, N'id_form', 2, N'Tên form')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_page_order', 14, N'page_order', 3, N'Order Page')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_thuoc_nhom_menu', 14, N'id_group_page', 0, N'Thuộc nhóm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 70, N'id_store_prod_sku', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_san_pham', 70, N'id_store_prod', 2, N'Sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_so_luong', 70, N'sku_count', 3, N'Số lượng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_san_pham_SKU', 70, N'id_prod_sku', 1, N'Sản phẩm SKU')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 63, N'id_store_imp', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'list_san_pham', 63, N'store_imp_list_data', 0, N'Sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 12, N'id_mapped_col', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_mapped', 12, N'id_mapped', 1, N'Tên table')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mapped_col_name', 12, N'mapped_col_name', 2, N'Name Col')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_mapped_col_type', 12, N'mapped_col_type', 3, N'Type Col')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_mapped_col_key', 12, N'mapped_col_key', 4, N'Key Col')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mapped_col_code', 12, N'mapped_col_code', 5, N'Code Col')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_mapped_col_order', 12, N'mapped_col_order', 6, N'Order Col')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 52, N'id_store_com_type', 1, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_type', 52, N'type_name', 2, N'Tên loại')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 51, N'id_store_company', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_email', 51, N'company_email', 0, N'Email')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_website', 51, N'company_website', 0, N'Website')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_des', 51, N'company_des', 0, N'Mô tả')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_store_com_type', 51, N'id_store_com_type', 0, N'Loại hình công ty')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_name', 51, N'company_name', 2, N'Tên công ty')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_code', 51, N'company_code', 3, N'Mã số thuế')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_address', 51, N'company_address', 4, N'Địa chỉ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_phone', 51, N'company_phone', 5, N'Điện thoại')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'file_company_logo', 51, N'company_logo', 1, N'Hình logo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_fax', 51, N'company_fax', 6, N'Fax')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_bank', 51, N'company_bank', 7, N'Mã tài khoản Bank')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_company_bank_ads', 51, N'company_bank_ads', 8, N'Địa chỉ đăng ký')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_thuoc_kho', 61, N'store_stock_store', 3, N'Thuộc kho')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_noi_bo_ext', 53, N'contact_ext', 6, N'Nội bộ (Ext)')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_type_table', 11, N'type_other', 3, N'Loại')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 68, N'id_group_page_detail', 0, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_employee', 50, N'id_employee', 0, N'Name Employee')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'textarea1', 50, N'employee_name', 1, N'Tên textarea')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'test1', 50, N'employee_address', 2, N'test1')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_nhom_quyen', 68, N'role_group_page_id', 2, N'Nhóm quyền')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_trang', 68, N'id_page', 3, N'Trang')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_cong_ty', 68, N'id_company', 1, N'Công ty')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_phieu_nhap', 63, N'store_imp_name', 1, N'Tên phiếu nhập')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_nguoi_kiem_hang', 63, N'store_imp_checker', 2, N'Người kiểm hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_id_menu', 72, N'id_menu', 2, N'Mã menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_menu_name', 72, N'menu_name', 1, N'Tên menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_tu_khoa_url', 72, N'menu_key_url', 2, N'Từ khóa url *')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_thu_tu', 72, N'menu_order', 3, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 57, N'id_store', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ten_kho', 57, N'store_name', 1, N'Tên kho')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_dia_chi', 57, N'store_ads', 2, N'Địa chỉ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_dien_thoai', 57, N'store_phone', 3, N'Điện thoại')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mo_ta', 57, N'store_des', 4, N'Mô tả')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_nguoi_lap_phieu', 63, N'store_imp_creater', 3, N'Người lập phiếu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cbb_khohang', 63, N'store_imp_store', 0, N'Kho hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 75, N'id_products', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_hinh2', 75, N'img2_products', 0, N'Hình 2')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 64, N'id_user', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ho', 64, N'user_first_name', 0, N'Họ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ten', 64, N'user_last_name', 0, N'Tên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ho_va_ten', 64, N'user_full_name', 1, N'Họ và Tên')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_email', 64, N'user_email', 2, N'Email')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 59, N'id_store_prod', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ten_san_pham', 59, N'store_prod_name', 4, N'Tên sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'file_hinh_san_pham', 59, N'store_prod_img', 1, N'Hình sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ma_san_pham', 59, N'store_prod_code', 3, N'Mã sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_don_vi_tinh', 59, N'id_store_unit', 5, N'Đơn vị tính')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_nhom_san_pham', 59, N'id_store_cate', 2, N'Nhóm sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_trang_thai', 64, N'user_status', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_mat_ma', 64, N'user_pass', 4, N'Mật mã')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_thuoc_nhom_menu', 65, N'id_group_page', 0, N'Thuộc nhóm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ten_nhom_page', 65, N'group_page_name', 1, N'Tên nhóm page')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_trang_thai', 65, N'group_page_status', 2, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_thu_tu', 65, N'group_page_order', 4, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_hinh_icon', 65, N'group_page_icon', 3, N'Hình icon')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 69, N'id_user_role_page', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_page', 69, N'id_page', 2, N'Page')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_tai_khoan', 69, N'user_id', 3, N'Tài khoản')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_quyen_xem', 69, N'role_page_view', 4, N'Quyền xem')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_quyen_tao', 69, N'role_page_create', 5, N'Quyền tạo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_quyen_xoa', 69, N'role_page_del', 6, N'Quyền xóa')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_quyen_cau_hinh', 69, N'role_page_config', 7, N'Quyền cấu hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_quyen_phan_quyen', 69, N'role_page_role', 8, N'Quyền phân quyền')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_cong_ty', 69, N'id_company', 1, N'Công ty')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_hinh3', 75, N'img3_products', 0, N'Hình 3')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_hinh4', 75, N'img4_products', 0, N'Hình 4')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 74, N'id_banner', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_banner_name', 74, N'name_banner', 1, N'Tên banner*')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 74, N'links_banner', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_banner_order', 74, N'order_banner', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ul_image', 74, N'image_banner', 3, N'Upload Image ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_banner', 74, N'status_banner', 4, N'Status banner')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_products_name', 75, N'name_products', 1, N'Tên sản phẩm*')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_products_type', 75, N'type_products', 2, N'Loại sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_menu', 72, N'menu_status', 4, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_tomtat', 75, N'tomtat_products', 3, N'Tóm tắt')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_noidung', 75, N'noidung_products', 0, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_price_products', 75, N'price_products', 4, N'Giá tiền')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_giam_gia', 75, N'giamgia_products', 5, N'Giảm giá')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_giasaukhigiam', 75, N'giasaugiam_products', 6, N'Giá sau khi giảm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_product', 75, N'status_products', 7, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_img_main', 75, N'img_main_products', 8, N'Hình chính')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_order_product', 75, N'order_products', 9, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_img_small', 75, N'img1_products', 0, N'Hình 1')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_sanphamtieubieu', 75, N'tieubieu_products', 10, N'Sản phẩm tiêu biểu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_links', 72, N'menu_links', 5, N'Links')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 78, N'id_menu_top', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_menu_top', 78, N'name_menu_top', 1, N'Tên Menu Top')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 45, N'id_customer', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_name', 45, N'customer_name', 1, N'Tên khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_logo', 45, N'customer_logo', 2, N'Logo khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_prod', 45, N'customer_prod', 3, N'Sản phẩm sử dụng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_customer_idea', 45, N'customer_idea', 4, N'Ý kiến khách hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_order', 45, N'customer_order', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_customer_status', 45, N'customer_status', 6, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_page', 14, N'id_page', 2, N'Page')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_links_menu_top', 78, N'links_menu_top', 2, N'Links')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_tu_khoa_link', 78, N'key_links_menu_top', 3, N'Từ khóa links')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_order', 78, N'order_menu_top', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_trang_thai', 61, N'store_stock_status', 2, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 80, N'id_quangcao', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name_quangcao', 80, N'name_quangcao', 1, N'Tên quảng cáo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_link_quangcao', 80, N'links_quangcao', 2, N'Links')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_quangcao', 80, N'status_quangcao', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_order', 80, N'order_quangcao', 4, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_img_quangcao', 80, N'img_quangcao', 5, N'Hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_type_quangcao', 80, N'type_quangcao', 6, N'Loại quảng cáo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 76, N'id_comment', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_noidung', 76, N'noidung_comment', 1, N'Nội dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 76, N'id_products', 5, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 76, N'phone', 2, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 76, N'name_full', 3, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 76, N'email', 4, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_page_name', 14, N'page_name', 1, N'Name Page')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 60, N'id_store_slot', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_kho_hang', 60, N'id_store', 1, N'Kho hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_ke_hang', 60, N'id_store_stock', 2, N'Kệ hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ma_ngan_chua', 60, N'store_slot_code', 3, N'Mã ngăn chứa')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_so_luong', 60, N'store_slot_contain', 4, N'Số lượng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 60, N'id_store_prod', 0, N'Chưa chọn control')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 62, N'id_store_exp', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'list_san_pham', 62, N'store_exp_list_data', 0, N'Sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_ten_phieu', 62, N'store_exp_name', 1, N'Tên phiếu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_nguoi_duyet', 62, N'store_exp_creater', 2, N'Người xuất phiếu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_kiem_tra_xuat', 62, N'store_exp_checker', 3, N'Người kiểm hàng')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_phi_van_chuyen', 62, N'store_exp_cost', 0, N'Phí vận chuyển')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_nhom_san_pham', 56, N'id_store_cate', 0, N'Nhóm sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_url_loai_san_pham', 56, N'store_cate_key', 0, N'URL loại sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_loai_san_pham', 56, N'store_cate_name', 1, N'Loại sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_thu_tu', 56, N'store_cate_order', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_trang_thai', 56, N'store_cate_status', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'file_hinh_mo_ta', 56, N'store_cate_img', 4, N'Hình mô tả')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_menu_top', 78, N'status_menu_top', 4, N'Trạng Thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 77, N'id_advertising', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_qc_name', 77, N'name_advertising', 1, N'Tên quảng cáo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_qc_links', 77, N'links_advertising', 2, N'Links')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_qc_status', 77, N'status_advertising', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_qc_order', 77, N'order_advertising', 4, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_qc_img', 77, N'img_advertising', 5, N'Hình quảng cáo')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 73, N'id_menu_products', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_menu_products_name', 73, N'menu_products_name', 1, N'Tên danh mục sản phẩm*')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_menu_key', 73, N'menu_products_key', 2, N'Từ khóa danh mục*')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_order', 73, N'menu_products_order', 3, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'fu_hinh', 73, N'img_products', 4, N'Hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'cb_menu_status', 73, N'menu_status', 5, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_tomtat', 73, N'menu_tomtat', 0, N'Tóm tắt')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 73, N'menu_noidung', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 79, N'id_menu_products', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name_products', 79, N'name_menu_products', 1, N'Tên menu sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_order_menu_products', 79, N'order_menu_products', 2, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_menu_products', 79, N'status_menu_products', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ul_img_products', 79, N'img_menu_products', 4, N'Hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_tomtat', 79, N'tomtat_menu_products', 5, N'Tóm tắt')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 81, N'id_products_tr', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_img_main_products', 81, N'img_main_products_tr', 0, N'Hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_hinh1_products', 81, N'img1_main_products_tr', 0, N'Hình 1')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_sanphamtieubieu', 81, N'Specials', 0, N'Sản phẩm tiêu biểu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_tomtat_products', 81, N'tomtat_products', 0, N'Tóm tắt')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_noidung_products', 81, N'noidung_products', 0, N'Nội Dung')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_hinh2_products', 81, N'img2_main_products_tr', 0, N'Hình 2')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_hinh3_products', 81, N'img3_main_products_tr', 0, N'Hình 3')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_giamgia', 81, N'price_products1', 0, N'Giảm giá còn')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_giam_phantram', 81, N'phantram_products', 0, N'Giảm %')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_products', 81, N'name_product_tr', 1, N'Tên sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_type_products', 81, N'type_products_tr', 2, N'Loại sản phẩm')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_status_products', 81, N'status_products_tr', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'dr_order_products', 81, N'order_products_tr', 0, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_price', 81, N'price_products', 4, N'Giá')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_small_img_products', 81, N'img_small_products', 5, N'Hình nhỏ')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 82, N'ID_menu_PM', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name_menu_PM', 82, N'Name_menu_PM', 1, N'Tên Menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_link_menu_PM', 82, N'Link_menu_PM', 2, N'Link')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_type_menu_PM', 82, N'Type_menu_PM', 3, N'Loại Menu')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_status_menu_PM', 82, N'Status_menu_PM', 4, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_order_menu_PM', 82, N'Order_menu_PM', 5, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 84, N'ID_silde_PM', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_name_silde_PM', 84, N'Name_silde_PM', 2, N'Tên Silde')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_img_silde_PM', 84, N'Img_silde_PM', 1, N'Hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_status_silde_PM', 84, N'Status_silde_PM', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_order_silde_PM', 84, N'Order_silde_PM', 4, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 83, N'ID_new_PM', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_shortdescription_new_PM', 83, N'Shortdescription_new_PM', 0, N'Mô tả ngắn')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_description_new_PM', 83, N'Description', 0, N'Mô tả')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'0', 83, N'Img1_new_PM', 0, N'0')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'fl_img1_new_PM', 83, N'Img1_new_PM_', 0, N'Hình 1')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'ful_img_new_PM', 83, N'Img_new_PM', 1, N'Hình')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'txt_title_new_PM', 83, N'Title_new_PM', 2, N'Tiêu đề')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_status_new_PM', 83, N'Status_new_PM', 3, N'Trạng thái')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_order_new_PM', 83, N'Order_new_PM', 4, N'Thứ tự')

GO
INSERT INTO [dbo].[sys_mapped_form] ([ctr_client_id], [id_form], [mapped_col_code], [view_selected], [ctr_name])
	VALUES (N'drp_type_new_PM', 83, N'Type_new_PM', 5, N'Loại tin')

GO

--Table dbo.sys_mapped_join

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_join] (
	[id_mapped_join] [int] NOT NULL IDENTITY (1, 1),
	[mapped_table_parent] [int] NULL,
	[referencedTableName] [int] NULL,
	[ref_name] [nvarchar](100) NULL,
	[id_mapped_col_p] [int] NULL,
	[id_mapped_col_c] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_mapped_join] ON
GO
INSERT INTO [dbo].[sys_mapped_join] ([id_mapped_join], [mapped_table_parent], [referencedTableName], [ref_name], [id_mapped_col_p], [id_mapped_col_c])
	VALUES (1, 1, 2, N'FW_1_2', 1, 11)

GO
INSERT INTO [dbo].[sys_mapped_join] ([id_mapped_join], [mapped_table_parent], [referencedTableName], [ref_name], [id_mapped_col_p], [id_mapped_col_c])
	VALUES (2, 2, 3, N'FW_2_3', 4, 12)

GO
SET IDENTITY_INSERT [dbo].[sys_mapped_join] OFF
GO

--Table dbo.sys_mapped_operators

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_operators] (
	[id_operators] [int] NOT NULL IDENTITY (1, 1),
	[operators_name] [nvarchar](100) NULL,
	[operators_label] [nvarchar](100) NULL,
	[operators_cardinality] [nvarchar](100) NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_mapped_operators] ON
GO
INSERT INTO [dbo].[sys_mapped_operators] ([id_operators], [operators_name], [operators_label], [operators_cardinality])
	VALUES (1, N'=', N'is', N'ONE')

GO
INSERT INTO [dbo].[sys_mapped_operators] ([id_operators], [operators_name], [operators_label], [operators_cardinality])
	VALUES (2, N'<>', N'is not', N'ONE')

GO
INSERT INTO [dbo].[sys_mapped_operators] ([id_operators], [operators_name], [operators_label], [operators_cardinality])
	VALUES (3, N'<', N'less than', N'ONE')

GO
INSERT INTO [dbo].[sys_mapped_operators] ([id_operators], [operators_name], [operators_label], [operators_cardinality])
	VALUES (4, N'>', N'greater than', N'ONE')

GO
INSERT INTO [dbo].[sys_mapped_operators] ([id_operators], [operators_name], [operators_label], [operators_cardinality])
	VALUES (5, N'IN', N'any of', N'MULTI')

GO
INSERT INTO [dbo].[sys_mapped_operators] ([id_operators], [operators_name], [operators_label], [operators_cardinality])
	VALUES (6, N'LIKE', N'like', N'ONE')

GO
SET IDENTITY_INSERT [dbo].[sys_mapped_operators] OFF
GO

--Table dbo.sys_mapped_table

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_table] (
	[id_mapped] [int] NOT NULL IDENTITY (1, 1),
	[mapped_name] [nvarchar](200) NULL,
	[mapped_code] [nvarchar](200) NULL,
	[type_other] [int] NULL CONSTRAINT [DF__sys_mappe__type___4F47C5E3] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[sys_mapped_table] ON
GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (1, N'Danh mục dự án', N'other_group', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (2, N'Các danh mục ', N'other_list', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (3, N'Chi tiết danh mục', N'other_item', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (5, N'Tạo Table', N'sys_mapped_table', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (6, N'Tạo Col', N'sys_mapped_col', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (7, N'Tạo Form', N'form_steel', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (8, N'Tạo Page', N'sys_page', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (14, N'Phòng ban', N'web_department', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (15, N'Web list product', N'web_list_product', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (17, N'Web banner', N'web_banner', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (18, N'Web products', N'web_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (19, N'Web content', N'web_content', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (22, N'Chức vụ', N'web_title', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (23, N'Nhân viên', N'web_employer', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (26, N'Web menu root', N'web_menu_root', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (29, N'Khách hàng', N'web_customer', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (31, N'Web chater', N'web_chater', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (32, N'Web chater content', N'web_chater_content', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (33, N'Web content other', N'web_content_other', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (34, N'pct employee', N'pct_employee', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (35, N'Nhà cung cấp', N'store_company', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (36, N'Loại nhà cung cấp', N'store_com_type', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (37, N'Liên hệ nhà cung cấp', N'store_contact', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (40, N'Đơn vị tính', N'store_unit', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (41, N'Loại sản phẩm', N'store_cate', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (42, N'Sản phẩm kho', N'store_prod', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (43, N'Kho hàng', N'store_', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (44, N'Ngăn chứa', N'store_slot', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (45, N'Kệ hàng', N'store_stock', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (46, N'Loại hình vận chuyển', N'store_com_ship', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (47, N'Phiếu xuất', N'store_exp', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (48, N'Phiếu nhập', N'store_imp', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (49, N'Tài khoản', N'user_steel', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (50, N'Nhóm trang', N'sys_group_page', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (51, N'Nhóm quyền', N'tblSysUserGroupPage', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (52, N'Tài khoản thuộc nhóm quyền', N'tblSysUserGroupPageDetail', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (53, N'Page thuộc nhóm quyền', N'tblSysUserGroupPagePage', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (54, N'Phân quyền kết xuất', N'tblSysUserRolePage', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (55, N'Sản phẩm SKU', N'store_prod_sku', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (56, N'Danh mục menu', N'wb_menu', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (57, N'Menu sản phẩm', N'wb_menu_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (58, N'Banner web', N'wb_banner', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (59, N'Sản phẩm', N'wb_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (60, N'Comment', N'wb_comment', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (61, N'Advertising', N'wb_advertising', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (62, N'Menu Top', N'web_tr_menutop', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (63, N'Menu sản phẩm TR', N'web_tr_menu_product', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (64, N'Quản lý quảng cáo TR', N'web_tr_quangcao', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (65, N'Sản phẩm TR', N'web_tr_products', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (66, N'tbl Menu PM', N'tbl_menu_PM', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (67, N'tbl Silde PM', N'tbl_silde_PM', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (68, N'tbl New PM', N'tbl_new_PM', 0)

GO
INSERT INTO [dbo].[sys_mapped_table] ([id_mapped], [mapped_name], [mapped_code], [type_other])
	VALUES (69, N'tbl type new PM', N'tbl_type_new_PM', 0)

GO
SET IDENTITY_INSERT [dbo].[sys_mapped_table] OFF
GO

--Table dbo.sys_mapped_ty_op

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_ty_op] (
	[id_operators] [int] NOT NULL,
	[id_operators_type] [int] NOT NULL,
	[op_order] [int] NULL);
GO

INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 1, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 2, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 3, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 4, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 5, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 6, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 7, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (1, 8, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 1, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 2, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 3, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 4, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 5, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 6, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (2, 7, 2)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 1, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 2, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 3, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 4, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 5, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 6, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (3, 7, 3)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 1, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 2, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 3, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 4, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 5, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 6, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (4, 7, 4)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (5, 9, 1)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (6, 1, 5)

GO
INSERT INTO [dbo].[sys_mapped_ty_op] ([id_operators], [id_operators_type], [op_order])
	VALUES (6, 2, 5)

GO

--Table dbo.sys_mapped_type

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_mapped_type] (
	[id_operators_type] [int] NOT NULL IDENTITY (1, 1),
	[operators_type_name] [nvarchar](100) NULL,
	[operators_type_editor] [nvarchar](100) NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_mapped_type] ON
GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (1, N'CHAR', N'SUGGEST')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (2, N'STRING', N'TEXT')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (3, N'DATE', N'DATE')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (4, N'NUMERIC', N'TEXT')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (5, N'INTEGER', N'TEXT')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (6, N'DECIMAL', N'TEXT')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (7, N'SMALLINT', N'TEXT')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (8, N'BOOLEAN', N'SELECT')

GO
INSERT INTO [dbo].[sys_mapped_type] ([id_operators_type], [operators_type_name], [operators_type_editor])
	VALUES (9, N'REF', N'SELECT')

GO
SET IDENTITY_INSERT [dbo].[sys_mapped_type] OFF
GO

--Table dbo.sys_page

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_page] (
	[id_page] [int] NOT NULL IDENTITY (1, 1),
	[page_name] [nvarchar](200) NULL,
	[id_form] [int] NULL,
	[page_order] [int] NULL CONSTRAINT [DF__sys_page__page_o__5BAD9CC8] DEFAULT ((0)),
	[id_group_page] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[sys_page] ON
GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (18, N'Tạo table', 11, 2, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (19, N'Tạo cột table', 12, 3, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (20, N'Cấu hình form', 13, 4, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (21, N'Tạo page', 14, 5, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (28, N'Banner', 21, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (29, N'Danh mục sản phẩm', 22, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (30, N'Phòng ban', 29, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (31, N'Sản phẩm', 30, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (32, N'Nội dung ', 31, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (35, N'Chức vụ', 34, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (36, N'Nhân viên', 35, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (40, N'Menu', 42, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (43, N'Khách hàng', 45, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (45, N'Thông tin hỗ trợ trực tuyến', 47, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (46, N'Quá trình hỗ trợ', 48, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (47, N'Nội dung bất kỳ ', 49, 6, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (48, N'pct employee', 50, 1, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (49, N'Thông tin công ty', 51, 1, 5)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (50, N'Loại hình kinh doanh', 52, 3, 5)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (51, N'Thông tin người liên hệ', 53, 2, 5)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (52, N'Sản phẩm', 59, 1, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (53, N'Đơn vị tính', 55, 3, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (54, N'Loại sản phẩm', 56, 3, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (55, N'Kho hàng', 57, 4, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (56, N'Loại hình vận chuyển', 58, 4, 5)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (57, N'Ngăn chứa', 60, 6, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (58, N'Kệ hàng', 61, 5, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (59, N'Phiếu xuất', 62, 1, 6)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (60, N'Phiếu nhập', 63, 2, 6)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (61, N'Tài khoản', 64, 1, 7)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (62, N'Nhóm page', 65, 4, 3)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (63, N'Nhóm quyền', 66, 2, 7)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (64, N'Tài khoản thuộc nhóm quyền', 67, 3, 7)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (65, N'Page thuộc nhóm quyền', 68, 4, 7)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (66, N'Phân quyền kết xuất', 69, 5, 7)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (67, N'Check group', 3, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (68, N'Sản phẩm SKU', 70, 2, 1)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (69, N'Báo cáo kho sản phẩm SKU', 71, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (70, N'Quản lý Menu', 72, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (71, N'Quản lý danh mục sản phẩm', 73, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (72, N'Quản lý banner', 74, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (73, N'Quản lý sản phẩm', 75, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (74, N'Quản lý comment', 76, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (75, N'Quản lý quảng cáo ', 77, 1, 9)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (76, N'Quản lý menu TR', 78, 1, 10)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (77, N'Quản lý menu sản phẩm TR', 79, 1, 10)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (78, N'Quản lý quảng cáo TR', 80, 1, 10)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (79, N'Quản lý sản phẩm TR', 81, 1, 10)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (80, N'Quản lý Menu PM', 82, 1, 12)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (81, N'Quản lý Silde PM', 84, 1, 12)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (82, N'Quản lý Tin Tức PM', 83, 1, 12)

GO
INSERT INTO [dbo].[sys_page] ([id_page], [page_name], [id_form], [page_order], [id_group_page])
	VALUES (83, N'Quản lý loại tin PM', 85, 4, 12)

GO
SET IDENTITY_INSERT [dbo].[sys_page] OFF
GO

--Table dbo.sys_store_prod

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[sys_store_prod] (
	[id_store_prod] [int] NOT NULL,
	[store_prod_count] [int] NOT NULL,
	[id_store_slot] [int] NOT NULL,
	[store_prod_cost] [int] NOT NULL,
	[store_prod_shelf] [datetime] NOT NULL);
GO

--Table dbo.tbl_menu_PM

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tbl_menu_PM] (
	[ID_menu_PM] [int] NOT NULL IDENTITY (1, 1),
	[Name_menu_PM] [nvarchar](200) NULL,
	[Link_menu_PM] [nvarchar](200) NULL,
	[Type_menu_PM] [int] NULL,
	[Status_menu_PM] [int] NULL,
	[Order_menu_PM] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[tbl_menu_PM] ON
GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (1, N'Trang Chủ', N'/Default/Default', 1, 1, 1)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (2, N'Trang Chủ', N'/Default/Default', 3, 1, 1)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (3, N'Liên Hệ', N'/Abouts/Contact', 3, 1, 5)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (4, N'Liên Hệ', N'/Abouts/Contact', 1, 1, 5)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (5, N'Vấn Đề Chuyên Môn', N'/NewOrther/NewOrtherPaging/5', 1, 1, 2)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (6, N'Giới Thiệu', N'/Abouts/Abouts', 3, 1, 3)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (7, N'Tin Tức Phòng Mạch', N'/NewOrther/NewOrtherPaging/4', 1, 1, 3)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (8, N'Giới Thiệu', N'/Abouts/Abouts', 1, 1, 4)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (9, N'Vấn đề về mũi', N'/NewOrther/NewOrtherPaging/2', 2, 1, 1)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (10, N'Vấn đề về tai', N'/NewOrther/NewOrtherPaging/1', 2, 1, 2)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (11, N'Vấn đề về họng', N'/NewOrther/NewOrtherPaging/3', 2, 1, 3)

GO
INSERT INTO [dbo].[tbl_menu_PM] ([ID_menu_PM], [Name_menu_PM], [Link_menu_PM], [Type_menu_PM], [Status_menu_PM], [Order_menu_PM])
	VALUES (12, N'Tin Tức Phòng Mạch', N'/NewOrther/NewOrtherPaging/5', 2, 1, 4)

GO
SET IDENTITY_INSERT [dbo].[tbl_menu_PM] OFF
GO

--Table dbo.tbl_new_PM

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tbl_new_PM] (
	[ID_new_PM] [int] NOT NULL IDENTITY (1, 1),
	[Title_new_PM] [nvarchar](200) NULL,
	[Status_new_PM] [int] NULL,
	[Shortdescription_new_PM] [ntext] NULL,
	[Description] [ntext] NULL,
	[Img_new_PM] [nvarchar](200) NULL,
	[Order_new_PM] [int] NULL,
	[Img1_new_PM] [int] NULL,
	[Img1_new_PM_] [nvarchar](200) NULL,
	[Ceatedtime_new_PM] [date] NULL CONSTRAINT [DF_tbl_new_PM_Ceatedtime_new_PM] DEFAULT (getdate()),
	[Type_new_PM] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[tbl_new_PM] ON
GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (3, N'Làm thế nào để CƯ XỬ với ráy tai đúng?!!', 1, N'1. Ráy tai là gì?!
Ráy tai là chất tiết từ ống tai ngoài, có chức năng bảo vệ tai khỏi xâm nhập vi khuẩn. Thường có 2 dạng ráy tai: ráy khô và ráy ướt. Ráy ướt là do chất tiết chứa nhiều cholesterol có vai trò như một cái bẫy để chặn lại bụi bậm và những côn trùng nhỏ không cho xâm nhập vào bên trong nếu lỡ sa chân vào ống tai.', N'1. Ráy tai là gì?!
Ráy tai là chất tiết từ ống tai ngoài, có chức năng bảo vệ tai khỏi xâm nhập vi khuẩn. Thường có 2 dạng ráy tai: ráy khô và ráy ướt. Ráy ướt là do chất tiết chứa nhiều cholesterol có vai trò như một cái bẫy để chặn lại bụi bậm và những côn trùng nhỏ không cho xâm nhập vào bên trong nếu lỡ sa chân vào ống tai.
2. Theo thường lệ thì ráy tai được tạo ra có xu hướng đẩy nhẹ ra ngoài, tuy nhiên chưa bao giờ ráy tai đẩy hẳn ra ngoài tai. Vì vậy có quan niệm sai lầm. Không được lấy ráy tai ?!! vì trường hợp ráy tai quá nhiều bít chặt ống tai ngoài sẽ làm ù tai, nghe kém. Trường hợp bội nhiễm sẽ làm viêm ống tai ...
3. Có nên lấy ráy tai ko? lấy ở đâu?
Thực ra lấy ráy tai là việc làm vệ sinh tai sạch sẽ kèm theo sở thích sảng khoái ở những người sống trong khu vực các nước Đông Nam Á và Châu Á. Nhưng phải tuân thủ đúng và không lạm dụng.
- Chỉ lấy ráy tai khi nào ráy nhiều, bít ống tai ngoài gây nghe kém.
- Ơ người ráy tai ướt, dùng tăm bông xoay nhẹ ống tai ngoài, không được ngoáy mạnh tay và làm nhiều lần sẽ trầy xước ống tai dễ nhiễm trùng.
- Ơ người ráy tai khô, không nên dùng tâm bông ngoáy tai, vì dễ đẩy sâu ráy tai vào trong.
4. Có nên lấy ráy tai ở ngoài tiệm hớt tóc không?
- Lấy ráy tai ko những làm vệ sinh tai mà còn mang lại cảm giác dễ chịu, thư thái trong những ngày làm việc căng thẳng. Lấy ráy tai là thao tác đơn giản. Thường những người hớt tóc lành nghề họ làm rất tốt và khéo léo. Tuy nhiên một sai lầm cần được loại bỏ là dùng chung dụng cụ với nhau. Vì vậy rất dễ lây bệnh cho nhau nhất là nấm, viêm gan siêu vi B và có thể lây HIV.
- Trong những trường hợp ráy tai cứng, sát màng nhĩ không nên cố gắng để lấy vì dễ tổn thương tai mà có thể dùng 1 số dung dịch nhỏ tai làm mềm ráy tai hay tiêu ráy tai...
- ở trẻ em cần thao tác nhanh và chính xác. Vì vậy ba mẹ không nên lấy ráy tai cho bé tại nhà hoặc tiệm hớt tóc mà đến Bv hay phòng khám Bs chuyên khoa.
P/s. Hình ảnh lấy từ nguồn Internet minh hoạ.', N'83_2015-12-18-23-37-41_12208002_635896376552444_1572740315_n.jpg', 1, NULL, N'&amp;amp;amp;amp;nbsp;', NULL, 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (4, N'Viêm xoang do nấm, thận trọng với những biến chứng nguy hiểm...', 1, N'Phòng khám Tai Mũi Họng Bác Sĩ Nguyễn Minh Hảo Hớn trình bày vấn đề về Viêm xoang do nấm.
1. Viêm xoang do nấm là tình trạng bệnh nhân hít các bào tử nấm trong không khí, chui vào xoang sinh sôi, phát triển làm tắc nghẽn lỗ thông xoang, làm viêm xoang ...', N'1. Viêm xoang do nấm là tình trạng bệnh nhân hít các bào tử nấm trong không khí, chui vào xoang sinh sôi, phát triển làm tắc nghẽn lỗ thông xoang, làm viêm xoang ...
2. Tuổi thường gặp từ 40 trở lên, nữ nhiều hơn nam. Xoang hàm gặp nhiều nhất, kế đến là xoang bướm, xoang sàng và xoang trán. Triệu chứng thường gặp là nhức đầu, chảy mũi hôi, nghẹt mũi...Chẩn đoán thường dễ dàng, chỉ cần chụp phim xoang thường qui có biểu hiện xoang hàm mờ 1 bên, có cản quang. Nếu bác sĩ không có kinh nghiệm sẽ bỏ sót dấu hiệu này. Trường hợp viêm xoang bướm thì khó hơn. Nội soi mũi xoang có thể thấy mủ đổ ra vùng khe trên. Tuy nhiên trong 1 số trường hợp xoang bướm bị bít tắt không có dấu hiệu này, chụp CT được chỉ định để phát hiện bệnh.
3. Điều trị viêm xoang do nấm là phẫu thuật qua nội soi mũi xoang để bơm rữa sạch mô nấm. Tỷ lệ thành công gần như 100%. Trong 1 số trường hợp khó như xoang hàm lẹm, xoang bướm xương dày cứng, phẫu thuật viên không có kinh nghiệm tốt sẽ không lấy sạch nấm thì ca mổ xem như thất bại.
4. Biến chứng đáng lo ngại là trong trường hợp viêm xoang do nấm ở tế bào sàng sau gây chèn ép thần kinh thị. Triệu chứng duy nhất là mờ mắt 1 bên ngày càng tăng, thỉnh thoảng nhức hốc mắt. Nếu không phát hiện và điều trị kịp thời bệnh nhân sẽ bị mù. Nguy hiểm hơn là những trường hợp viêm xoang do nấm xâm lấn. Nấm có thể phá huỷ cấu trúc xương xâm lấn vào ổ mắt, động mạch cảnh xoang hang, sọ não và có thể gây tử vong. Những trường hợp này thường gặp ở phụ nữ lớn tuổi, tiểu đường, sau một đợt xạ trị, hoá trị, hay bn suy giảm miễn dịch ...nếu phát hiện bệnh sớm sẽ không nguy hiểm đến tính mạng. Một lời khuyên giành cho những gia đình có những người già có nguy cơ trên khi có triệu chứng nhức đầu âm ỉ hay dữ dội phải đưa đến những nơi chuyên khoa uy tín để được chụp CT kiểm tra.
5. Viêm xoang do nấm có bị tái phát ko?
- Viêm xoang được chia ra 4 loại chính là. Viêm xoang do u nấm, nấm dị ứng, nấm xâm lấn cấp và nấm xâm lấn mạn tính. Phần lớn &amp;gt; 90% gặp là trường hợp u nấm. Loại này sau phẫu thuật thường khỏi bệnh hoàn toàn. Trừ 1 số trường hợp hít phải bào tử nấm vào xoang khác, thì đây là trường hợp nhiễm mới chứ không phải tái phát. Trường hợp viêm xoang do nấm dị ứng thì sau mổ bệnh nhân sẽ có những đợt viêm dị ứng, nên đến khám để được điều trị sớm, trừ trường hợp bệnh nhân không tái khám, niêm mạc phù nề tạo thành polyp gây tắc nghẽn các lổ thông xoang nên phải phẫu thuật lại. 2 trường hợp viêm xoang do nấm xâm lấm sẽ sử dụng thuốc kháng nấm và theo dõi chặt chẽ trong 2 năm.
6. Viêm xoang do nấm nên phẫu thuật sớm. Bởi vì khởi đầu thường chỉ nhiễm 1 xoang. Nếu ko phát hiện và điều trị sớm thì bệnh có thể lan ra các xoang và biến chứng vào hốc mắt...
7. Cần làm gì để hạn chế viêm xoang do nấm?
- Nên mang khẩu trang khi ra đường. Tránh hít phải bào tử nấm.
- Môi trường sống xung quanh phải sạch sẽ, nhà cửa phải lau chùi thoáng mát, tránh ẩm thấp...
- Khi phát hiện viêm xoang do nấm thì phải phẫu thuật ngay. Vì dùng thuốc ko hết gây tốn kém và ảnh hưởng đến chức năng gan thận.
P/s: Hình 1: biến chứng mắt (T) do viêm xoang do nấm.
Hình 2: Sau điều trị cho kết quả tốt.', N'83_2015-12-19-0-23-40_12277075_641878572620891_1149352225_n.jpg', 2, NULL, N'83_2015-12-19-0-23-43_12283120_641878539287561_1702446133_n.jpg', CAST(0xce3a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (5, N'Hôi miệng - nỗi lòng biết tỏ cùng ai.', 1, N'1. Hôi miệng sẽ ảnh hưởng đến giao tiếp, công việc và cả trong... tình yêu! Nhiều bệnh nhân than thở rằng họ mất tự tin khi tiếp xúc với người đối diện, lâu ngày sẽ trở thành hành vi sợ đám đông và trở nên nhút nhát. Có một số trường hợp đi phỏng vấn xin việc thì bị... " knock out" từ vòng... giữ xe. ', N'Phòng Khám Tai Mũi Họng Bác Sĩ Nguyễn Minh hảo Hớn trình bày vấn đề về hôi miệng:
1. Hôi miệng sẽ ảnh hưởng đến giao tiếp, công việc và cả trong... tình yêu! Nhiều bệnh nhân than thở rằng họ mất tự tin khi tiếp xúc với người đối diện, lâu ngày sẽ trở thành hành vi sợ đám đông và trở nên nhút nhát. Có một số trường hợp đi phỏng vấn xin việc thì bị... " knock out" từ vòng... giữ xe.
2. Nguyên nhân nào gây hôi miệng?
Thứ nhất là do trào ngược dạ dày thực quản, nguyên nhân này thường gây hôi miệng, ngày gặp càng nhiều do thói quen của chúng ta hay ăn khuya, ăn nhiều vào bữa ăn tối, ít vận động...
Thứ 2 là do bệnh về răng miệng như viêm lợi, viêm nướu...
Thư 3 là do viêm mũi xoang mạn tính, nhất là xoang hàm thường do vi trùng yếm khí, sinh hơi...mủ chảy xuống phía sau họng gây viêm họng dai dẵng...
Thứ 4 là do viêm amidan hốc mủ, các thức ăn ứ đọng vào các hốc amidan lâu ngày sinh hôi...
Thứ 5 do bệnh lý toàn thân ít gặp khác.
3. Làm gì khi bạn bị hôi miệng?
Nên đến khám với Bs Tai Mũi Họng có kinh nghiệm và uy tín. Tuỳ vào triệu chứng của bạn mà bs sẽ biết do nguyên nhân gì để điều trị cho chính xác. Ngày nay việc chỉ định cắt amidan "đại trà" sẽ đem lại hậu quả khó lường cho bệnh nhân vì sẽ gây loạn cảm họng, cơ quan "bảo vệ" vùng họng đã bị cắt đi sẽ làm cho bn dễ viêm họng hơn. Bởi vì nguyên nhân do amidan gây hôi miệng phải nghĩ đến ... cuối cùng sau khi đã điều trị các nguyên nhân trên không cải thiện. Chỉ định cắt amidan hết sức chặt chẽ và có tiêu chuẩn rõ ràng. Một số bệnh nhân có triệu chứng ho kéo dài hoặc vướng họng kéo dài thường là do trào ngược dạ dày thực quản hoăc do viêm xoang mạn tính mà cứ nghĩ
là do viêm amidan.
- Bệnh nhân nên được nội soi mũi xoang và hạ họng để loại trừ những nguyên nhân hiếm gặp như dị vật mũi bỏ quên, ung thư vòm, ung thư hạ họng...
4. Bệnh nhân nên được điều trị khỏi các nguyên nhân nêu trên và tuân thủ các hướng dẫn sau.
- Hạn chế ăn cay, chua, đồ chiên xào, các thức uống có ga, nồng độ cồn như bia, rượu...
- Không hút thuốc lá, vệ sinh răng miệng sạch sẽ, đánh răng sau mỗi bữa ăn và nên sử dụng tăm chỉ vệ sinh để loại bỏ thức ăn dính ở các khe răng, nên cạo vôi răng mỗi 6 tháng 1 lần.
- Xúc họng bằng nước muối sinh lý 0,9% ngày 2 lần. Hoặc nước xúc họng có chất Benzechonium chloride hoặc Zinc chloride rất tốt nhưng chỉ bớt hôi miệng tạm thời.
- Không được ăn quá khuya, quá no, nên ăn trước khi đi ngủ 3 giờ. Khi ngủ kê gối cao dưới vai và đầu.
- Khi giao tiếp quan trọng tránh để dạ dày " trống" vì hơi trong dạ dày đẩy lên sẽ gây mùi hôi, nên ăn nhẹ trước.
- Một số phương pháp cổ truyền như sử dụng một số loại lá nhai hoặc kẹo cao su cũng chỉ hết tạm thời.
- Không nên cạo lưỡi mạnh và thường xuyên, sẽ làm trầy, rách gai lưỡi đễ bị nhiễm trùng. Lưỡi dơ thường do viêm họng mạn tính nếu điều trị khỏi lưỡi sẽ hết dơ.
- Nên ăn nhiều rau xanh, thức ăn dễ tiêu hoá, ít đường
- Khi điều trị GERD không khỏi hoặc tái phát ngay sau khi ngưng điều trị, nên đến khám chuyên khoa tiêu hoá để tìm vi trùng Helicobacter pylori.
- Hãy giữ cho chúng ta luôn khoẻ mạnh, tự tin trong cuộc sống.
- Hãy giữ cho hơi thở thơm tho cho người bạn đời, người thân yêu và mọi người xung quanh.
P/s: Hình mang tính chất minh hoạ.', N'83_2015-12-20-12-36-52_11896136_749192275209860_6374654379205897706_n.jpg', 3, NULL, N'', CAST(0xcf3a0b AS date), 3)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (6, N'Viêm tai do nấm - điều trị sớm đừng để quá muộn. ', 1, N'1. Tai được chia thành 3 phần. Tai ngoài (từ màng nhĩ trở ra bao gồm cả vành tai), tai giữa là phần hòm nhĩ nằm phía sau màng nhĩ và tai trong (nằm trong hộp sọ). ', N'Phòng Khám Tai Mũi Họng Bác Sĩ Nguyễn Minh hảo Hớn trình bày vấn đề về Viêm tai do nấm:
 1. Tai được chia thành 3 phần. Tai ngoài (từ màng nhĩ trở ra bao gồm cả vành tai), tai giữa là phần hòm nhĩ nằm phía sau màng nhĩ và tai trong (nằm trong hộp sọ).
2. Nấm và bào tử nấm thường có nhiều trong không khí. Có thể "vô tình" bay lọt trong tai hoặc bệnh nhân có thói quen dùng chung dụng cụ ngoáy tai với nhau... Tuy nhiên, trong điều kiện bình thường bào tử nấm sẽ không có "đất sống" vì da ống tai và lớp ráy tai là hàng rào bảo vệ vững chắc. Khi gặp điều kiện thuận lợi như da ống tai bị trầy do ngoáy tai thì dịch tiết và máu là môi trường "màu mỡ" để nấm bắt đầu phát triển và gây bệnh.
3. Triệu chứng hay gặp đầu tiên là ... ngứa (cả ngày lẫn đêm, làm cho bệnh nhân lúc nào cũng muốn ngoáy tai, càng ngoáy tai thì da tai càng xây xát, tiết dịch và rướm máu sẽ giúp nấm phát triển mạnh hơn ...vì vậy khi ngứa tai bn nên dùng ngón tai trỏ ấn phía trước tai và day để cho "đã ngứa". Với cách này sẽ hạn chế trầy sướt ống tai và "mắc bẫy" của ... nấm.
- Khi có bội nhiễm thì ống tai bắt đầu sưng lên. Bệnh nhân cảm thấy đau "kinh khủng". Đau nhức lan lên đầu, nhức từng cơn hay liên tục, nhức cả khi ...ăn (vì ống tai ngoài nằm cạnh khớp nhai), nhức không thể làm việc và không thể ngủ...
- Nếu bệnh nhân ko điều trị thì giai đoạn vỡ mủ (giống như VTG do vi trùng)
+ Khám: Giai đoạn chưa bội nhiễm thì thấy ống tai ngoài có 1 lớp giống ráy tai nhưng có màu trắng có dạng sợi ( ráy tai màu nâu, vàng ...) nếu soi dưới kính hiển vi điện tử thấy nhiều sợi tơ nấm.
- Trong trường hợp bội nhiễm thì ngoài mủ thì ta có thể thấy 1 khối màu trắng đen trộn lẫn ...
4. Điều trị như thế nào? Có dễ hay ko?
- Mục tiêu chính là phải đảm bảo 2 tiêu chí sau: loại trừ nấm và không cho nấm "có chốn dung thân". Vì vậy phải rữa tai bằng máy hút ( ở bv và phòng khám chuyên khoa uy tín - đảm bảo rữa sạch và ko lây lan thêm). Sử dụng dung dịch rữa tai, lau tai có tính acid như cồn Bô ríc 3%...
- Khi đã bội nhiễm thì phải sử dụng kháng sinh, giảm đau, kháng dị ứng chống ngứa...
- Trong trường hợp nặng phải rữa tai cách ngày. Và theo dõi tối thiểu 4 tuần.
5. Nếu không điều trị kịp thời nấm có thể lan tới màng nhĩ gây thủng màng nhĩ gây viêm tai giữa và xa hơn là lan vô xương chủm, cuối cùng là vô não. Nếu chúng tai điều trị kịp thời thì bệnh sẽ bị chặn đứng ở ống tai ngoài. Trường hợp nấm bám sát màng nhĩ chỉ có rữa tai dưới kinh hiển vi hay qua nội soi mới lấy sạch được (chúng tôi đã gặp trường hợp nấm chui vào hòm nhĩ gây chảy mủ dai dẵng cho đến khi hút được mô nấm ra khỏi thì tai mới hết chảy mủ).
6. Phải làm gì để phòng bệnh?
- Không dùng chung dụng cụ ngoáy tai.
- Nên sử dụng tăm bông mềm, lau tai nhẹ nhàng. Tối đa ngày 1-2 lần sau khi tắm.
- Khi ngứa tai thường xuyên và nhiều nên đến khám những nơi uy tín.
- Bệnh nhân ko nên có thói quen tự ý sử dụng thuốc nhỏ tai cũng như oxy già ... vì có thể làm điếc tiến triển. ..
-tại Phòng Khám Tai Mũi Họng Bác Sĩ Nguyễn Minh hảo Hớn có thể soi và biết rõ bệnh tình.
P/s: Hình 1: nấm còn ở ống tai ngoài
Hình 2: nấm đã lan đến màng nhĩ.', N'83_2015-12-20-21-56-42_tai1.jpg', 999999999, NULL, N'83_2015-12-20-21-56-47_tai2.jpg', CAST(0xcf3a0b AS date), 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (7, N'Phòng khám tai mũi họng Bs.Nguyễn Minh Hảo Hớn trình bày vấn đề Giải oan cho ...Amidan', 1, N'1. Amidan là tổ chức limpho nằm 2 bên họng có nhiệm vụ như 2 " anh lính" canh cửa, không cho vi trùng xâm nhập vào cơ thể qua đường này.', N'Phòng khám tai mũi họng Bs.Nguyễn Minh Hảo Hớn trình bày vấn đề:
1. Amidan là tổ chức limpho nằm 2 bên họng có nhiệm vụ như 2 " anh lính" canh cửa, không cho vi trùng xâm nhập vào cơ thể qua đường này.
2. Vì là "thành viên" của họng, nên trong trường hợp viêm họng hoặc viêm mũi họng thì "thành viên" này sẽ bị ảnh hưởng ... gián tiếp. Và đương nhiên khi điều trị viêm họng ổn thì "2 anh" này sẽ khoẻ và tiếp tục nhiệm vụ bảo vệ của mình.
3. Một số hiểu lầm của bệnh nhân mà qui kết "oan sai" cho 2 anh này như sau.
- Tất cả trường hợp đau họng, đàm, ho, vướng họng... Đều đổ lỗi do 2 anh này gây ra là không đúng. Những triệu chứng này thường do viêm họng cấp, viêm họng xuất tiết, viêm họng do trào ngược dạ dày thực quản (GERD), viêm mũi xoang xuất tiết...
4. Vậy thì khi nào cho chẩn đoán chính xác là viêm amidan?
- Trẻ em thường có triệu chứng điển hình hơn, vì tuổi này hệ thống limpho rất phát triển và "sung mãn". Nên khi có "anh vi trùng" nào xâm nhập thì hệ thống limpho sẽ "phô trương sức mạnh" tổng tiến công...và xuất hiện những triệu chứng rất điển hình như sốt, đau họng ở vị trí 2 bên góc hàm, nuốt đau lan lên tai, ho khan và trẻ hay bị ói do kich thích vùng họng (triệu chứng này làm cho ba mẹ hay nhầm lẫn với ...rối loạn tiêu hoá). Tuỳ vào độc tính của vi trùng hay sức đề kháng của cơ thể mà có thể xuất hiện đầy đủ hay thiếu 1 trong các triệu chứng trên.
- Người lớn thì thường chủ yếu là đau họng và ho khan, trong trường hợp viêm cấp thì có thể có sốt...
- Khám lâm sàng và kinh nghiệm hỏi bệnh bác sĩ hết sức quan trọng. Sẽ cho một chẩn đoán và điều trị chính xác.
5. Vậy khi nào cắt amidan?
- Chỉ định cắt amidan hết sức rõ ràng.
5.1. Amidan viêm tái phát nhiều hơn 5 lần/ năm ( trẻ &lt; 6 tuổi có thể nhiều hơn)
5.2. Amidan quá phát làm cho bệnh nhân ngủ ngáy (đã điều trị nội khoa mà ko nhỏ lại)
5.3. Amidan có nhiều hốc mủ bả đậu gây hôi miệng.
5.4. Amidan gây biến chứng viêm khớp, viêm cầu thận hay cơ tim.
5.5. Amidan đã từng bị áp xe.
- Bệnh nhân nên được theo dõi ở một bác sĩ có kinh nghiệm để được điều trị đúng và tư vấn cách hạn chế tái phát ít nhất là 1 năm.
- Cần nhớ rằng trước khi quyết định cắt amidan phải bảo đảm bệnh nhân ko có (hay ko còn) bệnh lý ở mũi xoang, bệnh GERD...
- Một số bệnh nhân bị viêm amidan tái phát do bệnh lý mũi xoang chảy từ thành sau họng xuống làm viêm amidan, viêm họng...vì vậy khi điều trị viêm mũi xoang ổn thì amidan sẽ hết viêm.
6. Cần lưu ý cắt amidan không đúng chỉ định thì sau phẫu thuật bệnh nhân mất đi sự bảo vệ, vùng mũi họng sẽ dễ bị viêm nhiễm, nguyên nhân gây ra ban đầu chưa giải quyết như viêm xoang, GERD...bệnh nhân vẫn sẽ còn những triệu chứng khó chịu như ban đầu: ho đàm, vướng họng...sẽ xảy ra nhiều hơn.
7. Làm gì để hạn chế viêm amidan
- Cơ thể chúng ta cũng giống như một "trận chiến" hàng ngày với "thù địch" bên ngoài là ... Vi trùng. Chúng ta phải có sức đề kháng tốt, cũng như các bài trước đã đề cặp. Ăn uống đầy đủ, nghỉ ngơi hợp lý, không làm việc quá sức, không thức quá khuya....
- Một trong những lý do trẻ hay bị viêm họng và amidan là uống quá lạnh, không giữ ấm cơ thể...
- Giữ gìn vệ sinh răng miệng sạch sẽ, xúc họng bằng nước muối sinh lý hàng ngày sẽ hạn chế rất nhiều bệnh ở vùng này.
8.Những sai lầm hàng ngày thường gặp
- Bệnh nhân thường được chẩn đoán "viêm amidan" ở tuyến dưới hay ở những nơi khác... Hoăc có những triệu chứng của bệnh từ mũi xoang hay GERD...mà "đổ lỗi" do amidan gây ra và "yêu cầu" được cắt amidan.
- Ngày nay, việc chỉ định phẫu thuật cắt amidan hơi "rộng rãi" ở 1 số nơi. Để bảo vệ mình, bệnh nhân nên hiểu rõ bệnh của mình, đến những nơi uy tín được thăm khám, tư vấn kỷ càng trước khi điều trị.
P/s. Hình ảnh này lấy từ nguồn Internet. 2 amidan sưng to, nhiều hốc mủ màu vàng.', N'83_2015-12-21-20-59-11_12141612_770908206371600_2504861794931801557_n.jpg', 999999999, NULL, N'&nbsp;', CAST(0xd03a0b AS date), 3)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (8, N'Vẹo vách ngăn mũi khi nào cần phẫu thuật?', 1, N'Vẹo vách ngăn mũi là tình trạng rất nhiều người gặp phải, gây nên những triệu chứng như: nghẹt mũi một bên, đôi khi kèm theo nhức đầu. Nếu tình trạng này kéo dài, bệnh nhân sẽ bị viêm mũi xoang dị ứng, viêm xoang… Phẫu thuật là phương pháp điều trị hiệu quả vẹo vách ngăn (VVN). Tuy nhiên, không phải tất cả các bệnh nhân bị VVN đều cần phải phẫu thuật.', N'Gần 80% dân số mắc phải

Trên một diễn đàn, chị Phương Khanh chia sẻ: “Tôi thường xuyên bị nghẹt mũi, chảy nước mũi, cảm giác khó chịu như bị cảm cúm. 3 tháng trước, đi khám ở một phòng khám, bác sĩ bảo tôi bị VVN và khuyên phẫu thuật chỉnh hình vách ngăn. Tôi thấy lo lắng và định sẽ phẫu thuật ở một bệnh viện lớn. Tuy nhiên, khi đi khám ở bệnh viện, bác sĩ lại bảo tôi chưa cần phẫu thuật mà phải điều trị bệnh viêm mũi dị ứng trước. Vì các triệu chứng trên là do viêm mũi dị ứng gây nên”.
Tương tự, chị Yến Ly (26 tuổi, Gò Vấp, TPHCM) cũng thắc mắc: “Tôi bị VVN một bên, thường xuyên có cảm giác nghẹt mũi. Tuy vậy, khi nói đến phẫu thuật, tôi cảm thấy hơi lo. Liệu tôi có thể sống chung với lũ, không phẫu thuật có được không?”.
Thạc sĩ – bác sĩ Nguyễn Minh Hảo Hớn, Khoa Mũi – Xoang, Bệnh viện Tai Mũi Họng TPHCM cho biết, vách ngăn mũi là bộ phận nằm giữa, chia đôi thành hai phần (phía trước là phần sụn, phía sau là phần xương). VVN là tình trạng vách ngăn bị vẹo một bên hay phức tạp. Nguyên nhân chủ yếu có thể do tự nhiên hoặc chấn thương. Theo thống kê, có đến 70 - 80% dân số bị VVN theo nhiều dạng như: vẹo một bên, vẹo phức tạp hình chữ S, mào vách ngăn, gai vách ngăn…
VVN thường gây nên các triệu chứng khó chịu như: nghẹt mũi, nhức đầu. Nếu tình trạng này kéo dài, ở vị trí nghẹt nhiều sẽ kích thích làm chảy dịch mũi, một số trường hợp bị chảy máu mũi. Thông thường, bệnh nhân đến các bệnh viện khám vì các triệu chứng khó chịu trên rồi tình cờ phát hiện ra tình trạng VVN của mình.
Để chẩn đoán chính xác bệnh nhân có bị VVN hay không, bác sĩ chuyên khoa có thể khám bằng đèn Clar nhưng để xác định tổng thể, nên khám qua nội soi mũi xoang.

Không phải cứ “vẹo” là mổ
Hiện nay, rất nhiều bệnh nhân hay gặp tình trạng đi khám bênh, phát hiện VVN thì được bác sĩ chỉ định phẫu thuật. Tuy nhiên, theo bác sĩ Nguyễn Minh Hảo Hớn, không phải tất cả các bệnh nhân VVN đều phải phẫu thuật. Bệnh nhân cần được khai thác kỹ bệnh sử để có một chỉ định phẫu thuật phù hợp.
Phần lớn bệnh nhân đến khám và phát hiện ra VVN là tình trạng (triệu chứng) đi kèm với bệnh viêm mũi xoang. Viêm mũi xoang cũng có những triệu chứng tương tự như VVN: nhức đầu, nghẹt mũi, chảy dịch… Thông thường, các triệu chứng này do bệnh viêm mũi xoang gây ra chứ không phải do VVN. Với trường hợp này, dù bệnh nhân có được phẫu thuật VVN đi nữa thì tình trạng khó chịu của bệnh nhân chưa chắc được cải thiện. Bệnh nhân cần điều trị bệnh viêm mũi xoang trước. Nếu sau điều trị, các triệu chứng khó chịu không còn nữa thì không cần phẫu thuật.

Chỉ nên phẫu thuật chỉnh hình vách ngăn khi VVN làm cho bệnh nhân nghẹt mũi, nhức đầu trong một thời gian dài liên tục (kể cả khi bệnh nhân không bị viêm mũi xoang) làm ảnh hưởng đến cuộc sống, sinh hoạt và công việc của bệnh nhân.
Trong những trường hợp VVN phần cao gây nhức đầu nhiều, bệnh nhân phải được chụp CT scan trước phẫu thuật để loại trừ các bệnh lý trong não, các bệnh viêm xoang tiềm tàng như nấm xoang bướm, điểm tiếp xúc cuống trên vách ngăn. Đồng thời, bệnh nhân cần được tư vấn kỹ trước khi phẫu thuật. Vì nhức đầu thường do rất nhiều yếu tố nội khoa và ngoại khoa kèm theo.
Trong trường hợp mào vách ngăn và gai vách ngăn nhiều tiếp xúc với các cấu trúc khác trong mũi như cuống dưới, cuống giữa, tạo phản ứng viêm lâu ngày sẽ làm ảnh hưởng đến viêm xoang mạn tính gây tắc nghẽn các lỗ thông xoang, tạo polyp mũi (khối thịt dư) ở bệnh nhân. Nếu điều trị viêm xoang theo phác đồ mà bênh nhân không khỏi bệnh và có chỉ định phẫu thuật nội soi mũi xoang chức năng (FESS) thì sẽ có chỉ định chỉnh hình vách ngăn kèm theo.
Với sự phát triển của nội soi mũi xoang, ngày nay đa phần các phẫu thuật viên chuộng thực hiện chỉnh hình vách ngăn qua nội soi. Bởi phương pháp này có nhiều ưu điểm như đánh giá được tổng thể vách ngăn trong quá trình phẫu thuật. Những phần vẹo cao, phần mào, gai ở phía sau chỉ có nội soi là đánh giá chính xác nhất. Trong những trường hợp không cần thiết, bệnh nhân chỉ cần chỉnh hình tối thiểu, lấy những phần vẹo, gai, mào còn các cấu trúc khác nên bảo tồn.

“Vẹo vách ngăn là tình trạng mà bệnh nhân thường được chẩn đoán trong khi đi khám TMH, và phẫu thuật chỉnh hình vách ngăn là phương pháp cải thiện tình trạng khó chịu của bệnh nhân. Tuy nhiên, không phải tất cả các trường hợp VVN đều cần phẫu thuật. Bệnh nhân cần được khám và tư vấn kỹ càng, đồng thời, nên thực hiện phẫu thuật ở một bệnh viện uy tín” - BS Nguyễn Minh Hảo Hớn khuyên.', N'83_2015-12-22-20-11-4_hcm192604-1.jpg', 1, NULL, N'', CAST(0xd13a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (9, N'Vũ Văn Tiến bật khóc khi gặp lại mẹ', 1, N'Gặp lại con ở trại giam, bà Thi kể Vũ Văn Tiến đã khóc rất nhiều. Thanh niên này dặn mẹ mỗi tháng lên thăm một lần vì kinh tế gia đình không khá giả.', N'Sau khi Vũ Văn Tiến (24 tuổi, người có liên quan đến vụ thảm sát ở Bình Phước khiến 6 người thiệt mạng) làm đơn kháng cáo xin giảm án tử hình lên TAND cấp cao tại TP HCM, ngày 27/12, bà Vũ Thị Thi (mẹ Tiến) cho biết đã được cơ quan chức năng tạo điều kiện cho gặp con trong trại giam. Đây là lần đầu mẹ con họ được gặp nhau kể từ thời điểm Tiến bị bắt, ngày 10/7.
Trong một giờ, Tiến khóc nhiều, dặn mẹ giữ gìn sức khỏe và không phải lo lắng nhiều. Người đang mang án tử hình bảo với bà Thi rằng, do gia đình không có điều kiện kinh tế nên mỗi tháng chỉ đến thăm một lần.

"Nó nói đã làm đơn kháng cáo xin được giảm án tử hình, nhưng chắc không thoát được rồi bật khóc", bà Thi nghẹn ngào.

Theo lời kể của bà Thi, trong tù, con bà làm quen và chơi thân với một phạm nhân. Người này thường xuyên nói chuyện và dạy làm các con vật bằng dây thun để Tiến bớt cô quạnh.

Khi chia tay mẹ, Tiến đưa cho bà Thi một con heo được thắt bằng nylon có dòng chữ "Gia đình vui vẻ". 
Nhớ lại hôm xét xử con, bà Thi cho biết, bà cùng con gái từ phòng trọ ở huyện Hóc Môn (TP HCM) lên Bình Phước tham dự. Hai mẹ con đội mũ, bịt khẩu trang, cố gắng che dấu thân phận, hòa vào đám đông dự khán.

Khi Tiến bị công an dẫn giải từ xe đặc chủng đến vành móng ngựa, bà đã òa khóc và định chạy đến ôm con nhưng không được. Nhiều người sinh nghi hỏi có phải mẹ Tiến không nhưng bà Thi không dám nhận.

Vũ Văn Tiến bật khóc khi gặp lại mẹ

Gặp lại con ở trại giam, bà Thi kể Vũ Văn Tiến đã khóc rất nhiều. Thanh niên này dặn mẹ mỗi tháng lên thăm một lần vì kinh tế gia đình không khá giả.

Sau khi Vũ Văn Tiến (24 tuổi, người có liên quan đến vụ thảm sát ở Bình Phước khiến 6 người thiệt mạng) làm đơn kháng cáo xin giảm án tử hình lên TAND cấp cao tại TP HCM, ngày 27/12, bà Vũ Thị Thi (mẹ Tiến) cho biết đã được cơ quan chức năng tạo điều kiện cho gặp con trong trại giam. Đây là lần đầu mẹ con họ được gặp nhau kể từ thời điểm Tiến bị bắt, ngày 10/7.

Vũ Văn Tiến có cơ hội giảm án tử hình?

Sau khi bị TAND tỉnh Bình Phước tuyên án tử hình, Tiến thường khóc vào buổi tối và bỏ ăn. Luật sư của phạm nhân này cho biết, sẽ cố gắng để cứu thân chủ mình thoát án tử hình.

Trong một giờ, Tiến khóc nhiều, dặn mẹ giữ gìn sức khỏe và không phải lo lắng nhiều. Người đang mang án tử hình bảo với bà Thi rằng, do gia đình không có điều kiện kinh tế nên mỗi tháng chỉ đến thăm một lần.

"Nó nói đã làm đơn kháng cáo xin được giảm án tử hình, nhưng chắc không thoát được rồi bật khóc", bà Thi nghẹn ngào.

Theo lời kể của bà Thi, trong tù, con bà làm quen và chơi thân với một phạm nhân. Người này thường xuyên nói chuyện và dạy làm các con vật bằng dây thun để Tiến bớt cô quạnh.

Khi chia tay mẹ, Tiến đưa cho bà Thi một con heo được thắt bằng nylon có dòng chữ "Gia đình vui vẻ".
Tiến trước vành móng ngựa. Ảnh: Hải An.
Tiến trước vành móng ngựa. Ảnh: Hải An.

Nhớ lại hôm xét xử con, bà Thi cho biết, bà cùng con gái từ phòng trọ ở huyện Hóc Môn (TP HCM) lên Bình Phước tham dự. Hai mẹ con đội mũ, bịt khẩu trang, cố gắng che dấu thân phận, hòa vào đám đông dự khán.

Khi Tiến bị công an dẫn giải từ xe đặc chủng đến vành móng ngựa, bà đã òa khóc và định chạy đến ôm con nhưng không được. Nhiều người sinh nghi hỏi có phải mẹ Tiến không nhưng bà Thi không dám nhận.

Hơn 10 giờ xử vụ thảm sát Bình Phước qua ảnh

Buổi sáng, kẻ chủ mưu vụ thảm sát tỏ ra bình tĩnh và trả lời rành rọt các câu hỏi của chủ tọa, nhưng khi bản án đưa ra sau hơn 10 giờ xét xử, Dương lảo đảo sắp ngã và mím chặt môi.

Suốt phiên tòa, mỗi lần nghe Tiến khai lại hành động giúp sức cho Dương giết hại 6 người, bà Thi lại khóc nấc lên. Người mẹ ngã quỵ khi nghe con bị tòa tuyên án tử hình.

Theo nội dung vụ án, do bị bạn gái là Lê Thị Ánh Linh (22 tuổi, ngụ huyện Chơn Thành, Bình Phước) chia tay nên Nguyễn Hải Dương (24 tuổi, quê An Giang) nảy sinh ý định trả thù.

Dương rủ Trần Đình Thoại (27 tuổi, ngụ Vĩnh Long) tham gia và người này đồng ý. Tuy nhiên, sau đó Thoại sợ nên rút lui nhưng vẫn mua thêm dao cho Dương gây án.

Rạng sáng 7/7, Dương cùng Tiến đột nhập vào nhà Linh và giết 6 người trong gia đình cô gái này.

Tại phiên xử sơ thẩm ngày 17/12, TAND tỉnh Bình Phước đã tuyên phạt Nguyễn Hải Dương (24 tuổi, ngụ An Giang) tử hình, Vũ Văn Tiến (24 tuổi, ngụ Bình Phước) tử hình và Trần Đình Thoại (27 tuổi, quê Vĩnh Long) 16 năm tù cùng về tội Giết người, Cướp tài sản.

Một tuần sau, luật sư Lê Văn Nam (người bào chữa cho bị cáo Vũ Văn Tiến) xác nhận, thân chủ của ông đã làm đơn kháng cáo xin giảm án tử hình lên TAND cấp cao tại TP HCM.', N'83_2016-01-07-21-39-21_83_2015-12-27-23-36-15_tien.jpg', 1, NULL, N'&amp;nbsp;', CAST(0xd63a0b AS date), 6)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (10, N'Những cách chữa ho, đơn giản và hiệu quả tại nhà', 1, N'Mỗi khi thời tiết thay đổi hoặc thời tiết trở lạnh đột ngột các chứng ho lại đua nhau xuất hiện : ho gió, ho do cảm lạnh, nhiễm lạnh, ho do viêm họng, viêm phê quản mãn tính… Tuy không ảnh hưởng trực tiếp đến tính mạng người bệnh nhưng tình trạng nếu ho kéo dài gây ảnh hưởng đến sinh hoạt và khó chịu cho người bệnh. Dưới đây là một số cách chữa ho, đơn giản và hiệu quả tại nhà.', N'Cách chữa ho bằng mật ong

Dân gian đã truyền nhau cách sử dụng mật ong để trị ho. Đó là các cách dùng mật ong hấp quất, mật ong hấp lá hẹ, mật ong hấp tỏi hoặc dùng mật ong với một số nguyên liệu khác.

Mật ong hấp quất nguyên vỏ: Dùng quất rửa sạch vỏ, để ráo nước, bổ đôi quả quất, bỏ hạt, thái lát mỏng cho vào bát tô. Sau đó đổ mật ong ngập phần quất, trộn đều cho quất thấm đều mật ong. Sau đó đem hấp hoặc cho vào nồi đun cách thủy chừng 10 – 15 phút, tới khi quất nhuyễn, quyện đều với mật ong thành 1 thứ sánh đặc như siro. Để nguội, mỗi ngày uống 2-3 lần, mỗi lần 1-2 thìa cafe. Khi uống bạn có thể cho thêm vài hạt muối, không nuốt nga mà ngậm 5s trong miệng, để trôi từ từ qua cổ họng, giúp giảm viêm họng, ngứa rát, khản tiếng do ho mang lại.
Mật ong hấp quất dùng để chữa ho

Mật ong hấp lá hẹ: Dùng từ 3 -5 nhánh lá hẹ, rửa sạch, để ráo nước, thái nhỏ cho vào bát. Đổ mật ong ngập lá, trộn đều, đem hấp hoặc đun cách thủy tới nhuyễn. Ngày uống 2-3 lần, mỗi lần 1-2 thìa cafe như hỗn hợp quất hấp mật ong.

Mật ong hấp tỏi: Bạn cũng chuẩn bị 4 – 5 nhánh tỏi, đập dập, trộn đều mật ong, đem hấp cách thủy, tới khi ngửi thấy mùi tỏi hăng hắc là được. Chú ý không nên để tỏi quá dừ. Để nguội, uống 2 -3 lần/ngày, mỗi lần 1 – 2 thìa café. Mật ong khi hấp cùng với tỏi làm tăng tính kháng sinh tự nhiên, giảm viêm họng, tăng sức đề kháng.

Chữa ho bằng me, gừng và nước cốt chanh

Đây là cách làm giúp trị những con ho thường do cảm cúm. Bạn cần cho khoảng 3 nắm lá me tươi rửa sạch vào nồi, xắt lát mỏng một củ gừng rồi trải đều trên lá me, cho thêm vào nồi 2 ly nước. Sau đó đun lửa liu riu trong 30 phút hoặc cho đến khi lượng nước trong nồi còn lại khoảng 1 ly, dùng vải sạch lọc lấy phần nước. ho vào phần nước thu được khoảng nửa ly nhỏ đường rồi tiếp tục đem đun sôi cho đến khi dịch có dạng xi rô. Vắt lấy nước của 5 trái chanh đã loại bỏ hạt vào xi rô và khuấy đều.
Me, gừng, nước cốt chanh được dùng để chữa ho

Để trị ho, người lớn mỗi ngày uống 4 lần, mỗi lần một muỗng canh. Trẻ em cũng uống mỗi ngày 4 lần nhưng mỗi lần một muỗng cà phê. Xi rô này cần được bảo quản trong tủ lạnh.

Cách chữa ho từ cam và tỏi

Đây là 2 cách chữa ho hiệu quả từ tỏi và cam có thể áp dụng cho cả người lớn và trẻ em.

Cách chữa ho từ tỏi

Dùng 2 – 3 tép tỏi, bóc vỏ và cho vào bát nhỏ, thêm 1 thìa đường và nửa bát nước. Đun sôi với lửa thật nhỏ khoảng 15 phút rồi tắt bếp. Đợi cho nước còn hơi ấm hãy ăn.

Áp dụng từ 2-3 lần/ngày, các cơn ho sẽ giảm đi thấy rõ, sau một tuần sẽ dứt hẳn. Tỏi có vị ấm rất tốt cho dạ dày, phổi, điều trị các chứng ho. Người lớn cũng có thể dùng cách này, nhưng cần đến 7-8 tép tỏi và 2 thìa đường.

Cách chữa ho từ cam

Cam rửa sạch, ngâm với nước muỗi loãng. Sau các bữa ăn, thay vì để nguyên quả cắt miếng, bạn hãy gọt để lấy vỏ cam và đem vỏ cam nướng trên bếp và ăn khi còn nóng.

Nếu ho nặng, mỗi ngày bạn có thể ăn từ 2-3 vỏ cam nướng, rất ấm cổ, tốt cho họng, tiêu đờm, đặc biệt các cơn ho buổi đêm sẽ không còn.

Một số cách chữa ho khác

Chữa ho lâu năm: Dùng 10g tang bạch bì, 10g vỏ rễ cây chanh khô, sắc uống mỗi ngày 1 thang đến khi khỏi.

Chữa ho ra máu : Dùng tang bạch bì 600g cho vào nước vo gạo ngâm trong 3 đêm. Tước nhỏ, cho vào 250g gạo nếp sao vàng, tán nhỏ, trộn đều. Sử dụng 16g mỗi ngày chia đều làm 2 phần.

Chữa ho có đàm ở trẻ nhỏ : Lấy tang bạch bì 4g sắc với nước cho trẻ uống.

Trị ho nhiều đờm, suyễn, tức ngực, khó thở : Lấy khoảng 10g củ cải, 10g hạt tía tô, 3g hạt cải, sao vàng cho đến khi có mùi thơm và tán nhỏ các vị trên, cho vào túi vải, cho thêm chừng 300ml nước, sắc còn 100ml, chia 3 lần uống trong ngày.', N'83_2016-01-07-21-32-48_images1.jpg', 999999999, NULL, N'&amp;nbsp;', CAST(0xd93a0b AS date), 5)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (11, N'Ông lão nhờ thêm luật sư cứu con trai vụ chai nước có ruồi', 1, N'Sợ con mình không thoát được lao lý, ông lão 66 tuổi ở Tiền Giang đã tìm thêm luật sư bào chữa cho Võ Văn Minh. Hiện, bị cáo còn có 2 luật sư đang giúp là Tấn Thi và Hoài Nam.', N'Tối 29/12, ông Võ Văn Kỷ (ngụ xã An Cư, huyện Cái Bè, Tiền Giang) cho biết, nông dân 66 tuổi này đã gửi đơn đến luật sư Nguyễn Hữu Thế Trạch (Đoàn Luật sư TP HCM) để nhờ bào chữa cho con trai Võ Văn Minh (35 tuổi). Đơn được gửi vào trưa cùng ngày và ông Trạch đã nhận lời bào chữa miễn phí cho Minh.
Theo người cha, gia đình rất mong HĐXX phúc thẩm sẽ tuyên Minh không phạm tội Cưỡng đoạt tài sản. Ông cho rằng, Minh bị Công ty Tân Hiệp Phát gày bẫy trong vụ nhận 500 triệu đồng để công an bắt chứ doanh nghiệp không lo sợ do bị đe dọa hay uy hiếp.

"Vợ chồng tôi mong từng giờ, từng ngày để tới ngay xử phúc thẩm. Mọi người đều tin Minh không phạm tội", người cha nói.

Trò chuyện cùng báo chí, luât sư Trạch khẳng định, ông sẽ bào chữa miễn phí cho anh Minh trong phiên tòa phúc thẩm. Ông đã xem hồ sơ vụ án của anh Minh nhưng từ chối nói thêm gì trong lúc này.

"Tôi sẽ đem tất cả năng lực của mình để cố gắng bào chữa cho anh Minh, vì đây là một việc làm chính đáng", vị luật sư nói.

Hơn một năm trước, khi Minh lấy nước ngọt bán cho khách thì phát hiện chai nhựa nhãn hiệu Number 1 có con ruồi bên trong nên mang đi cất giấu.

Hai ngày sau, Minh được cho là điện thoại đến Công ty Tân Hiệp Phát để yêu cầu doanh nghiệp đưa 1 tỷ đồng, nếu không thì anh ta sẽ cung cấp thông tin cho báo chí, in 5.000 tờ rơi về vụ này để Tân Hiệp Phát mất uy tín.

Ngày 6/12/2014, Tân Hiệp Phát phân công nhân viên đến gặp Minh. Anh này sau đó đưa ra yêu cầu đại diện doanh nghiệp phải đưa cho mình 1 tỷ đồng để đổi lấy chai Number 1 có ruồi nhưng bất thành. Hai lần thỏa thuận sau đó, Minh được cho là hạ giá xuống 600 triệu đồng và cuối cùng là chốt lại 500 triệu.
Ngày 27/1, Tân Hiệp Phát cử 3 nhân viên đến Tiền Giang gặp Minh. Sau khi đại diện doanh nghiệp đưa Minh nửa tỷ đồng tại quán giải khát Hương Quê ở xã Hậu Thành (Cái Bè), anh này viết biên nhận cho người giao tiền.

Khi Minh để tiền vào cốp xe máy và định ra về thì bị công an ập vào bắt quả tang. Ngày 18/12, TAND tỉnh Tiền Giang tuyên Minh 7 năm tù vì tội Cưỡng đoạt tài sản.

Sáng 28/12, cán bộ quản giáo Trại tạm giam Công an Tiền Giang cho ông Kỷ biết tin, Minh đã kháng cáo kêu oan. Trong đơn, Minh khẳng định việc thỏa thuận với doanh nghiệp Tân Hiệp Phát để đổi chai nước ngọt có ruồi lấy 500 triệu đồng chỉ là cuộc thương lượng mua bán.', N'83_2016-01-07-21-39-40_83_2015-12-30-17-45-44_Minh_1.jpg', 2, NULL, N'&nbsp;', CAST(0xd93a0b AS date), 6)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (12, N'Viêm mũi xoang dị ứng - phòng tránh mới là điều quan trọng.', 1, N'Viêm xoang mũi dị ứng Phòng khám Tai Mũi Họng Bác Sĩ Nguyễn Minh Hảo Hớn Sẽ nói sao về điều này', N'1. Viêm mũi dị ứng là thuật ngữ được dùng trước đây, đến năm 1995 Hội nghị Mũi xoang tại Mỹ đã thống nhất sử dụng là viêm mũi xoang dị ứng ( VMXDU) vì mũi và xoang được lót chung 1 tấm niêm mạc. Nhiều người thường nhầm lẫn là bị viêm xoang ( do vi trùng) nên có những suy nghĩ sai lầm như " viêm xoang không bao giờ điều trị khỏi" hoặc " viêm xoang có mổ cũng tái phát lại " ... Từ đó thường " buông xuôi" và hậu quả là bệnh ngày càng trầm trọng hơn và đưa đến những biến chứng nặng như biến chứng ổ mắt, viêm thanh quản dai dẵng, viêm xoang polyp mũi .... 

2. Viêm mũi dị ứng được xếp trong nhóm bệnh hen suyễn, chàm da và nổi mề đay. Cho nên ngày nay càng được công nhận là bệnh có yếu tố gia đình và mang tính chất di truyền. Trong 1 gia đình có ba hoặc mẹ bị VMXDU thì đứa con sinh ra cũng có khả năng bị bệnh này là 30%. Nếu cả 2 cùng bị bệnh thì khả năng người con tăng lên là 50-75%. Nhiều nghiên cứu đã được công bố mối tương quan giữa VMXDU và bệnh hen suyễn. Khi bệnh nhân bị VMXDU thì dễ bộc phát cơn suyễn hơn. 

3. VMXDU được phân thành 2 loại: VMXDU theo mùa và quanh năm. Nguyên nhân ở VN thường gặp là bụi nhà, khói bụi, môi trường ô nhiễm... 

4. Triệu chứng điển hình là hắt hơi từng tràng dài, liên tục. Chảy nước mũi trong và ngứa mũi, ngứa mắt, ngứa tai.... Ngoài ra bệnh nhân có thể nghẹt mũi từng bên, luôn phiên hay cả 2 bên. Nhức đầu nhẹ, ù tai, đau mũi ...trong trường hợp không điều trị bệnh có thể bội nhiễm thường chảy mũi đục, nhức đầu nhiều hơn, ho, khạc đàm... 

5. Điều trị VMXDU như thế nào? - Trước hết phải điều trị nhiễm trùng tiềm tàng ở vùng tai mũi họng như: viêm Amidan hốc mủ, nhiễm trùng răng miệng hay viêm xoang thể yên lặng... - Nếu VMXDU chưa có bội nhiễm chỉ cần xử dụng corticoid dạng uống theo chỉ định nghiêm ngặt của bác sĩ, kháng dị ứng và corticoid dạng xịt mũi. Điều trị và được kiểm tra hàng tuần đến khi nào bệnh nhân hết triệu chứng và thăm khám (qua nội soi) thấy hết xuất tiết, niêm mạc hồng hết phù nề...) thì có thể ngưng. - Nếu hai phương pháp trên thất bại thì sử dụng liệu pháp điều miễn dịch ( Imunotherapy) hay còn gọi giải mẫn cảm, test để tìm dị nguyên ( hiện tại chưa có thuốc sử dụng tại VN ). Tỉ lệ này thành công là 90%. 
5
. Phòng bệnh mới là điều quan trọng. - Trước hết phải tăng sức đề kháng cơ thể như: không được thức quá khuya, ăn uống nghỉ ngơi đầy đủ không bỏ bữa, làm việc không quá sức khéo dài, giảm stress, bổ sung vit C hợp lý. .. - Tránh tác nhân dị ứng như khói bụi, mùi xăng dầu... Nên mang khẩu trang khi ra đường và tới nơi đông người. - Tránh đi hồ bơi nhất là các hồ không đảm bảo vệ sinh và hoá chất trong hồ bơi cũng là tác nhân gây dị ứng - Không để cơ thể nhiễm lạnh như ngủ máy lạnh nhiều, thường xuyên, nhiễm nước mưa, khi ra khỏi nhà vào buổi sáng hay trời mưa nên khoát thêm áo lạnh để giữ ấm cơ thể. - Nhất là phụ nữ phải sáy tóc khô sau khi tắm gội vào buổi tối ...

 6. Khi nào thì phẫu thuật? - Bệnh nhân cần nên nhớ rằng VMXDU là bệnh ý điều trị nội khoa. Chỉ định phẫu thuật hết sức chặt chẽ. Khi nào bệnh nhân không điều trị hoặc điều trị không đúng cách dẫn đến viêm xoang polyp mũi gây tắc nghẽn các lổ thông xoang, khi vách ngăn vẹo nhiều, gai, mào vách ngăn chạm vào cuốn mũi gây kích thích niêm mạc xuất tiết. Cuốn mũi quá phát không còn đáp ứng với điều trị nội khoa thì có chỉ định phẫu thuật.

 7. Vậy thì phẫu thuật có chữa hết viêm mũi dị ứng không? - Không. Theo kinh nghiệm của chúng tôi các trường hợp có chỉ định phẫu thuật trên sau phẫu thuật hốc mũi thông thoáng làm giảm rất nhiều tần xuất cơn VMXDU sau mổ. Nếu bệnh nhân biết phòng tránh theo hướng dẫn trên thì sẽ hạn chế được bệnh rất nhiều. 

8. Phải làm gì khi bị VMXDU? - Nên đến những nơi uy tín, bác sĩ có chuyên môn là tay nghề cao để được thăm khám, tư vấn và điều trị đúng. Tránh lãng phí và chỉ định phẫu thuật sai lầm. - Không gì tốt hơn là mình hiểu rõ bệnh của mình, cách phòng ngừa và điều trị đúng. Với sự phát triển của y học ngày nay thì " không có gì là không thể" - Bất cứ một bệnh gì nếu không điều trị thì hậu quả sẽ chỉ có diễn tiến xấu hơn mà thôi. - Điều trị sớm sẽ tránh lãng phí, chức năng phòng bệnh còn sẽ giúp cho bệnh nhân rất nhiều. - Vẫn mãi là 1 câu nói rất hay và rất hữu ích " Phòng bệnh hơn chữa bệnh".', N'83_2016-01-07-22-52-37_83_2015-12-29-14-40-22_images.jpg', 1, NULL, N'&amp;amp;nbsp;', CAST(0xe13a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (13, N'Bệnh loét miệng aphter. Mối lo chưa có hồi kết. ', 1, N'1. Aphter là vết loét nông, hình tròn hay hình bầu dục, đáy sạch ở niêm mạc môi, dưới lưỡi, 2 bên má...rất đau và hay tái phát nên bệnh nhân rất lo lắng. ', N'Bệnh loét miệng aphter. Mối lo chưa có hồi kết.
 
1. Aphter là vết loét nông, hình tròn hay hình bầu dục, đáy sạch ở niêm mạc môi, dưới lưỡi, 2 bên má...rất đau và hay tái phát nên bệnh nhân rất lo lắng. 
2. Nguyên nhân nào gây bệnh áp ter?
Trước đây người ta nghĩ do 1 loại vi rút ( Adeno vi rut) nhưng ngày nay nhiều sự đồng ý là do miễn dịch và có yếu tố gia đình. Bệnh thường xuất hiện ở nữ nhiều hơn nam, tuổi thường gặp từ 16 -40 tuổi hay tái phát và xuất hiện khi mùa trăng ( còn gọi là đẹn trăng). Khi cơ thể mệt mỏi, ăn uống kém, thức quá khuya và làm việc quá sức...
3. Cách phát hiện bệnh như thế nào?
Thường bệnh trải qua 3 giai đoạn. Giai đoạn tiền triệu bệnh nhân thường có cảm giác bỏng rát trong miệng, đầu lưỡi... Nếu trong giai đoạn này bệnh nhân nghỉ ngơi đầy đủ, bổ sung liền các vitamin thì bệnh có thể thoái lui. 
Giai đoạn 2 là giai đoạn vết áp xuất hiện rất đau khi nói và khi ăn, vì vậy thường bệnh nhân mệt mỏi và có thể sốt nhẹ. Nếu giai đoạn này bệnh nhân không giữ vệ sinh sạch sẽ có thể bị bội nhiễm, vết áp nhiễm trùng sẽ loét sâu hơn, rộng hơn, đau nhiều hơn ...giai đoạn này nếu ko điều trị sẽ kéo dài từ 3-10 ngày. 
Giai đoạn 3 là giai đoạn thoái lui. Nếu bệnh nhân nghỉ ngơi, ăn uống đầy đủ... Bệnh có thể tự khỏi mà ko để lại sẹo. 
4. Biến chứng của bệnh Aphter?
- Trường hợp diễn tiến nặng trở thành thể viêm loét họng giả mạc, bệnh nhân có thể không ăn uống được trở nên suy kiệt và mất nước điện giải... Một số vết loét lớn dần và nằm gần các mạch máu lớn có thể gây vỡ mạch máu và tử vong. 
5. Điều trị Aphter như thế nào?
- Thường giai đoạn 1 bệnh nhân "cảm nhận" được triệu chứng của minh. Nếu giai đoạn này bệnh nhân nghỉ ngơi ăn uống đầy đủ, uống thêm Vitamin PP 500 mg 1v ngày 2 lần, vitamin C 1g ngày 1v vào buổi trưa, bổ sung thêm acif folic, kẽm... ( bệnh nhân > 16 tuổi) bệnh có thể thoái lui mà ko chuyển sang giai đoạn vết loét. 
- Nếu giai đoạn 2 có bội nhiễm thì nên đến khám để được điều trị đúng. 
6. Phòng bệnh là quan trọng nhất. 
- Tránh bệnh tái phát. Bệnh nhân nên ăn uống đầy đủ, nghỉ ngơi hợp lý. Ko thức quá khuya, không uống nhiều bia rượu, ăn nhiều thực phẩm có nhiều sắc và kẽm như rau muống, rau bồ ngót, hào biển... Uống nước cam vắt khoảng 1 tuần khi mệt mỏi...
- Vệ sinh răng miệng sạch sẽ, không sử dụng bàn chải đánh răng cứng dễ bị trầy sước niêm mạc...
- Một điều hết sức lưu ý là khi giai đoạn nặng, bệnh nhân ăn uống kém, nên đến bv ngay để nhập viện điều trị tránh suy kiệt và hiện tượng vết loét vào mạch máu lớn làm bệnh nhân có thể tử vong.
P/s: hình 1,2: vết áp ở nướu và môi. 
-Phòng khám tai mũi họng bác sĩ Nguyễn Minh Hảo Hớn', N'83_2016-01-07-23-43-47_11854072_607910609351021_1149457162_n.jpg', 1, NULL, N'83_2016-01-07-23-43-52_11872867_607910596017689_958986879_n.jpg', CAST(0xe13a0b AS date), 3)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (14, N'Chủ tiệm vàng mất trộm ôtô giữa ban ngày', 1, N'Trong nháy mắt, kẻ trộm lái chiếc ôtô rời khỏi nhà ông chủ tiệm vàng. Bị hại nói rằng trên xe có nhiều vàng và tài sản.', N'Vụ việc xảy ra khoảng 7h sáng 7/1, tại phố Bế Văn Đàn, phường Quan Trung, quận Hà Đông (TP Hà Nội).

Khi đó, ông Vũ Đức Phi (56 tuổi, chủ tiệm vàng gần đó) đỗ ôtô trước cửa nhà thì bị kẻ gian lấy cắp. Làm việc với cảnh sát, bị hại nói rằng đầu giờ đã cho nhân viên mang hòm vàng bỏ vào xe. Lúc ông Phi quay ra thì thấy chiếc xe 4 chỗ màu xanh biến mất.

Thời điểm xảy ra vụ việc, bố ông Phi thấy ôtô lăn bánh nhưng nghĩ người cầm lái là con trai. Vài phút sau khi kẻ trộm dời di, cả nhà mới biết bị mất trộm, vội truy đuổi nhưng không kết quả.

Vào cuộc điều tra, Công an quận Hà Đông đã tìm thấy chiếc xe ông Phi tại cánh đồng phường Kiến Hưng, cách hiện trường khoảng 5 km. Qua khám xét, không phát hiện tiền, vàng trên ôtô.

Cơ quan chức năng đang truy bắt nghi phạm và xác minh làm rõ việc mất vàng như trình báo của nạn nhân.', N'83_2016-01-07-23-48-26_IMG_0153.JPG', 1, NULL, N'', CAST(0xe13a0b AS date), 6)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (15, N'Bệnh tai - mũi - họng thường gặp', 1, N'Tai, mũi, họng là cơ quan tiếp xúc với môi trường, do ô nhiễm, do thời tiết thay đổi, các cơ quan này thường hay bị viêm nhiễm. Chăm sóc, đề phòng và điều trị kịp thời các bệnh lý tai mũi họng sẽ giúp nâng cao chất lượng cuộc sống.', N'Một số bệnh thông thường .Phòng khám tai mũi họng bác sĩ Nguyễn Minh Hảo Hớn chia sẻ:

Viêm amidan

Amidan là những tế bào lympho bảo vệ cơ thể chống lại sự xâm nhập của vi khuẩn. Amidan cũng là nơi sản xuất ra kháng thể IgG rất cần thiết trong miễn dịch. Amidan là hàng rào miễn dịch vùng họng miệng, hoạt động mạnh từ 4 - 10 tuổi, sau đó đến tuổi dậy thì, mức độ miễn dịch của amidan giảm rõ rệt và không còn hoạt động mạnh nữa.

Khi amidan bị viêm nhiều lần, khả năng chống vi khuẩn bị yếu đi.

Điều trị: Uống thuốc kháng sinh, giảm đau từ 5 - 7 ngày. Súc họng nước muối loãng buổi tối và buổi sáng. Nếu có điều kiện nên nạp khí dung.

Các trường hợp sau được đề nghị cắt amidan: Một năm amidan viêm trên 4 lần; viêm amidan hốc mủ; ngưng thở khi ngủ; ngủ ngáy.

Viêm amidan có thể gây các biến chứng: Viêm khớp, viêm thận, biến chứng tim. áp xe amidan. Viêm tai giữa tái đi tái lại cũng nên cắt amidan. Ngoài ra, còn có những chỉ định cắt amiđan tuyệt đối như trong trường hợp nghi bị ung thư, hoặc những chỉ định rất nhỏ như hôi miệng, nấm amiđan...

Viêm xoang

Viêm xoang là tình trạng viêm nhiễm niêm mạc lót ở trong xoang, gây tắc các lỗ thông xoang, đặc biệt là những xoang nhỏ.

Viêm xoang được phân thành hai dạng: Viêm xoang cấp là tình trạng viêm xoang trong một thời gian ngắn, thường đáp ứng tốt với thuốc kháng sinh và thuốc chống phù nề; viêm xoang mãn là trường hợp ít nhất 4 đợt viêm xoang cấp, tái phát, hoặc viêm mũi mãn tính từ bé kéo dài.

Điều trị: Rửa mũi, nạp khí dung và uống thuốc kháng sinh, kháng viêm và kháng histamine từ 7 - 14 ngày. Nếu có polype mũi, CT có hình ảnh viêm xoang nặng, cần phẫu thuật nội soi mũi xoang.

Viêm mũi dị ứng

Dị ứng là tình trạng phản ứng của cơ thể (kháng thể) với vật lạ (kháng nguyên) xâm nhập từ lần thứ hai vào cơ thể.

Viêm mũi dị ứng tuy không gây chết người nhưng gây sự khó chịu ở người bệnh, giảm hiệu quả làm việc và chất lượng sống. Dị ứng cũng có tính di truyền từ đời trước cho đời sau. Dị ứng có liên quan đến hen suyễn, 40% bệnh nhân dị ứng bị hen suyễn và 80% bệnh nhân bị hen suyễn bị dị ứng.

Do phản ứng dị ứng xảy ra trong gene, nên việc điều trị chống dị ứng ngày nay vẫn còn gặp nhiều khó khăn và tốn kém, điều trị khỏi dị ứng là chưa thể. Việc rửa mũi nhằm loại bỏ vật lạ xâm nhập vào mũi là giải pháp hiệu quả. Loại bỏ các yếu tố gây kích thích dị ứng như viêm xoang, viêm amidan, viêm VA và vẹo vách ngăn.

Viêm tai giữa cấp

Viêm tai giữa cấp là tình trạng viêm màng nhĩ và hòm nhĩ.

Nguyên nhân có thể do cảm cúm, viêm amidan, viêm VA, viêm xoang. Viêm tai giữa cấp do thay đổi áp suất khi đi máy bay hay làm việc trong phòng lặn, tàu ngầm... Nếu không được điều trị có thể biến chứng thành viêm tai giữa thanh dịch, viêm tai giữa mãn thủng nhĩ, viêm xương chũm. Nghe kém.

Điều trị: Dùng kháng sinh, kháng viêm, giảm đau. Súc họng nước muối. Trường hợp viêm tai giữa cấp nên chích rạch màng nhĩ dẫn lưu mủ. Phẫu thuật được đề nghị khi viêm tai giữa mãn thủng nhĩ hay viêm xương chũm.

Điếc đột ngột

Điếc đột ngột là tình trạng đột ngột một tai hay hai tai nghe kém một phần (từ 3 tần số liên tiếp) hay hoàn toàn.

Cho đến nay chưa tìm được nguyên nhân chính xác của tình trạng này, nhưng thường liên quan đến tình trạng các tế bào thần kinh thính giác thiếu máu nuôi đột ngột dẫn đến mất chức năng sinh lý nghe.

Triệu chứng: Người bệnh đột ngột bị ù tai, không nghe thấy ở một hay hai tai.

Điều trị: Điếc đột ngột là một điều trị cấp cứu, chữa ngay 6 giờ đầu thì khả năng hồi phục thính lực cao.

Khi thấy tai có sự khác thường như ù tai, nặng tai, nghe kém, cần phải khám tai mũi họng ngay. Điếc đột ngột nếu chữa sớm sẽ khỏi, để trễ sẽ bị điếc hẳn.

Ung thư trong tai mũi họng

Một số bệnh ung thư thường gặp trong tai mũi họng: Ung thư vòm mũi họng, ung thư mũi xoang, ung thư amidan, ung thư thanh quản, ung thư tai...

Ung thư vòm mũi họng

Ung thư vòm mũi họng thường gặp nhiều ở người Hoa có gốc vùng quê Quảng Đông. Hiện nay nhiều người Việt Nam cũng có quan hệ di truyền liên quan đến người Hoa, nên bệnh ung thư vòm mũi họng cũng thường gặp ở Việt Nam.

Hiện y học chưa xác định được nguyên nhân của căn bệnh này.

Triệu chứng: Khối u xuất phát ở vòm mũi họng nên gây chảy máu mũi, ù tai, nghẹt mũi. Giai đoạn sau thường có hạch cổ.

Ngày nay, với phương pháp nội soi có thể phát hiện rất sớm bệnh ung thư vòm mũi họng. Khi có nghi ngờ, người bệnh được nội soi NBI để xác định khối u. Công nghệ NBI có thể phát hiện được ung thư vòm khi khối u mới ở lớp mạch máu, còn nhỏ, nhờ vậy tỷ lệ điều trị khỏi bệnh cao.

Điều trị: Ung thư vòm điều trị xạ trị, hiệu quả khỏi bệnh cao. Một số nước điều trị kết hợp phẫu thuật và xạ trị.

Ung thư thanh quản


Ung thư thanh quản thường xảy ra ở nam giới, trên 40 tuổi.

Nguyên nhân: Người ta nghi ung thư thanh quản liên quan đến thuốc lá, người tiếp xúc với niken, amiant, crôm hay người có tiền sử chạy tia xạ vùng cổ...

Triệu chứng: Khàn tiếng tăng dần, uống thuốc vẫn không giảm; nuốt vướng; ho tăng dần; khó thở tăng lên do khối u lớn che một phần hay toàn bộ thanh quản; nổi hạch vùng cổ (khi khối u phát triển lớn, cố định).

Hiện nay có hai phương pháp điều trị ung thư thanh quản là phẫu thuật và xạ trị. Trong đó, xạ trị đơn thuần cũng có thể có hiệu quả cao; xạ trị kết hợp sau phẫu thuật cho kết quả tốt.

Phẫu thuật cắt bỏ một phần khối u thanh quản khi khối u còn khu trú và chưa có di căn. Đây là phẫu thuật bảo tồn, sau mổ bệnh nhân còn bảo tồn các chức năng phát âm, thở qua đường mũi. Nếu phát hiện sớm, tỷ lệ sống trên 5 năm đạt 60 - 75%.', N'83_2016-01-07-23-50-53_blausen-0800-sinusitis.jpg', 1, NULL, N'83_2016-01-07-23-50-57_sinusitis-3-1.jpg', CAST(0xe13a0b AS date), 5)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (16, N'Nông trại bí ngô khổng lồ hiếm có ở Việt Nam', 1, N'Những trái bí ngô khổng lồ nặng từ 50 đến 100 kg có nguồn gốc Mỹ xuất hiện trong nông trại một gia đình ở thành phố Đà Lạt (Lâm Đồng). ', N'Vườn bí ngô khổng lồ của ông Lê Hữu Phan (50 tuổi) tại thành phố Đà Lạt được cho là độc đáo bậc nhất Việt Nam. Tại đây có những quả bí khổng lồ trọng lượng gần 100 kg.
Ông Phan có kinh nghiệm nhiều năm làm cho một công ty Nhật Bản về giống cây trồng, sản xuất nông sản. Sau khi nghỉ làm, ông ở nhà trồng rau củ quả kinh doanh riêng. Đầu năm 2011, qua sự giới thiệu và giúp đỡ của bạn bè ở Mỹ, ông đã mua khoảng 100 hạt giống bí ngô khổng lề về trồng thử tại Đà Lạt.
Ban đầu ông Phan chưa có nhiều kinh nghiệm việc trồng và chăm sóc hết sức khó khăn, trái không to. Nhưng sau một thời gian nghiên cứu ông đã thành công trồng giống bí kỳ thú này. Riêng hoa của loại này cũng lớn khác thường.
Anh Lê Nguyễn Phúc Đăng - con ông Phan chia sẻ, gia đình trồng 3 loại bí: giant (khổng lồ) trọng lượng đến hơn 100 kg nhưng dễ hỏng, khó để lâu, champion (vô địch) trọng lượng vài chục kg nhưng màu đỏ đậm đẹp, để được vài năm. Riêng loại polar bear (gấu trắng bắc cực) có trọng lượng vài chục kg, màu trắng đẹp. 
Thường sau hai tháng, bí đạt trọng lượng khoảng 40 kg, 4 tháng gần 80 kg. Giá bí cũng tăng dần theo trọng lượng: Dưới 50 kg là 5 triệu. Cứ tăng mỗi 50 kg sẽ tăng thêm 5 triệu.
Hiện nay vườn bí của anh có 8 dây với khoảng 10 trái cho 3 loại. Trái lớn nhất đạt khoảng 70 kg, còn trung bình từ 20 đến 40 kg. Ngày bình thường có khoảng 50 khách ghé thăm. Vào dịp cuối tuần có khoảng 100-200 khách tùy thời điểm.
', N'83_2016-01-08-16-45-48_bingo8_zing.jpg', 1, NULL, N'83_2016-01-08-16-45-52_bingo4_zing.jpg', CAST(0xe23a0b AS date), 6)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (17, N'Viêm mũi xoang dị ứng có thể điều trị khỏi', 1, N'Viêm mũi xoang dị ứng là một căn bệnh phổ biến và gây ra nhiều khó chịu đối với người bệnh. Số bệnh nhân đang có khuynh hướng tăng dần trong mấy năm gần đây.', N'Th.S, BS Nguyễn Minh Hảo Hớn, Khoa Mũi Xoang, Bệnh viện Tai Mũi Họng TPHCM cho biết, nhiều người thường nhầm lẫn giữa viêm mũi xoang dị ứng và viêm xoang do vi trùng, vì thế dẫn đến những suy nghĩ sai lầm như “không bao giờ điều trị khỏi” hoặc "có mổ cũng tái phát lại". Nhiều bệnh nhân đã buông xuôi dẫn đến hậu quả bệnh ngày càng trầm trọng hơn. Thậm chí bệnh gây ra các chứng nặng như biến chứng ổ mắt, viêm thanh quản dai dẳng, viêm xoang polyp mũi.
Viêm mũi xoang dị ứng được phân thành hai loại: viêm mũi xoang dị ứng theo mùa và quanh năm. Ở Việt Nam, nguyên nhân gây bệnh đa phần do môi trường ô nhiễm. Triệu chứng điển hình là hắt hơi từng tràng dài, liên tục. Chảy nước mũi trong và ngứa mũi, ngứa mắt, ngứa tai. Ngoài ra bệnh nhân có thể nghẹt mũi; nhức đầu nhẹ, ù tai, đau mũi... Nếu không điều trị, bệnh có thể bội nhiễm gây chảy mũi đục, nhức đầu nhiều hơn, ho, khạc đàm...

Theo BS Hảo Hớn, viêm mũi xoang dị ứng là bệnh có thể điều trị khỏi. Để điều trị bệnh, trước hết  bệnh nhân phải điều trị nhiễm trùng tiềm tàng ở vùng tai mũi họng như: viêm Amidan hốc mủ, nhiễm trùng răng miệng hay viêm xoang thể im lặng. Nếu viêm mũi xoang dị ứng chưa có bội nhiễm, bệnh nhân chỉ cần sử dụng thuốc corticoid dạng uống hoặc thuốc kháng dị ứng và corticoid dạng xịt mũi theo chỉ định nghiêm ngặt của bác sĩ.

Bệnh nhân chỉ được chỉ định phẫu thuật khi không điều trị hoặc điều trị không đúng cách dẫn đến viêm xoang polyp mũi gây tắc nghẽn các lỗ thông xoang; vách ngăn vẹo nhiều; gai, mào vách ngăn chạm vào cuốn mũi gây kích thích niêm mạc xuất tiết; cuống mũi quá phát không còn đáp ứng với điều trị nội khoa.

Để phòng bệnh, trước hết phải tăng sức đề kháng cơ thể như: không được thức quá khuya, ăn uống nghỉ ngơi đầy đủ không bỏ bữa, làm việc không quá sức kéo dài, giảm stress, bổ sung vitamin C hợp lý;

Bên cạnh đó, nên tránh tác nhân gây dị ứng như khói bụi, mùi xăng dầu bằng cách đeo khẩu trang khi ra đường và đến nơi đông người; không nên bơi ở các hồ bơi không đảm bảo vệ sinh; không để cơ thể nhiễm lạnh (ngủ máy lạnh nhiều, thường xuyên, nhiễm nước mưa, giữ ấm cơ thể)…', N'83_2016-01-08-17-35-46_1448873667-viem-xoang.jpg', 1, NULL, N'&amp;nbsp;', CAST(0xe23a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (18, N'Nỗi khổ “sống chung” với bệnh viêm mũi xoang dị ứng', 0, N'Viêm mũi xoang dị ứng (VMXDU) là một căn bệnh phổ biến và gây ra nhiều khó chịu đối với người bệnh. Số bệnh nhân  đang có khuynh hướng tăng dần trong mấy năm gần đây. Những trường hợp dị ứng từ môi trường làm việc như ở các xí nghiệp da giày, cắt may, hóa chất gia tăng đáng kể.', N'Viêm mũi xoang dị ứng có thể gây biến chứng

Nói về nỗi khổ của bệnh VMXDU, chị Nguyễn Thị Quỳnh Hoa (28 tuổi, quận 7, TPHCM) chia sẻ: “Tôi sống chung với căn bệnh này từ 8 năm nay, bệnh cứ tái phát liên tục. Mới đây, khi mang bầu bệnh càng trở nặng hơn vì tôi không sử dụng bất cứ một loại thuốc nào. Hiện tại, bệnh hành khiến tôi ngứa mũi, đau họng đến khốn khổ. Đi bệnh viện, khám, bác sĩ kê thuốc nhưng tôi lo lắng không dám uống vì sợ ảnh hưởng đến con”.

Cũng tình cảnh tương tự, chị Lê Ngọc Liên (26 tuổi, quận Bình Tân, TPHCM kể: “Tôi cũng bị viêm mũi dị ứng quanh năm. Trước đây, tôi điều trị bằng thuốc. Nhưng khi mang thai, tôi không dám đụng đến thuốc nữa vì ít nhiều thuốc sẽ gây ảnh hưởng ít nhiều đến thai nhi. Bác sĩ tư vấn cho tôi một cách để đỡ hắt hơi và ngạt mũi là đánh răng thật sạch, sau đó ngậm đầy họng nước muối sinh lý, cúi thấp người ra phía trước để nước muối đi vào các xoang mũi”.

Giải thích về bệnh VMXDU, Th.S, BS Nguyễn Minh Hảo Hớn, Khoa Mũi Xoang, Bệnh viện Tai Mũi Họng TPHCM cho biết, viêm mũi dị ứng là thuật ngữ được dùng trước đây, đến năm 1995 Hội nghị Mũi xoang tại Mỹ đã thống nhất sử dụng thuật ngữ viêm mũi xoang dị ứng. Vì mũi và xoang được lót chung 1 tấm niêm mạc. Nhiều người thường nhầm lẫn giữa VMXDU và viêm xoang do vi trùng. Do đó, căn bệnh viêm mũi xoang dị ứng cũng phát sinh những suy nghĩ sai lầm như  “không bao giờ điều trị khỏi” hoặc "có mổ cũng tái phát lại". Nhiều bệnh nhân đã buông xuôi dẫn đến hậu quả bệnh ngày càng trầm trọng hơn. Thậm chí bệnh gây ra các chứng nặng như biến chứng ổ mắt, viêm thanh quản dai dẳng, viêm xoang polyp mũi.

VMXDU được xếp trong nhóm bệnh hen suyễn, chàm da và nổi mề đay. Ngày nay, bệnh được công nhận là bệnh có yếu tố gia đình và mang tính chất di truyền. Trong một gia đình có ba hoặc mẹ bị VMXDU, xác suất con sinh ra có khả năng bị bệnh này là 30%. Nếu cả 2 cùng bị bệnh thì khả năng người con tăng lên là 50-75%.

VMXDU được phân thành hai loại, VMXDU theo mùa và quanh năm. Ở Việt Nam, nguyên nhân gây bệnh đa phần do môi trường ô nhiễm. Triệu chứng điển hình là hắt hơi từng tràng dài, liên tục. Chảy nước mũi trong và ngứa mũi, ngứa mắt, ngứa tai. Ngoài ra bệnh nhân có thể nghẹt mũi; nhức đầu nhẹ, ù tai, đau mũi... Nếu không điều trị, bệnh có thể bội nhiễm gây chảy mũi đục, nhức đầu nhiều hơn, ho, khạc đàm...

Điều trị bệnh viêm mũi xoang dị ứng

Cũng theo BS Hảo Hớn, chú trọng điều trị bệnh VMXDU sớm sẽ đạt kết quả tốt. Để điều trị bệnh, trước hết  bệnh nhân phải điều trị nhiễm trùng tiềm tàng ở vùng tai mũi họng như: viêm Amidan hốc mủ, nhiễm trùng răng miệng hay viêm xoang thể im lặng. Nếu VMXDU chưa có bội nhiễm, bệnh nhân chỉ cần sử dụng thuốc corticoid dạng uống hoặc thuốc kháng dị ứng và corticoid dạng xịt mũi theo chỉ định nghiêm ngặt của bác sĩ. Với cách điều trị này, bệnh nhân được kiểm tra hàng tuần đến khi nào hết triệu chứng và nội soi thấy hết xuất tiết, niêm mạc hồng hết phù nề thì có thể ngưng thuốc.

Nếu hai phương pháp trên thất bại, bác sĩ có thể tư vấn để bệnh nhân sử dụng liệu pháp điều miễn dịch (Imunotherapy) hay còn gọi giải mẫn cảm,  kiểm tra để tìm dị nguyên (hiện tại chưa có thuốc sử dụng tại Việt Nam). Tỉ lệ thành công của phương pháp này là 90%. Bệnh nhân chỉ được điều trị phẫu thuật khi không điều trị hoặc điều trị không đúng cách dẫn đến viêm xoang polyp mũi gây tắc nghẽn các lỗ thông xoang; vách ngăn vẹo nhiều; gai, mào vách ngăn chạm vào cuốn mũi gây kích thích niêm mạc xuất tiết; Cuống mũi quá phát không còn đáp ứng với điều trị nội khoa.

Bác sĩ Hảo Hớn cho rằng, bệnh VMXDU có thể điều trị khỏi. Để phòng bệnh, trước hết phải tăng sức đề kháng cơ thể như: không được thức quá khuya, ăn uống nghỉ ngơi đầy đủ không bỏ bữa, làm việc không quá sức kéo dài, giảm stress, bổ sung vitamin C hợp lý;

Bên cạnh đó, mọi người nên tránh tác nhân dị ứng như khói bụi, mùi xăng dầu bằng cách mang khẩu trang khi ra đường và đến nơi đông người; không nên bơi ở các hồ bơi không đảm bảo vệ sinh; không để cơ thể nhiễm lạnh (ngủ máy lạnh nhiều, thường xuyên, nhiễm nước mưa, giữ ấm cơ thể). Phụ nữ phải sấy tóc khô sau khi tắm gội vào buổi tối.', N'83_2016-01-08-17-58-47_HCM-319357-1.jpg', 1, NULL, N'&nbsp;', CAST(0xe23a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (19, N'Phòng khám bác sĩ Hớn chỉ ra Sai lầm khi lạm dụng bông ngoáy tai hàng ngày cho trẻ', 1, N'Sai lầm khi lạm dụng bông ngoáy tai hàng ngày cho trẻ. Việc lấy ráy tai mỗi ngày bằng tăm bông sẽ làm rụng lông tai, dẫn đến làm hư chức năng tống chất bẩn ra ngoài cửa ống tai,', N'Thạc sĩ Nguyễn Minh Hảo Hớn, Phòng khám Chuyên khoa Tai – Mũi – Họng tại 48/4 Hồ Biểu Chánh, Quận Phú Nhuận, thành phố Hồ Chí Minh cho biết: Nhiều cha mẹ thường sử dụng bông ngoáy tai để làm sạch ráy tai và loại bỏ các bụi bẩn trong lỗ tai cho trẻ sơ sinh. Việc làm này không nguy hại đến thính giác của trẻ và cũng không gây viêm tai giữa. Tuy nhiên dùng bông ngoáy tai không cẩn trọng và đúng cách cho thể gây ảnh hưởng đến trẻ nhỏ.
Thêm vào đó, theo một số chuyên gia chuyên khoa Tai – Mũi – Họng khác,  các mẹ cũng không nên lạm dụng việc sử dụng tăm bông để ngoáy tai cho trẻ hàng ngày. Một tuần nên làm sạch tai cho trẻ từ 2-3 lần. Bởi vì việc lấy ráy tai mỗi ngày bằng tăm bông sẽ làm rụng lông tai, dẫn đến làm hư chức năng tống chất bẩn ra ngoài cửa ống tai, từ đó trẻ hay bị viêm ống tai ngoài và hay có ráy tai hơn.

Khi dùng bông ngoáy tai cho trẻ sơ sinh và trẻ nhỏ, các mẹ cần lưu ý những điều sau:

- Các bậc phụ huynh phải vệ sinh đúng cách và sát trùng tay sạch sẽ trước khi ngoáy tai cho trẻ.

- Bông ngoáy tai không đáng sợ như nhiều mẹ vẫn nghĩ. Khi trẻ gặp nước, mẹ vẫn có thể dùng cho con. Tuy nhiên, các mẹ cần thao tác hết sức nhẹ nhàng tránh gây trầy xước ống tai của trẻ.

- Hết sức cẩn thận vì khi dùng bông ngoáy tai bé có thể hất tay phản ứng hay mọi người xung quanh tác động vào có thể gây thủng màng nhĩ của bé. Màng nhĩ của trẻ có thể bị thủng dưới áp lực nhẹ, dù chỉ là chiếc tăm bông đơn thuần.

- Khi tắm cho trẻ các mẹ nên cố gắng không để nước rơi vào tai trẻ. Nếu trẻ có ráy tai, khó lấy các mẹ nên nhỏ chút nước muối sinh lý trước đó từ 2-3 ngày. Làm cách này khi ráy tai mềm sẽ tự chảy ra ngoài hoặc nếu lấy sẽ dễ dàng hơn, trẻ không bị đau rát.

- Khi trẻ đang bị viêm tai giữa cấp không nên ngoáy tai cho bé vì sẽ gây đau đớn, ảnh hưởng lớn đến tai bé.', N'83_2016-01-17-21-58-42_benh-ve-tai.jpg', 1, NULL, N'', CAST(0xe23a0b AS date), 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (20, N'Phòng Khám Bác Sĩ Hớn hướng dẫn Chăm sóc trẻ bệnh tai mũi họng', 1, N'Viêm họng, viêm amiđan, viêm phế quản, viêm phổi là những bệnh lý của đường hô hấp thường gặp ở bé dưới 5 tuổi. Biết cách chăm sóc và theo dõi khi bé bệnh sẽ giúp cha mẹ tự tin hơn và che chở được nhiều hơn cho thiên thần nhỏ bé của mình.', N'Điều trị đúng cách

Với các bệnh trên, trong giai đoạn sớm chỉ cần điều trị triệu chứng như kháng dị ứng, chống sung huyết, giảm đau, hạ sốt (khi trẻ sốt 38,5 độ C). Chỉ dùng kháng sinh, kháng viêm khi  mũi có màu vàng đục, tai có mủ….thì mới sử dụng kháng sinh, kháng viêm…

Lưu ý, phát hiện và điều trị sớm là rất quan trọng, vì biến chứng của bệnh tai mũi họng không nên xem thường. Một trong những biến chứng đáng ngại nhất là viêm xương chủm cấp, tùy theo độc tố vi trùng gây bệnh và sức đề kháng của cơ thể, hay điều trị ban đầu không đúng cách. Bé thường đau tai rất dữ dội, phía sau tai sưng nề, gây vểnh tai, sốt cao 38,5 -39 độ C.

Biến chứng đáng ngại thứ nhì là viêm sụn phễu-thanh thiệt cấp, triệu chứng thường gặp là bé đột ngột khàn tiếng và khó thở. Tác nhân gây bệnh thường là vi-rút. 

Trong những trường hợp này, bé cần được nhập viện và điều trị kịp thời, nếu không có thể dẫn đến tử vong.

Để tai mụi họng bé luôn khỏe

Cha mẹ hãy chủ động giúp trẻ tăng đề kháng và sống khỏe trong những ngày nắng nóng này. Không phức tạp, chỉ đơn giản thỉnh thoảng cho trẻ cốc nước mát (tránh nước đá lạnh dễ gây viêm họng). Hạn chế thay đổi môi trường đột ngột từ lạnh sang nóng và ngược lại. Không sử dụng hệ thống quạt nước, vì bụi và vi trùng sẽ trú ẩn trong các hạt nước khi hít vào sẽ gây bệnh. Hạn chế đi tắm nước hồ bơi, vì mùa hè rất đông người đi tắm, nguồn nước dễ bị ô nhiễm…

Tăng sức đề kháng cho trẻ qua chế độ ăn uống, nghỉ ngơi hợp lý, uống nhiều nước cam, chanh…Đặc biệt là phải vệ sinh tay chân trẻ sạch sẽ, đến nơi đông người nên mang khẩu trang cho trẻ, cha mẹ phải thường xuyên rữa tay bằng dung dịch sát khuẩn khi cho trẻ ăn và chăm sóc trẻ ….

Khi có những triệu chứng gợi ý trên, cần đưa trẻ đến bác sĩ tai mũi họng để có thăm khám và điều trị thích hợp.

Mách bạn

Để tránh sự thay đổi nhiệt độ cơ thể đột ngột giữa trong nhà có điều hoà với nắng nóng bên ngoài, khi từ phòng lạnh bước ra ngoài nên mở to cửa và giữ trẻ đứng ở cửa khoảng 2 đến 3 phút để cơ thể thích nghi với không khí, nhiệt độ mới và nên uống nhiều nước để chống khô họng.', N'83_2016-01-08-18-6-45_cach-cham-soc-tre-so-sinh-1-thang-tuoi-tot-nhat-phat-trien-toan-dien-cac-me-nen-biet.jpg', 1, NULL, N'&amp;nbsp;', CAST(0xe23a0b AS date), 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (21, N'Một bệnh nhân bị ‘ăn mặt’ điều trị thành công', 1, N'Phòng khám Bác Sĩ Hớn Chuyên Khoa Tai Mũi Họng Khuyên. Cần ăn uống đầy đủ dinh dưỡng, vệ sinh răng miệng sạch sẽ để phòng bệnh cam tẩu mã.', N'Phòng khám Bác Sĩ Hớn Chuyên Khoa Tai Mũi Họng chia sẻ Bệnh nhân Huỳnh Văn Đạt (51 tuổi, ngụ xã Hậu Thành, huyện Cái Bè, Tiền Giang) được các bác sĩ (BS) chẩn đoán nghi mắc bệnh cam tẩu mã. Bệnh này do đâu, tiến triển thế nào, có điều trị hết không?

Trước đó, tháng 2-2015, một nam bệnh nhân 27 tuổi ở Bình Phước đến BV Tai Mũi Họng (TP.HCM) khám bệnh vì sưng mặt, mắt, miệng có mùi hôi thối… Qua khám lâm sàng, các BS xác định bệnh nhân bị viêm xoang hoại tử xoang hàm sàng hốc mắt, nghi ngờ mắc bệnh cam tẩu mã. 

Do bệnh nhân đến trong giai đoạn sớm, các BS đã tiến hành cắt lọc, rửa mô hoại tử và điều trị khỏi cho bệnh nhân trong vòng ba tuần vì chưa có tình trạng hoại tử các mô xung quanh. Kết quả kháng sinh đồ sau đó khẳng định bệnh nhân nhiễm vi trùng Steptococcus SPP không tán huyết (một trong bốn vi trùng gây bệnh cam tẩu mã).
Các BS cảnh báo những người có cơ địa thuận lợi cho bệnh cam tẩu mã phát triển là trẻ suy dinh dưỡng (đặc biệt là thiếu vitamin nhóm B, vitamin A), vệ sinh răng miệng kém, người bệnh sống gần vùng ô nhiễm nặng như bãi rác, chuồng gia súc mất vệ sinh và người bệnh suy giảm miễn dịch bao gồm AIDS.

BS Nguyễn Minh Hảo Hớn, khoa Mũi Xoang BV Tai Mũi Họng, cho biết bệnh cam tẩu mã là bệnh viêm họng miệng hoại tử lan rộng. Bệnh thường xuất hiện đầu tiên ở lợi hay niêm mạc má. Sau đó bệnh lan nhanh ra các vùng xung quanh, làm thủng khẩu cái cứng (thành trên miệng), thông vào hốc mũi ở sàn mũi. 

Theo diễn tiến, bệnh từ đây hoại tử lan rộng dần, nếu bệnh nhân không được điều trị sớm (như bệnh nhân Đạt ở Tiền Giang) thì vi trùng sẽ ăn sứt mũi ngoài, lan ra xương gò má, mắt, ăn dần lên não và tử vong.

Trước đây bệnh thường gặp ở các nước kém phát triển như châu Phi và trên trẻ nhỏ từ sáu đến 10 tuổi có tình trạng suy dinh dưỡng, suy kiệt thường theo sau một đợt bệnh sởi, thương hàn hay một số bệnh nhiễm trùng khác.

BS Hớn cho biết bệnh cam tẩu mã bắt đầu bằng vết loét hoại tử to bằng hạt đậu xanh, ngày càng lan rộng. Tùy theo cơ địa mỗi người mà bệnh diễn tiến nhanh hay chậm.

BS Hớn lưu ý là cần phân biệt bệnh cam tẩu mã với bệnh viêm họng Aphtose (vết loét ở miệng nông). Bệnh này thường tự khỏi trong vòng 7-10 ngày và tái phát vào mùa trăng hay còn gọi là đẹn trăng.

Về điều trị, theo BS Hớn, đầu tiên là phết mủ vết mổ làm kháng sinh đồ (xem vi trùng nhạy với loại kháng sinh nào) và lấy mẫu thử giải phẫu bệnh. Kháng sinh được sử dụng cho bệnh nhân theo kết quả kháng sinh đồ. Thứ hai, cắt lọc mô hoại tử. Thứ ba, trong trường hợp hoại tử lan rộng làm mất cấu trúc vùng họng miệng, cánh mũi, sống mũi ngoài thì sau khi điều trị sạch vi trùng (4-8 tuần) có thể tái tạo lại chức năng và chỉnh hình thẩm mỹ cho bệnh nhân.', N'83_2016-01-08-18-10-44_13-tin_apjf.jpg', 1, NULL, N'&nbsp;', CAST(0xe23a0b AS date), 5)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (22, N'Phát minh mới giúp phòng tránh thai chỉ bằng một công tắc đóng/mở ', 1, N'Một thợ mộc đến từ Berlin đã sáng chế ra một công tắc có khả năng ngắt dòng chảy của tinh dịch từ tinh hoàn của đàn ông, khiến cho họ trở nên vô sinh tạm thời.
', N'Người thợ mộc này đã phát minh ra một chiếc van mà theo ông sẽ là một cách mạng trong công cuộc tránh thai, bằng cách khiến cho nam giới có thể đóng mở dòng chảy của tinh dịch chỉ bằng một nút bấm.

Clemens Bimek đã trả lời tạp chí Spiegel rằng ý tưởng lần đầu đến với ông là vào 20 năm trước, khi ông đang xem một chương trình tivi về phòng tránh thai, và ông nghĩ rằng liệu có một cách nào đó có thể điều khiển được dòng chảy của tinh dịch chỉ với một chiếc van đơn giản.

Khi ông phát hiện ra chưa hề có một ai áp dụng phương pháp này, ông đã quyết định tự phát triển cho riêng mình.

“Rất nhiều vị bác sĩ khi tôi tìm đến để được tư vấn đều cho đây là chuyện đùa. Nhưng vẫn có một vài người đã khuyến khích tôi tìm hiểu thêm và giúp tôi bằng chuyên môn của họ,” ông Bimek nói.

Và giờ đây, chiếc van này đã được phát triển để được cấy ghép cho 25 người đàn ông trong một cuộc thử nghiệm trong năm tới. Những chiếc van này rất nhỏ, chỉ dài hơn khoảng 2cm và nặng khoảng 2g. Chúng sẽ được phẫu thuật cấy ghép lên ống dẫn tinh, nơi vận chuyển tinh dịch từ tinh hoàn, một tiểu phẫu chỉ kéo dài trong nữa giờ.

Chúng được điều khiển bởi một nút bấm đóng/mở rất đơn giản mà những người được cấy ghép có thể chạm tới chúng ở ngay dưới cơ quan sinh dục của mình. Cho tới nay, Bimek là người đàn ông duy nhất được cấy ghép thiết bị này. Ông tiến hành ca phẫu thuật bằng cách gây mê cục bộ để có thể hướng dẫn được cách cấy ghép.

Hartwig Bauer, một nhà niếu quản học đã thực hiện ca phẫu thuật này, nói với Bimek rằng chiếc van này được ưa thích hơn là thắt ông dẫn tinh.

“Một phần ba số bệnh nhân muốn được phẫu thuật, nhưng không phải cứ muốn là được,” ông nói.

Nhưng cũng có những vị bác sĩ tỏ ra lo ngại với công nghệ mới này.

“Theo quan điểm của tôi, việc cấy ghép chiếc van này có thể gây ra những xước sẹo nơi chúng tiếp xúc với ống dẫn tinh,” trích lời Wolfgang Bühmann, người phát ngôn của Hiệp hội niếu quản học Đức. Ông cảnh báo rằng những vết sẹo này có thể ngăn cản dòng chảy của tinh dịch ngay cả nghi van được mở. Ông cũng lo ngại rằng van có thể bị tắc sau một thời gian dài nếu nó để ở chế độ đóng quá lâu.

“Những bộ phận cấy ghép làm bởi vật liệu này vốn đã được dung nạp rất ổn tại những bộ phận khác trên cơ thể,” Anneke Loos, người đứng đầu của một trung tâm thử nghiệm các sản phẩm y tại tại Hannover cho biết.

“Câu hỏi đặt ra là liệu nó có xảy ra vấn đề gì khi được cấy ghép lên vùng nhạy cảm này của cơ thể hay không.”
', N'83_2016-01-09-18-57-30_phat-minh-moi-giup-phong-tranh-thai-chi-bang-mot-cong-tac-dongmo.jpg', 1, NULL, N'83_2016-01-09-18-57-34_phat.jpg', CAST(0xe33a0b AS date), 6)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (23, N'Phòng khám bác sĩ Hớn trình bày nỗi lo  Nuốt vướng... Lo đến mất ngủ.', 1, N'1. Nuốt vướng là cảm giác mà bệnh nhân cảm thấy có vật gì trong cổ như hạt cát, sợi tóc, hạt đậu hay khối u ( lành tính kyst đáy lưỡi, kyst rãnh lưỡi thanh thiệt.., u ác tính như ung thư hạ họng, u thư thanh thiệt...)', N'1. Nuốt vướng là cảm giác mà bệnh nhân cảm thấy có vật gì trong cổ như hạt cát, sợi tóc, hạt đậu hay khối u ( lành tính kyst đáy lưỡi, kyst rãnh lưỡi thanh thiệt.., u ác tính như ung thư hạ họng, u thư thanh thiệt...)
2. Nguyên nhân nào gây nuốt vướng?
- Gặp nhiều nhất là viêm họng mạn tính do trào ngược dạ dày thực quản ( GERD) , niêm mạc họng phù nề, dày lên, tăng sinh hệ thống limpho ... lâu ngày tạo hạt ( trước đây được gọi là viêm họng hạt, loạn cảm họng). Bệnh này hay gặp ở những người hút thuốc lá, uống nhiều bia rượu, ăn khuya, có thói quen ăn nhiều gia vị cay, đồ chiên xào dầu mở...
- Nguyên nhân ít gặp hơn là viêm mũi xoang tiềm tàng, bênh nhân không có triệu chứng viêm xoang như nghẹt mũi, chảy mũi, nhức đầu... Nhưng khi nội soi mũi họng phát hiện nhiều mủ đục chảy từ mũi ra thành sau họng xuống họng gây vướng họng rất nhiều.
- Nguyên nhân thứ 3 là kyst hạ họng và đáy lưỡi ( dạng u lành tính) bệnh này thường có chỉ định phẫu thuật khi kyst lớn và gây nuốt vướng nhiều. Ít gặp hơn là dài mỏm trâm, thường gây nuốt vướng và nuốt đau ơ dưới hàm, vùng Amidan. Trường hơpj này nội soi họng không phát hiện được chỉ Chụp CT scan sẽ cho chẩn đoán chính xác.
- Nguyên nhân ít hơn nhưng tuyệt đối không được bỏ sót là ung thư hạ họng ( đây là ung thư thường gặp đứng thứ 3 trong TMH sau ung thư vòm và ung thư mũi xoang). Thường bệnh nhân nuốt vướng và nuốt đau. Hạch cổ thường cứng chắc, di động kém.
4. Làm thế nào khi nuốt vướng?
- Để không phải lo lắng đến mất ngủ, Bn nên đến những nơi chuyên khoa uy tín để được thăm khám và nội soi khi cần thiết. Vì mất ngủ sẽ làm hiện tượng trào ngược nặng thêm, bn dễ mất sức đề kháng dễ bội nhiễm thêm vi trùng.
- Điều trị bệnh không khó nhưng bệnh nhân cần tuân thủ điều trị và nếp sinh hoạt hàng ngày để tránh tái phát.
- Nếu bs không có kinh nghiệm thì sẽ chỉ định cắt Amidan "oan mạng" và sau đó sẽ tăng thêm phần nuốt vướng vì loạn cảm họng sẽ gia tăng. Và bạn dễ bị viêm họng hơn vì " 2 đồng chí bảo vệ họng bạn đã bị ... cắt bỏ"
- Nếu điều trị chống trào ngược GERD 2 tuần ko giảm, bn nên đi nội soi dà dày và thử tìm vi trùng H. Pylori.
Hình 1: Kyst thanh thiệt ( to cỏ ngón tay cái)
Hình 2: Tăng sinh limpho đáy lưỡi ( cở hạt đậu)
Phòng khám bác sĩ Hớn xin cảm ơn,
 Nuốt vướng,Chửa bệnh Nuốt vướng, Nuốt vướng, Nuốt vướng là bệnh gì, Nuốt vướng, Nuốt vướng, Nuốt vướng, Nuốt vướng, Nuốt vướng,', N'83_2016-01-11-9-16-48_11049461_730413140421107_2551674018929754328_n.jpg', 1, NULL, N'83_2016-01-11-9-16-50_11750732_730413193754435_6881588556418526781_n.jpg', CAST(0xe53a0b AS date), 3)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (24, N'phòng khám tai mũi họng bác sĩ Hớn nói về Chảy máu mũi ở trẻ em như thế nào', 1, N'1. Mũi được cung cấp bởi hệ thống mạch máu dồi dào, các mạch máu tập trung lại ở phần trước vách ngăn tạo thành 1 điểm mạch Kisselbach. Đây là vị trí thường gây chảy máu mũi ở trẻ em.', N'1. Mũi được cung cấp bởi hệ thống mạch máu dồi dào, các mạch máu tập trung lại ở phần trước vách ngăn tạo thành 1 điểm mạch Kisselbach. Đây là vị trí thường gây chảy máu mũi ở trẻ em.
2. Tại sao trẻ hay chảy máu mũi?
- phòng khám tai mũi họng bác sĩ Hớn nêu Nguyên nhân thường gặp nhất là viêm mũi xoang, làm sung huyết các mạch máu, chỉ cần 1 cái hắt hơi nhẹ hoặc ngoáy mũi cũng làm vỡ điểm mạch và gây chảy máu. Kế đến là dị vật mũi bỏ quên, trường hợp này bé thường có dấu hiệu chảy mũi, chảy máu và hôi mũi 1 bên. Một số trường hợp u hốc mũi và u xơ vòm rất hiếm gặp ở trẻ nhỏ hơn 10 tuổi cũng như các bệnh lý toàn thân của hệ tạo máu như rối loạn đông máu, ung thư máu ...
3. Cần làm gì khi bé bị chảy máu mũi?
- Ba mẹ bình tĩnh cho bé ngồi trên ghế đầu hơi cúi ra trước, dùng 2 ngón tay bóp chặt cánh mùi bé lại từ 5-7 phút, hướng dẫn bé thở qua miệng. Trong trường hợp máu chảy nhiều xuống họng ồ ạt gây ngạt thở, ba mẹ cho bé nằm sấp trên đùi của mình đưa bé đến bệnh viện gần nhất ngay lập tức.
4. Những sai lầm khi xử trí chảy máu mũi.
- Ba mẹ hay bắt bé ngước mặt lên, làm như thế máu chảy xuống họng bé nuốt vào dạ dày kich ứng gây ói và cũng ko đánh giá được mức độ mất máu.
- Cho bé hít nước đá lạnh làm như thế bé dễ bị sặc và chảy máu mũi sẽ nhiều hơn.
- Tự ý mua thuốc xịt mũi sẽ làm trôi cục máu đông và sẽ chảy máu trở lại. Trong 1 số trường hợp sử dụng thuốc xịt mũi dạng co mạch ko đúng liều lượng, ko phù hợp với lứa tuổi sẽ gây biến chứng nguy hiểm cho bé.
5. Làm gì để hạn chảy máu mũi điểm mạch?
- Tránh gió, bụi, lạnh...làm khô niêm mạc mũi
- Không ngoáy mũi
- Khi bé có dấu hiệu viêm mũi phải đi khám ngay.
- Khi viêm mũi dị ứng gây ngứa mũi không được chà mạnh vào chóp mũi gây vở điểm mạch mà chỉ dùng 2 ngón tay bóp cánh mũi từng đợt.
6. Để được tư vấn điều trị đúng, nên đưa bé đến khám những nơi uy tín.
phòng khám tai mũi họng bác sĩ Hớn xin chân thành cảm ơn', N'83_2016-01-11-9-17-52_11215090_725996370862784_8808179599117939783_n.jpg', 999999999, NULL, N'&amp;nbsp;', CAST(0xe53a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (25, N'Viêm Tai Giữa Cấp ở trẻ em', 0, N'Phòng khám Tai Mũi Họng Bác Sĩ Nguyễn Minh Hảo Hớn sé nói gì về bệnh Viêm Tai Giữa Cấp ở trẻ em ', N'1. Tai được chia thành tai ngoài, tai giữa, tai trong (như hình minh hoạ)
2. Viêm tai giữa cấp là tình trạng viêm tiết dịch niêm mạc tai giữa do siêu vi đường hô hấp trên, vi trùng...thường gặp ở trẻ từ 1-6 tuổi, chiếm khoảng 30% trẻ đến khám bệnh về tai mũi họng. Có liên quan đến chức năng vòi tai (1 đầu thông vào tai giữa, 1 đầu thông với vòm mũi họng) trẻ em thường hay gặp do vòi tai ngắn và nằm ngang nên 1 viêm nhiễm vùng mũi họng sẽ dễ dàng lan lên tai giữa. Đây là điều mà ba mẹ hết sức lưu ý. Khi bé có triệu chứng chảy mũi, nghẹt mũi là đến khám ngay.
3. Những dấu hiệu cảnh báo bé bị viêm tai giữa.
- Thường sau 1-2 ngày bé có chảy mũi, nghẹt mũi, ho.., bé đột ngột đau tai, đau nhói từng cơn, bé khóc thét, thường ba mẹ hay lo sợ có con gì chui vào lỗ tai. Bé nhỏ hơn chưa biết nói thì quấy khóc hay đưa tay về phía tai. Ngoài ra có thể kèm sốt.
- Sau 24g bé không được điều trị thì màng nhĩ sẽ vở mủ, thủng màng nhĩ thoát mủ ra ngoài, bé sẽ đỡ đau hơn, đỡ quấy khóc hơn... Nếu ba mẹ chủ quan không đi khám thì hiện tượng chảy mủ dai dẵng sẽ đưa tới vtg mủ mạn tính, viêm tai xương chủm gây giảm thính lực và xa hơn là có thể viêm màng não...
- Trong trường hợp độc lực vi trùng nhẹ, sức đề kháng bé tốt, thì giai đoạn VTG tiết dịch có thể chựng lại nhưng nếu không điều trị thì sẽ diễn tiến đến vtg thanh dịch, bé sẽ nghe kém dần và mất tập trung, ảnh hưởng đến việc học tập.
4. Điều trị Vtg cấp ntn?
- Theo nhiều tài liệu nước ngoài thì 80% là do siêu vi. Tuy nhiên, trên thực tế môi trường sống chúng ta ô nhiễm nặng, nhiều bé không được vệ sinh sạch sẽ, nguồn lây phần lớn do vi trùng. Vì vậy sự quyết định sử dụng kháng sinh hay không và sử dụng loại nào tuỳ vào kinh nghiệm của bác sĩ.
- Nếu bé có điều kiện theo dõi sát, đánh giá lâm sàng không nặng, nghĩ nhiều đến siêu vi thì chỉ nên điều trị triệu chứng như kháng viêm, giảm đau và tăng sức đề kháng.
- Còn nếu nghĩ nguyên nhân do vi trùng thì phải xử dụng kháng dinh ngay và đúng phổ vi trùng. Vì 1 trong những biến chứng nguy hiểm của vtg cấp là viêm xương chủm cấp, có thể gây viêm màng não mủ đe doạ tử vong.
5. Bạn cần làm gì khi con bạn có dấu hiệu đau tai?
- Nên đưa bé đến bs chuyên khoa thăm khám để được tư vấn điều trị đúng nhất. Đừng chậm trể và tự ý điều trị tại nhà, vì vtg cần được điều trị kịp thời và chính xác. Tránh những biếng chứng khó lường.
6. Làm thế nào để hạn chế vtg cấp?
- Vệ sinh sạch sẽ, trước khi chăm sóc bé phải sát trùng tay bằng dung dich sát trùng nhanh.
- Tránh nguồn lây lan. Hàng xóm hay họ hàng có bé bị viêm mũi họng nên hạn chế cho chơi chung. Tránh đưa bé đến nơi công cộng trong những đợt cao điểm như mùa hè chuyển mưa, mùa lạnh...
- Mọi người nên tự bỏ thói quen khi gặp bé dễ thương hay dùng tay nựng vào má hay " vô tư" hôn hít, vì vi trùng sẽ dễ dàng tiếp cận cùng tai mũi họng của trẻ.
- Khi tắm, vệ sinh tai cho bé có thể sử dụng tăm bông vệ sinh ống tai ngoài nhưng hết sức nhẹ nhàng, cẩn thận..
- Các cô giáo ơ nhà trẻ hết sức lưu ý khi trong lớp có 1 bé bị bệnh mũi họng, nên vệ sinh mũi bé sạch sẽ, xì mũi ngay khi bé chảy mũi ra ngoài, tập hướng dẫn bé mang khẩu trang, vệ sinh tay, không được đưa tay quẹt mũi rồi cầm nắm đồ chơi chung sẽ dễ dàng lây bệnh cho trẻ khác.
- Trẻ sau khi bú xong, ba mẹ nên vác bé lên vai khoảng vài phút, cho bé ợ rồi mới đặt nằm xuống tránh tình trạng sửa trào ngược vào trong tai giữa.
- Đặc biệt là giữ ấm cho bé đúng và tăng sức đề kháng cho trẻ. Hạn chế cho bé ngủ máy lạnh nhiều, quá lạnh. Khi ra đương mùa lạnh, mùa mưa nên quần áo dài tay, đủ ấm, nón, tập bé mang khẩu trang... Ăn uống đầy đủ chất.
Hình 1: Giải phẫi tai
Hình 2: Viêm tai giữa cấp , màng nhĩ sung huyết.', N'83_2016-01-11-9-20-17_11311030_570048589803890_1716226892_n.jpg', 999999999, NULL, N'83_2016-01-11-9-20-42_11692767_718694114926343_9130551138191563351_n.jpg', CAST(0xe53a0b AS date), 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (26, N'Phụ Huynh cần đọc để bảo vệ trẻ từ nhỏ bệnh Dò Luân Nhĩ', 1, N'Phòng khám tai mũi họng Bs.Nguyễn Minh Hảo Hớn trình bày vấn đề Dò Luân Nhĩ', N'1. Dò luân nhĩ ( DLN) là dị tật bẩm sinh do khe mang số 1 khép không kín trong thời kỳ phôi thai, mang tính chất di truyền.
2. Đường dò là 1 ống dài có 1 miệng mở ra da thường gặp phía trước trên cửa tai, đôi khi gặp trên luân nhĩ hoặc trong ống tai ngoài. Phần cuối đường dò chui vào trong sụn vành tai.
3. Đường dò có thể dài ngắn, nông sâu, đơn giản hay phức tạp.. khác nhau, bên trong lòng ống là nang lông, tuyến mồ hôi, tuyến bã... vì vậy đôi khi bệnh nhân thấy dịch tiết màu trắng đục có mùi hơi khẩm.
4. Dò luân nhĩ có cần phẫu thuật không?
Khi đường dò không gây viêm, sưng đau thì không cần phẫu thuật. Trong trường hợp đường dò gây bít tắc, sưng viêm, áp xe... thì có chỉ định phẫu thuật. Trước khi phẫu thuật thì phải điều trị quá trình viêm và áp xe ổn định.
5. Phẫu thuật dò luân nhĩ có phức tạp không?
- Vì đường dò nằm dưới da, nên phẫu thuật khá đơn giản. Ơ bn lớn tuổi, phẫu thuật chỉ cần gây tê. Các bé nhỏ tuổi không hợp tác được thì buộc phải gây mê. Tuy nhiên, nếu phẫu thuật viên không có kinh nghiệm sẽ không lấy hết đường dò. Trong 1 số trường hợp đường dò phức tạp và đường dò trong sụn thường dễ bỏ sót.
6. Cần làm gì khi bị dò luân nhĩ?
- Không được nặn, bóp sẽ gây viêm
- Khi sưng viêm sẽ đến khám ngay để được uống thuốc.
- Không nên để lâu, khi áp xe xảy ra thì sẽ tạo sẹo xấu.
- Sẽ phẫu thuật khi dò luân nhĩ đã diễn tiến áp xe, sưng viêm tái phát 2-3 lần.
Hình 1: Dò luân nhĩ đơn giản.
Hình 2. Khi đường dò tích tụ chất tiết và lỗ dò bên ngoài bị bít tắc.

Phòng khám bác sĩ Hớn xin chân thành cảm ơn', N'83_2016-01-11-9-22-5_11421426_582962708512478_363059672_n.jpg', 1, NULL, N'83_2016-01-11-9-22-6_11356320_583131438495605_1624876516_n.jpg', CAST(0xe53a0b AS date), 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (27, N'Quan điểm mới về điều trị viêm xoang. ', 0, N'Phòng khám tai mũi họng Bs.Nguyễn Minh Hảo Hớn trình bày vấn đề điều trị Viêm Xaong', N'1. Những quan niệm sai lầm về bệnh viêm xoang.
- Viêm xoang ( Sinusitis) là thuật ngữ mà bệnh nhân hay sử dụng để chỉ những triệu chứng thường gặp như: Chảy mũi, nghẹt mũi, nhức đầu....theo Hội Tai Mũi Họng Mỹ 1995 đã thống nhất dùng thuật ngữ viêm mũi xoang (Rhinosinusitis), bởi vì hốc mũi và hốc xoang được lót chung niêm mạc. Tuỳ nguyên nhân gây bệnh, thời gian và mức độ nặng của bệnh, viêm mũi xoang ( VMX) được chia ra thành viêm mũi xoang cấp ( < 4 tuần), viêm mũi xoang mạn tính ( > 12 tuần), viêm mũi xoang xuất tiết, VMX xuất tiết bội nhiễm, VMX dị ứng... Và tuỳ vào vị trí các xoang mà chẩn đoán có thể là viêm xoang hàm, viêm sàng hàm, viêm xoang bướm, viêm đa xoang....
- Nhức đầu chỉ là một triệu chứng hay gặp trong VMX. Ngoài ra gặp rất nhiều trong 1 số bệnh như nhức đầu vận mạch, do cao huyết áp, điểm tiếp xúc....
2. Làm thế nào để cho chẩn đoán chính xác?
- Bệnh nhân sẽ được khám bệnh, khám qua nội soi mũi xoang, hoặc chụp XQ xoang thường qui, CT scan...sẽ cho chẩn đoán chính xác.
3. Điều trị viêm mũi xoang như thế nào cho đúng? Có nhất thiết cứ viêm xoang là mổ hay ko?
- Tuỳ vào nguyên nhân, mức độ nặng nhẹ mà có phát 1 đồ điều trị chính xác. Một số nguyên nhân như viêm xoang do nấm, viêm xoang kèm po lýp to, viêm xoang do u nhú, u nhầy... Sẽ được phẫu thuật để loại bỏ bệnh tích ..
- Trong trường hợp viêm xoang mạn tính mà không có các bất thường về giải phẫu, không gây bít tắt dẫn lưu xoang... Cần được điều trị tối thiểu 4 tuần. Tuỳ vào đáp ứng lâm sàng mà Bs điều trị sẽ tiếp tục cho đến tối đa 12 tuần.
- Khi điều trị nội từ 2 tuần trở lên mà lâm sàng không cải thiện, bệnh nhân còn nhức đầu, nghẹt mũi nhiều, kiểm tra CTscan so với phim trước điều trị không tốt hơn thì cân nhắc phẫu thuật.
4. Phẫu thuật xoang có khỏi bệnh ko?
Đây là 1 câu hỏi thường gặp ở bn trước khi được phẫu thuật xoang. Trước hết, nếu nguyên nhân do nấm sau khi loại bỏ nấm, nguyên nhân do bất thường cấu trúc giải phẫu gây bít tắt lỗ thông xoang sau khi phẫu thuật các bít tắt được giải quyết ... Thì bệnh nhân có thể khỏi bệnh hoàn toàn. Điều này còn tuỳ thuộc vào tay nghề của phẫu thuật viên, bệnh nhân có đi tái khám sau mổ đầy đủ hay không?!
- Trong một số trường hợp viêm xoang do u nhú ngược, do cơ địa dị ứng.. Thì khả năng tái phát cao. Tuy nhiên, không phải vì lý do này mà bn ko đồng ý phẫu thuật. Bởi vì nếu bn ko được phẫu thuật sớm u nhú sẽ lan rộng và khả năng tái phát sau mổ sẽ càng cao hơn và 1 số trường hợp gây ung thư hoá cần phát hiện sớm.
5. Phải làm gì khi nghi ngờ bị viêm xoang?
- Nên đến khám tại những bv uy tín, bác sĩ có kinh nghiệm. Bạn sẽ được tư vấn điều trị chính xác. Và luôn nhớ rẵng phẫu thuật mũi xoang là 1 trong những phẫu thuật đòi hỏi sự tinh tế và kinh nghiệm của phẫu thuật viên sẽ mang lại kết quả điều trị tốt nhất.
6. Những điều cần lưu ý
- Sau khi phẫu thuật bệnh nhân cần lưu ý phải tái khám đúng lịch hẹn đễ phẫu thuật viên chăm sóc vết mổ tránh sẹo dính, bít tắc...
- Khi có triệu chứng chảy mũi nghẹt mũi, nhức đầu ... Phải tái khám ngay để được điều trị sớm để hạn chế tình trạng nặng hơn phải sử dụng thuốc kéo dài hoặc po lyp lớn phải phẫu thuật lại.
- Bệnh nhân VMX dị ứng có thể có những đợt dị ứng khi thời tiết thây đổi. Đừng quan niệm rằng sau mổ sẽ khỏi hoàn toàn và cũng đừng quan niệm hết sức sai lầm là không mổ khi đã có chỉ định phẫu thuật. Vì sau phẫu thuật bệnh nhân sẽ tiếp tục điều trị nội hết sức dễ dàng.
7. Làm gì để phòng tránh bệnh viêm mũi xoang.
- Giữ sức khoẻ tốt, là sức đề kháng quan trọng nhất. Không được thức quá khuya, ăn uống nghỉ ngơi đầy đủ hợp lý.
- Tránh gió bụi..,giữ ấm, hạn chế ngủ máy lạnh số thấp, không đi hồ bơi...
- Khi cần phẫu thuật nên đến những bệnh viện uy tín và phẫu thuật viên có tay nghề cao để được chỉ định chính xác và kết quả phẫu thuật tốt nhất.
Hình 1: Viêm sàng hàm - Po lyp (T).
Hình 2: U nhú mũi xoang', N'83_2016-01-11-9-23-37_10291303_714615522000869_7382403341783423052_n.jpg', 999999999, NULL, N'83_2016-01-11-9-23-38_10325503_714615592000862_3127422813318512229_n.jpg', CAST(0xe53a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (28, N'Dị vật mũi họng pin điện tử, " sát thủ" đáng gờm, ba mẹ cần lưu ý!', 0, N'- Trẻ từ 3-6 tuổi là tuổi hiếu động, bắt đầu khám phá ra thế giới xung quanh, cộng với việc bé đi nhà trẻ nên thường nghich ngợm cho những đồ vật như hạt bẹt, hạt nhựa đồ chơi, hạt dưa... vào mũi, vào tai và vào miệng, hoăc nhét cho bạn. Nguy hiểm nhất là pin điện tử. ', N'- Trẻ từ 3-6 tuổi là tuổi hiếu động, bắt đầu khám phá ra thế giới xung quanh, cộng với việc bé đi nhà trẻ nên thường nghich ngợm cho những đồ vật như hạt bẹt, hạt nhựa đồ chơi, hạt dưa... vào mũi, vào tai và vào miệng, hoăc nhét cho bạn. Nguy hiểm nhất là pin điện tử.
1. Tại sao pin điện tử lại đáng sợ như vậy?
- Khi bé nhét pin điện tử vào mũi, nuốt vào dạ dày, có thể mắc kẹt lại ở thực quản, gặp môi trường nước, pin sẽ phóng thích a xít gây hoại tử niêm mạc lan rộng làm thủng dạ dày, thủng thực quản, thủng vách ngăn mũi, hoại tử niêm mạc mũi gây sẹo dính sau này. Trong trường hợp ko phát hiện kip thời bé có thể tử vong do mất máu, shock nhiễm trùng ...
2. Cần làm gì khi phát hiện ra dị vật?
Ba mẹ nhanh chóng đưa bé đến bv chuyên khoa Tai mũi họng khẩn cấp. Lấy dị vật càng nhanh càng tốt vì hạn chế sự hoại tử niêm mạc lan rộng. Thường bé sẽ được lấy dị vật qua gây mê, lấy sạch mô hoại tử, bơm rửa cầm máu...
3. Di chứng của pin điện tử để lại là rất lớn.
Nếu ở mũi làm thủng vách ngăn, sẹo dính gây nghẹt mũi kéo dài, viêm xoang... ở thực quản gây sẹo hẹp thực quản để lại hậu quả khó lường.
4. Cần phòng tránh là phương pháp tối ưu hơn để xảy ra sự việc.
Ba mẹ không nên cho trẻ chơi những đồ chơi có kích thước nhỏ, có thể tháo rời, tuyệt đối không chọn những đồ chơi mà sử dụng pin điện tử.
Mỗi ngày tắm rửa cho bé nên làm động tác dùng ngón trỏ đẩy chóp mũi bé lên xem, kéo vành tai nhìn vào bên trong có thể phát hiện 1 số dị vật lớn, nằm nông bên ngoài. Hoặc dặn dò bé khi bạn nhét dị vật vào TMH lên báo cho cô giáo ngay hoặc kể cho ba mẹ nghe.
Khi bé có dấu hiệu chảy mũi hôi 1 bên phải đưa bé đến khám tại những nơi chuyên khoa để được nội soi kiểm tra dị vật ngay.
P/s: Hình ảnh hoại tử đen niêm mạc hốc mũi.', N'83_2016-01-11-9-26-3_11297778_574359922706090_1283818566_n.jpg', 5, NULL, N'', CAST(0xe53a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (29, N'Ù tai, nghe kém đột ngột 1 bên tai chớ có xem thường.', 0, N'1. Ù tai là triệu chứng của bệnh tai ngoài, tai giữa, tai trong và 1 số bệnh lý toàn thân như Cao huyết áp, bệnh tim mạch, hẹp động mạch đốt sống thân nền, sử dụng 1 số thuốc tâm thần...', N'1. Ù tai là triệu chứng của bệnh tai ngoài, tai giữa, tai trong và 1 số bệnh lý toàn thân như Cao huyết áp, bệnh tim mạch, hẹp động mạch đốt sống thân nền, sử dụng 1 số thuốc tâm thần...
2. Ù tai, nghe kém một bên thường gặp do ráy tai, bán tắc vòi tai do viêm mũi họng, viêm tai giữa thanh dịch, rối loạn tuần hoàn tai trong...
3. Ù tai nghe kém 1 bên đáng lo nhất là điếc đột ngột (đđn) và u vòm ( đã được đề cập ở bài viết trước) . Trong trường hợp Đđn nhẹ bệnh nhân thường hay bỏ qua, bởi vì triệu chứng thường gặp nhất (99%) chỉ có ù tai và nghe kém, một số trường hợp bn có chóng mặt nhưng chỉ gặp ở người lớn tuổi, bn ko đau tai hay chảy tai nên thường chủ quan ko đi khám. Cần nên nhớ rằng đđn nếu phát hiện càng sớm, điều trị càng sớm thì khả năng khỏi bệnh càng cao. Nếu bn đến trể > 1 tháng thì khả năng khỏi bệnh gần như không có. Thật là đáng tiếc vì còn nhiều bệnh nhân bỏ qua tình trạng bệnh này, nhất là ở trẻ em mà cha mẹ ko quan tâm đến con kỹ càng sẽ ko phát hiện ra được, đến khi phát hiện thì đã quá muộn.
4. Một số nguyên nhân ù tai nghe kém trong bệnh cảnh viêm nhiễm thường dễ điều trị.
5. Ù tai và nghe kém do nguyên nhân tai trong có thể điều trị được là u dây thần kinh số VIII, còn các nguyên nhân khác đang còn là một thách thức lớn trong ngành TMH hiện nay trên thế giới
6. Ù tai, nghe kém do xốp xơ tai gặp ngày càng nhiều, thường ở phụ nữ tuổi trung niên, điếc kiểu tiến triển và điếc hỗn hợp. Nội soi tai màng nhĩ nguyên vẹn, phản xạ xương bàn đạp (-). Nếu bs ko có kinh nghiệm thường hay bỏ sót.
7. Phải làm gì khi ù tai và nghe kém 1 bên?
Phải đến khám bệnh tại những nơi chuyên khoa TMH uy tín và những Bs nhiều kinh nghiệm để được kiểm tra thính lực đồ, nội soi tai, soi mũi xoang kiểm tra vòm ... Để ko bỏ sót 2 bệnh cần được điều trị khẩn cấp đó là: Điếc đột ngột và u vòm.', N'83_2016-01-11-9-27-6_11311030_570048589803890_1716226892_n.jpg', 1, NULL, N'', CAST(0xe53a0b AS date), 1)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (30, N'Đừng bỏ qua dấu hiệu mờ mắt 1 bên. ', 1, N'1. Một bệnh nhân nữ 33t quê Đồng Tháp đến khám vì mờ mắt phải 3 tháng. Bệnh nhân đã khám 1 vị bs ck mắt ở quê nhà. Bệnh ko giảm mà ngày càng mờ hơn. ', N'1. Một bệnh nhân nữ 33t quê Đồng Tháp đến khám vì mờ mắt phải 3 tháng. Bệnh nhân đã khám 1 vị bs ck mắt ở quê nhà. Bệnh ko giảm mà ngày càng mờ hơn.
- Ngoài ra, thỉnh thoảng bn có nhức đầu nhẹ. Không chảy mũi, ko nghẹt mũi.
- Nội soi mũi xoang và XQ xoang thường qui hoàn toàn bình thường.
- Bn được chỉ định chụp CT Scan, phát hiện khối u nhầy ( Mucocele) ở tế bào sàng sau (P) huỷ xương xâm lấn thần kinh thị.
- Đo thị lực, mắt (P) chỉ còn phản xạ sáng tối (+)
- Bn được chỉ định phẫu thuật dẫn lưu u nhầy qua nội soi. Sau phẫu thuật thị lực bn tăng lên 1/10.
* Bàn luận:
- Bn này nếu được phát hiện sớm và phẫu thuật kịp thời thì thị lực mắt sẽ hồi phục 100%.
- Do bệnh tích nằm khu trú ở tế bào sàng sau nên thăm khám TMH thường không phát hiện bệnh. Nếu bs ko có kinh nghiệm sẽ bị bỏ sót.
- Bn lớn tuổi thường bị bỏ qua vì nghĩ bệnh nhân bị lão thị.
* Lưu ý:
- Khi bn có tình trạng mờ mắt 1 bên, đến khám tại ck Mắt nếu ko phát hiện bệnh lý tại mắt thì nên đến bv TMH để được chụp Ct Scan để ko xảy ra tình trạng bỏ qua bệnh đáng tiếc như trên.

P/s: Hình ảnh trên Ctscan cho thấy khối u nhầy tế bào Onodi xâm lấn thần kinh thị (P).', N'83_2016-01-11-9-28-1_11198762_565896813552401_876678169_n.jpg', 2, NULL, N'', CAST(0xe53a0b AS date), 5)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (31, N'Khàn tiếng có đáng lo ngại không?', 0, N'1. Khàn tiếng là triệu chứng bệnh của thanh quản, chủ yếu là từ dây thanh, ngoài ra có 1 số ít từ bên ngoài thanh quản tác động vào như chèn ép gây liệt gây thanh ...', N'1. Khàn tiếng là triệu chứng bệnh của thanh quản, chủ yếu là từ dây thanh, ngoài ra có 1 số ít từ bên ngoài thanh quản tác động vào như chèn ép gây liệt gây thanh ...
2. Khàn tiếng thường do các nguyên nhân sau: Viêm thanh quản cấp hoặc mạn tính, polyp dây thanh, hạt dây thanh, kyst dây thanh, lao thanh quản, ung thư thanh quản, liệt dây thanh 1 bên hoặc 2, trật khớp sụn phễu sau chấn thương...Tuỳ vào nguyên nhân và mức độ bệnh, bệnh nhân có những kiểu khàn giọng khác nhau. Một người thầy thuốc có kinh nghiệm sẽ cho chẩn đoán sơ bộ ban đầu chính xác khi nghe bệnh nhân nói.
3. Khàn tiếng có đáng sợ hay ko?
Khàn tiếng do ung thư, liệt dây thanh 2 bên, do lao, do di chứng sau chấn thương là những bệnh cần được chẩn đoán sớm và điều trị kịp thời. Ung thư thanh quản gặp rất nhiều ở những người nam tuổi trung niên có tình trạng hút thuốc lá. Ngày nay xu hướng gặp ở tuổi trẻ hơn, kể cả phụ nữ ko hút thuốc lá ( hút thuốc lá thụ động). Khàn tiếng do liệt dây thanh 2 bên sau phẫu thuật mổ bươu cổ sẽ gây tình trạng khó thở thanh quản nếu không phát hiện sớm bệnh nhân có thể tử vong do ngạt thở.
3. Khàn tiếng do viêm mạn tính, hạt dây thanh, polyp, kýst...có cần phải mổ không?
Nguyên nhân gây khàn tiếng do các bệnh trên thường ban đầu do viêm mũi họng ko được điều trị đúng. Thứ 2 thường ở những người sử dụng giọng nói nhiều như ca sĩ, giáo viên, buôn bán...không đúng cách. Nên sau phẫu thuật bệnh nhân rất dễ bị tái phát. Những bn này cần được hướng dẫn luyện giọng đúng cách, nếu sau 1 thời gian mà hạt, kyst, polyp ko nhỏ lại thì mới có chỉ định phẫu thuật.
Vì vậy bất cứ ai bị khàn tiếng kéo dài nên đến các cơ sở y tế chuyên khoa uy tín để được nội soi để phát hiện bệnh sớm và tư vấn cách điều trị đúng. Bởi vì không phải khàn tiếng là có chỉ định phẫu thuật.', N'83_2016-01-11-9-29-33_tre-la-het-la-yeu-to-chinh-gay-khan-tieng.jpg', 1, NULL, N'', CAST(0xe53a0b AS date), 3)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (32, N'Ung thư vòm mũi họng', 1, N'Phòng khám Bác sĩ Hớn nêu: Nguyên nhân nào gây ung thư vòm mũi họng?
- Nguyên nhân chính xác chưa được biết, tuy nhiên thường gặp ở vùng Quảng Đông (Trung Quốc) các nước Đông Nam Á.,, có thói quen ăn đồ muối, lên men, cá khô..,môi trường ô nhiễm... Ngày nay nhiều người đồng ý với vai trò của vi rút EBV ( Epstein Barr Virut ) và mang tính chất di truyền, người ta phát hiện gần 30 Gen nội sinh gây ung thư vòm di truyền cho thế hệ sau.', N'1. Nguyên nhân nào gây ung thư vòm mũi họng?
- Nguyên nhân chính xác chưa được biết, tuy nhiên thường gặp ở vùng Quảng Đông (Trung Quốc) các nước Đông Nam Á.,, có thói quen ăn đồ muối, lên men, cá khô..,môi trường ô nhiễm... Ngày nay nhiều người đồng ý với vai trò của vi rút EBV ( Epstein Barr Virut ) và mang tính chất di truyền, người ta phát hiện gần 30 Gen nội sinh gây ung thư vòm di truyền cho thế hệ sau.
2. Tại sao nhiều người ngày nay sợ ung thư vòm?
- Theo Phòng khám Bác sĩ Hớn Ung thư vòm là loại ung thư gặp nhiều nhất trong các ung thư đầu cổ, chiếm hàng thứ năm trong các loại ung thư. Nhiều người cho rằng ngày nay ung thư vòm gặp ngày càng nhiều, ý kiến này chưa thật sự chính xác lắm vì chưa có 1 nghiên cứu nào sánh tỉ lệ ung thư vòm gặp trước đây và so với hiện tại. Người ta cho rằng do ý thức chăm sóc sức khoẻ người dân ngày càng nâng cao nên họ đi khám bệnh thường xuyên hơn, nên có thể phát hiện bệnh nhiều hơn. Cộng với phương tiện truyền thông phát triển nên thông tin được lan truyền nhiều hơn.
3. Làm thế nào để phát hiện ung thư vòm sớm?
- Triệu chứng sớm của ung thư vòm là chảy máu mũi, hạch vùng cổ cứng chắc ( con sinh trước cha), nghẹt mũi, nhức đầu. Phát hiện sớm giai đoạn này thường tiên lượng tốt.
- Giai đoạn tiến triển, bệnh nhân chảy máu mũi thường xuyên hơn, khạc máu, nghẹt mũi một bên, ù tai, mũi hôi, nhức đầu nhiều hơn ....
- Giai đoạn xâm lấn, khối u xâm lấn vào hốc mắt gây mờ mắt, liệt vận nhãn... Xâm lấn vào sàn sọ...giai đoạn này thường tiên lượng xấu, khả năng sống 5 năm rất thấp.
4. Làm thế nào phát hiện ung thư vòm sớm?
- Khi bệnh nhân có những triệu chứng như chảy máu mũi, khạc máu, hạch cổ cứng chắc.,, nên được thăm khám qua nội soi mũi xoang, nếu nghi ngờ sẽ được bấm sinh thiết, bởi vì nếu được phát hiện sớm khi chưa xâm lấn tiên lượng rất tốt, chúng tôi đã có trường hợp 20 năm chưa thấy tái phát.
5. Điều trị ung thư vòm chủ yếu là hoá trị và xạ trị. Bênh nhân nên điều trị đủ liều lượng tiêu diệt hết tế bào ung thư và thăm khám định kỳ để phát hiện tái phát sớm.
Hình ảnh nghi ngờ ung thư vòm qua nội soi mũi xoang.Phòng khám Bác sĩ Hớn', N'83_2016-01-11-9-30-33_11156775_561771773964905_1134834068_n.jpg', 1, NULL, N'&amp;nbsp;', CAST(0xe53a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (34, N'Viêm V.A là gi?', 1, N'Phòng khám tai mũi họng Bs.Nguyễn Minh Hảo Hớn trình bày vấn đề Viêm V.A', N'- V.A là mô lympho nằm ở vòm, phía sau cửa mũi sau. Mô này phát triển mạnh nhất ở trẻ 6 tuổi sau đó thoái hoá dần và mất đi sau 12 tuổi. Vì vậy trẻ ở giai đoạn 2-6 tuổi nếu tình trạng viêm mũi họng, trào ngược dạ dày thực quản ( GERD) thường xuyên sẽ làm tăng sinh hệ thống này và hệ luỵ của nó làm tắt cửa mũi sau gây cho trẻ nghẹt mũi phải thở bằng miệng, ngăn chặn đường dẫn lưu của mũi xoang lâu ngày đưa đến tình trạng viêm xoang ở trẻ em, chèn ép vào vòi tai gây viêm tai giữa thanh dịch, viêm tai giữa tái phát ...
2. Vậy thì điều trị V.A như thế nào cho đúng?
Trước hết phải điều trị theo nguyên nhân, khi bé bị viêm mũi họng ba mẹ nên đưa bé đến bs ck khám và điều trị. Vì quá trinh viêm mũi họng lâu ngày sẽ làm mô VA phát triển. Nguyên nhân thứ 2 cũng thường gặp ở trẻ là GERD.
3. Khi nào thì nên nạo VA cho bé ?
Thông thường khi các nguyên nhân trên được điều trị thì VA sẽ nhỏ lại. Trong trường hợp VA quá to làm cho bé ngạt mũi, ngủ ngáy, phải thở bàng miệng... gây viêm tai giữa tái phát dai dẵng.... Thì nên có chỉ định nạo VA.
- Ngoài ra, khi quá trình viêm mũi xoang tái phát dai dẵng mà đã điều trị tich cực vẫn không khỏi, nên nạo VA để loại bỏ ổ nhiễm trùng.
4. Tại sao khi nạo VA rồi mà bé vẫn còn chảy mũi và nghẹt mũi?
- Trước hết phải kiểm tra xem bé đã điều trị viêm mũi xoang ổn chưa ( cần nội soi kiểm tra lại). Trong trường hợp bé > 5 tuổi nên chụp phim XQ xoang thường qui để tìm có viêm xoang tiềm ẩn ko?! Ngày nay thường thầy thuốc hay bỏ sót.
- Thứ 2. Cần loại trừ nguyên ngân gây dị ứng mũi ( hạn chế gió lạnh, bụi, thức ăn , nước hồ bơi ....)
Cuối cùng để đảm bảo việc điều trị kỹ lưỡng, nên đưa bé đến khám những nơi có uy tín, để được điều trị chính xác tránh trường hợp phẫu thuật vội vàng ko đúng.', N'83_2016-01-11-9-32-41_viem-va.jpg', 4, NULL, N'', CAST(0xe53a0b AS date), 2)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (35, N'Bệnh của lưỡi có đáng lo ngại ko?', 1, N'Lưỡi là khối cơ vân chắc nằm trong khoang miệng, được bao bọc bởi lớp biểu bì phân lớp, phía dưới là mô liên kết. Lưỡi được xem là cơ quan vị giác vì chứa các nụ vị giác trên bề mặt còn được gọi là gai lưỡi.
Theo thuyết kinh tượng lạc trong Đông y thì sự liên hệ của lưỡi với nội tạng thông qua sự tuần hành của kinh lạc và kinh cân. Đặc biệt là mối liên hệ Tâm, Tỳ, Vị. Do vậy khi thịnh suy khí huyết toàn thân đều phản ánh lên lưỡi. Điều này ngày nay được khoa học làm sáng tỏ ở 3 nhóm bệnh chính gây ra bệnh tại lưỡi. ', N'Lưỡi là khối cơ vân chắc nằm trong khoang miệng, được bao bọc bởi lớp biểu bì phân lớp, phía dưới là mô liên kết. Lưỡi được xem là cơ quan vị giác vì chứa các nụ vị giác trên bề mặt còn được gọi là gai lưỡi.
Theo thuyết kinh tượng lạc trong Đông y thì sự liên hệ của lưỡi với nội tạng thông qua sự tuần hành của kinh lạc và kinh cân. Đặc biệt là mối liên hệ Tâm, Tỳ, Vị. Do vậy khi thịnh suy khí huyết toàn thân đều phản ánh lên lưỡi. Điều này ngày nay được khoa học làm sáng tỏ ở 3 nhóm bệnh chính gây ra bệnh tại lưỡi.
1. Nhóm bệnh toàn thân như stress, tiểu đường, bệnh nhân bị bệnh lý đường tiêu hoá kéo dài như đau dạ dày, bệnh lý trào ngược, phụ nữ tuổi mạn kinh...
2. Nhóm bệnh hay gặp như bệnh Aphtose, chấn thương do bệnh lý răng miệng như lệch khớp hàm, răng mọc lệch ..
3. Bệnh lý viêm nhiễm như viêm gai lưỡi hay nấm lưỡi...
* Biểu hiện lâm sàng thường gặp sau:
- Gai lưỡi viêm đỏ, phù nề sưng lên làm bn có cảm giác cộm trong lưỡi, cảm thấy bỏng rát sau khi ăn nhiều gia vị và dễ chảy máu...
- Lưỡi hình bảng đồ là tình trạng có những mảng lan rộng, tự khỏi và lan ra chổ mới..
- Nức lưỡi, nức từng đường dọc, trên bề mặt lưỡi hoặc cạnh lưỡi, làm bệnh nhân cảm thấy bỏng rát...
- Lưỡi nhám trắng... thường do nhiễm nấm bề mặt, hay gặp ở những phụ nữ tuổi mạn kinh và ngày nay nhiều động thuận là do suy giảm nội tiết tố ở lứa tuổi này.
- Ngoài ra còn gặp một số dạng ít gặp khác như lưỡi mọc lông, lưỡi màu tím bầm, phù nề dày..,
*. Những lo lắng thường gặp ở bệnh nhân.
- Nguyên nhân gây bệnh không rõ ràng nên việc điều trị thường dai dẵng.
- Ảnh hưởng đến vị giác làm bn ăn uống khó khăn, đau nhức... làm trầm trọng thêm bệnh.
- Những bn viêm họng aphtose thì hay tái phát những vết aphtose ở dưới lưỡi, hãm lưỡi, cạnh lưỡi rất đau ... bn thường lo lắng có phải do ung thư lưỡi hay không?!
* Điều trị bệnh lưỡi như thế nào?
- Phải xác định chính xác nguyên nhân gây bệnh.
- Một số nguyên nhân hay gặp là Hội chứng trào ngược dạ dày- thực quản (GERD), làm việc quá sức, ăn uống không đầy đủ làm thiếu 1 số vitaminn PP, Vit C, nhóm B như (B1,B6,B12), thiếu kẽm...
- Bệnh nhân nghiện rượu, uống bia trong thời gian dài, liên tục...
- Viêm lưỡi do nấm tại chổ hay còn gọi là nấm bề mặt..
* Khi nào thì nghỉ đến ung thư lưỡi?
- Ung thư lưỡi chiếm 10-15% trong các loại ung thư và là một trong 10 loại ung thư thường gặp nhất. Hậu quả để lại nặng nề, bệnh nhân đến khám ở giai đoạn muộn thường cắt toàn phần lưỡi và tỉ lệ sống 5 năm rất thấp. Bệnh thường xảy ra ở người lớn tuổi, trên 40, hút thuốc lá, vệ sinh răng miệng kém...
* Dấu hiệu của ung thư lưỡi?
- Khi tổn thương dạng sùi, loét. Đôi khi dạng xâm nhiễm cứng, dạng sừng hoá.
- Tuy nhiên, khi 1 viêm đau, rát lưỡi... mà sử dụng kháng sinh 3 tuần không khỏi thì các chuyên gia về ung thư đầu cổ khuyến cáo phải khi đến ung thư lưỡi. Theo dõi sát, cần thiết sẽ sinh thiết gửi giải phẫu bệnh...
* Làm thế nào để hạn chế bệnh lưỡi!
- Việc đầu tiên là phải điều trị nguyên nhân bệnh như viêm nhiễm do vi trùng, vệ sinh răng miệng, bệnh trào ngược dạ dày thực quản...
- Ăn uống, nghỉ ngơi đầy đủ là "vũ khi" lợi hại nhất để hạn chế tác nhân gây bệnh tấn công
- Không uống nhiều bia rượu trong thời gian dài sẽ hạn chế hấp thu 1 số Vit nhóm B và PP...
- Thường một số dấu hiệu báo trước của các bệnh về lưỡi như cảm giác tê rát đầu lưỡi, lưỡi trắng dơ, giảm vị giác ăn kém ngon, ... Ở thời điểm này bổ sung kịp thời Vit PP, Vit C , Vit nhóm B, sắt, kẽm có nhiều trong con hào biển, rau muống, rau bồ ngót... Đặc biệt là ăn uống nghỉ ngơi đầy đủ sẽ hạn chế được bệnh tiến triển.
- Thường thì bn đến khám bệnh ở giai đoạn trể, lưỡi đã bị tổn thương nên khó hồi phục. Mặt khác, ung thư lưỡi cũng cần phát hiện sớm để hiệu quả điều trị tốt hơn.
- Lời khuyên cho bn bị bệnh về lưỡi, nên đi khám sớm để hiểu rõ bệnh, tránh lo lắng làm nặng thêm. Nên chọn bs có chuyên môn tốt, để tìm nguyên nhân chính xác, điều trị hiệu quả đỡ tốn kém, khi cần theo dõi trong thời gian dài, để phát hiện sớm dấu hiện xấu hơn...
Hình 1. Mặt lưỡi nhám trắng do nấm tại chỗ.
Hình 2. Những nốt dạng hạt cạnh lưỡi ( ko nghĩ nhiều tổn thương do ung thư)', N'83_2016-01-11-14-35-28_12421613_653405398134875_341865555_n.jpg', 1, NULL, N'83_2016-01-11-14-35-30_12511727_660110264131055_1025477080_n.jpg', CAST(0xe53a0b AS date), 3)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (36, N'Điều gì xảy ra với cơ thể khi bạn uống rượu?', 1, N'Biểu hiện thường thấy khi quá chén là có nhu cầu nói nhiều, nói lắp, đi loạng choạng, phản ứng này khá nguy hiểm nhưng các đấng mày râu lại xem thường.', N'Theo Healthline, khi bạn uống rượu, chất cồn được hấp thụ vào máu và ảnh hưởng đến tất cả cơ quan trong cơ thể. Về lâu dài, điều này có thể gây hại đến sức khỏe và gây ra các căn bệnh nguy hiểm.

Hệ thống thần kinh trung ương

Một trong những dấu hiệu đầu tiên của rượu là ảnh hưởng đến hệ thống thần kinh, biểu hiện qua thay đổi hành vi. Rượu nhanh chóng xâm nhập vào não bộ và các bộ phận khác của hệ thống thần kinh trung ương. Điều đó khiến bạn khó khăn khi nói chuyện, nói lắp, thậm chí ảnh hưởng đến sự cân bằng, khả năng đi lại khi uống quá nhiều.

Uống rượu khiến việc suy nghĩ cũng như khả năng hình thành ký ức gặp khó khăn. Về lâu dài, điều này sẽ thu nhỏ các thùy trán của não bộ. Những người nghiện rượu nặng có thể bị tổn thương não vĩnh viễn, gây mất trí nhớ.

Tổn thương hệ thần kinh do rượu có thể gây đau, tê hoặc cảm giác bất thường ở bàn tay, chân, gây thiếu hụt thiamine (vitamin B1), dẫn đến cử động mắt nhanh vô thức, suy nhược hoặc liệt cơ mắt.

Hệ bài tiết

Hệ bài tiết có trách nhiệm xử lý và loại bỏ chất thải như rượu ra khỏi cơ thể. Là một phần của quá trình đó, tuyến tụy tiết ra các enzyme tiêu hóa kết hợp với dịch mật từ túi mật để giúp tiêu hóa thức ăn. Uống rượu làm ảnh hưởng đến hoạt động của tuyến tụy, gây ra hiện tượng viêm tụy, một vấn đề nghiêm trọng có thể phá hủy tuyến quan trọng này.

Bên cạnh đó, uống rượu nhiều có thể gây viêm gan do rượu có thể phát triển bệnh vàng da. Viêm gan mãn tính có thể dẫn đến xơ gan, khi gan không hoạt động hiệu quả, chất độc vẫn còn trong cơ thể của bạn, đe dọa nghiêm trọng đến tính mạng. Phụ nữ có nguy cơ cao mắc bệnh gan do rượu hơn nam giới, vì cơ thể phụ nữ có xu hướng hấp thụ nhiều rượu hơn và mất nhiều thời gian để xử lý.

Hệ thống tiêu hóa

Rượu tàn phá hệ thống tiêu hóa, từ miệng tới ruột già. Lạm dụng rượu gây tổn hại các tuyến nước bọt, gây kích ứng miệng và lưỡi, dẫn đến bệnh nướu răng, sâu răng, thậm chí rụng răng. Ngoài ra, uống rượu nhiều còn có thể gây loét thực quản, trào ngược axit và ợ nóng.

Rượu có thể cản trở đường tiêu hóa hấp thụ các chất dinh dưỡng và vitamin B hoặc kiểm soát vi khuẩn có hại. Do vậy, những người nghiện rượu thường bị suy dinh dưỡng. Bên cạnh đó, vừa uống rượu vừa hút thuốc lá làm tăng nguy cơ mắc các bệnh ung thư về đường tiêu hóa như ung thư đại tràng.

Hệ thống tuần hoàn

Trong một số trường hợp, uống rượu có gây hại cho hệ tim mạch, đặc biệt với những người nghiện rượu mãn tính. Phụ nữ uống rượu có nguy cơ tổn thương tim mạch cao hơn nam giới. Những vấn đề về hệ tuần hoàn do rượu gây ra bao gồm ngộ độc các tế bào cơ tim, nhịp tim không đều, huyết áp cao, đột quỵ, đau tim và suy tim.

Hệ thống miễn dịch

Hệ thống miễn dịch của bạn suy yếu sẽ khó có thể chống lại virus, vi khuẩn và các loại bệnh tật do lạm dụng rượu. Người nghiện rượu nặng còn có khả năng bị viêm phổi hay lao phổi, mắc ung thư cao hơn so với những người không uống.

"Chuyện ấy" và sức khỏe sinh sản

Rối loạn cương dương là một tác dụng phụ thường gặp của việc lạm dụng rượu ở nam giới. Rượu cũng có thể ức chế sự sản xuất hormone, ảnh hưởng đến chức năng tinh hoàn và gây ra vô sinh.

Ở phụ nữ, uống rượu quá mức làm tắc kinh nguyệt, gây vô sinh, đồng thời tăng nguy cơ sảy thai, sinh non hoặc thai chết lưu. Ngoài ra, nguy cơ ung thư vú cũng tăng lên cùng với việc sử dụng rượu ở nữ giới.

Hệ thống xương và cơ bắp

Sử dụng rượu lâu dài khiến cơ thể khó khăn hơn để tạo ra xương mới. Uống rượu gây nguy cơ loãng xương và gãy xương. Cơ bắp trở nên suy yếu, dễ bị chuột rút, thậm chí teo đi.

Nguồn:Zing.vn', N'83_2016-01-11-23-32-9_tac_hai_cua_ruou_1.jpg', 1, NULL, N'&nbsp;', CAST(0xe53a0b AS date), 5)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (37, N'Đánh răng ngay khi ngủ dậy? Nên hay không nên??', 1, N'Kết thúc cuộc tranh cãi, bạn nên định hướng lại khoảng thời gian sau khi thức dậy của mình.
Nếu bạn chịu khó để ý sẽ nhận ra rất nhiều thói quen sinh hoạt hàng ngày của chúng ta được hình thành từ khi còn bé: tắm sau khi đi học về, rửa tay trước khi ăn cơm, đánh răng trước khi đi ngủ và sau khi thức giấc...', N'Tuy nhiên, không phải lúc nào những thói quen này cũng đúng với khoa học. Đôi khi, chúng ta nên tự nhìn lại để hỏi xem liệu có nên duy trì chúng trong suốt quãng đời còn lại của mình. Điển hình như một câu hỏi đang gây rất nhiều tranh cãi hiện nay: Buổi sáng, ngay khi vừa ngủ dậy, bạn nên uống nước trước hay đánh răng trước?
Điều gì tốt nhất cho buổi sáng?

Trước hết, tạm để vấn đề gây tranh cãi sang một bên. Chúng ta đều thống nhất được hai điều tốt nhất cho buổi sáng: ăn bữa sáng của bạn và uống nước.

Bữa sáng chắc chắn là điều không thể thiếu nếu bạn đang muốn hướng đến một thể chất khỏe mạnh. Nó cung cấp năng lượng cho cơ thể, bổ sung glycogen cho gan, khôi phục mức glucose đồng nghĩa với sự hoạt động hiệu quả của não và toàn bộ cơ thể. Thói quen ăn sáng có lợi trong việc duy trì sức khỏe lâu dài, giảm béo phì, huyết áp cao, bệnh tim mạch và tiểu đường.

Một quá trình tương tự xảy ra với việc bạn bổ sung nước vào buổi sáng. Có rất nhiều lợi ích đến từ việc bạn uống một cốc nước ấm ngay khi thức dậy. Nó bao gồm bổ sung lượng nước bị mất trong giấc ngủ, bài tiết chất độc, thúc đẩy quá trình trao đổi chất, sản sinh tế bào máu và cơ bắp... Tất cả những lợi ích này được người Nhật Bản từ xa xưa đúc kết thành một phương pháp trị liệu đơn giản: uống nước khi thức dậy.
Trái ngược với những lợi ích to lớn đến từ việc ăn sáng và uống nước, chúng ta đánh răng buổi sáng vì cảm thấy khó chịu. Nếu như các nha sĩ đều khuyên bạn nên đánh răng 2 đến 3 lần một ngày, không ai khuyên bạn nên đánh răng ngay khi thức dậy.

Lí do bởi vì đánh răng là hoạt động giúp loại bỏ các mảng bám của thức ăn, nơi các vi khuẩn có hại phát triển trong khoang miệng của bạn. Vì vậy, thời điểm thích hợp để đánh răng là khoảng 30 phút sau khi ăn sáng. Đây là khoảng thời gian giúp lấy lại độ kiềm trung hòa trong miệng nếu bạn tiêu thụ một bữa sáng giàu axit, tác nhân có thể gây ảnh hưởng đến men răng.

Buổi sáng ngay khi thức dậy, hãy đánh răng trước khi uống nước?

Một lời khuyên sai lầm. Bởi rõ ràng việc đánh răng buổi tối đã giúp bạn loại bỏ mảng bám từ bữa ăn cuối cùng trong ngày. Vi khuẩn có hại đã bị hạn chế phát triển đến mức tối đa và bạn không nhất thiết phải đánh răng để loại bỏ mùi khó chịu trong miệng. Nhiều khi chúng lại đến từ những lợi khuẩn sản sinh enzim tốt và bạn có thể mang chúng theo xuống đường ruột bằng một cốc nước ấm.

Thêm vào đó, nếu đánh răng ngay khi thức dậy, bạn sẽ phải đánh răng thêm một lần nữa sau khi ăn sáng. Không đánh răng sau bữa sáng sẽ để lại mảng bám và chúng sẽ ở trong miệng của bạn qua bữa trưa. Sẽ là một khoảng thời gian vàng và ngôi nhà tuyệt vời đối với vi khuẩn.
Tôi nên bắt đầu một buổi sáng như thế nào?

Như vậy, rõ ràng bạn đã có câu trả lời cho mình trong việc đánh răng trước hay uống nước trước. Tuy nhiên, điều đó chỉ giúp kết thúc cuộc tranh cãi mà không giúp bạn định hướng được toàn bộ khoảng thời gian sau khi thức dậy.

Bên cạnh việc ăn sáng, uống nước, vệ sinh răng miệng, một buổi sáng của người khỏe mạnh không thể thiếu việc tập luyện thể dục. Vậy chúng ta nên sắp xếp tất cả những hoạt động này như thế nào?

Ngay sau khi thức dậy, bạn nên uống một cốc nước ấm bởi điều này chắc chắn sẽ đem lại rất nhiều lợi ích cho cơ thể. Nếu cảm thấy khó chịu và ám ảnh với hình ảnh những con vi khuẩn “làm tổ”, hãy súc miệng trước khi làm điều đó.

Khoảng thời gian tiếp theo hãy dành cho bữa sáng và việc tập luyện. Theo một nghiên cứu trên tạp chí The Journal of Physiology năm 2010, nếu bạn không tham gia hoạt động thể thao cao cấp mà đơn thuần có một bài tập nhẹ nhàng, đặc biệt trong trường hợp không muốn tăng cân, bạn nên ăn sáng sau khi tập thể dục.

Ngược lại, nếu bạn cảm thấy mình cần năng lượng cho bài tập nặng, hãy ăn sáng trước khi tập 1 đến 2 giờ đồng hồ. Một bữa sáng như vậy giúp bổ sung glycogen cho gan và lượng đường cần thiết để giải phóng năng lượng.
Sau khi ăn sáng mới là khoảng thời gian dành cho việc đánh răng. Bạn nên làm điều này một cách cẩn thận, sử dụng chỉ nha khoa và đặc biệt đừng quên cạo lưỡi. 50% vi khuẩn sẽ không phát triển trên răng bạn mà là ở bề mặt nhám của lưỡi. Mặt sau của một số loại bàn chải đánh răng sẽ giúp bạn làm điều này hoặc bạn cũng có thể mua một dụng cụ chuyên dùng.

Nói tóm lại, buổi sáng bắt đầu với việc đánh răng trước khi uống nước là một quan niệm sai lầm. Nếu còn nghi ngờ điều này, hãy tham khảo ý kiến từ phía nha sĩ của bạn. Thêm vào đó, lắng nghe cơ thể để chọn lựa cho mình một chu trình thích hợp sau khi thức dậy là chìa khóa cho bạn trong việc duy trì một sức khỏe, thể chất ổn định và phòng tránh bệnh tật.', N'83_2016-01-12-9-23-10_danh-rang-vao-buoi-sang.jpg', 999999999, NULL, N'&nbsp;', CAST(0xe63a0b AS date), 5)

GO
INSERT INTO [dbo].[tbl_new_PM] ([ID_new_PM], [Title_new_PM], [Status_new_PM], [Shortdescription_new_PM], [Description], [Img_new_PM], [Order_new_PM], [Img1_new_PM], [Img1_new_PM_], [Ceatedtime_new_PM], [Type_new_PM])
	VALUES (38, N'Hóc xương cá năm tháng mới phát hiện.......Không thể tin được tại  Phòng khám bác sĩ Hớn', 1, N'Phòng khám bác sĩ Hớn nói về Việc đùa giỡn khi ăn uống dẫn đến sặc cũng có thể khiến dị vật chui vào đường thở.', N'Nữ bệnh nhân 57 tuổi ở Phú Yên đã đi nhiều nơi, uống nhiều thuốc trong năm tháng qua nhưng triệu chứng ho khan, khàn tiếng không khỏi. Ngày 8-1, bà tìm đến BV Tai Mũi Họng TP.HCM và được bác sĩ (BS) phát hiện mảnh xương cá chui vào khí quản và nằm trong đó chính là nguyên nhân.

Mảnh xương cá chữ V

Sáng 14-1,ThS-BS Nguyễn Minh Hảo Hớn, khoa Mũi Xoang, BV Tai Mũi Họng TP.HCM, cho biết vừa thực hiện nội soi gắp ra mảnh xương cá dài 3 cm từ khí quản của bệnh nhân LTNh (56 tuổi, Phú Yên). Do bệnh nhân không có triệu chứng nhiễm trùng, thủng đường thở hay mất máu nên được cho xuất viện trong ngày. Đây là bệnh nhân bị mắc kẹt xương cá trong đường thở lâu ngày nhất từ trước đến nay.

Bệnh nhân N. kể đã năm tháng qua bà bị ho và bỗng dưng khàn tiếng nhưng không khạc ra máu, không khó thở. Bà đã đi khám rất nhiều nơi, được chụp ảnh, nội soi… và uống nhiều loại thuốc nhưng không khỏi.

“Bệnh nhân chỉ ho khan và khàn tiếng mà khàn tiếng thường gặp ở người viêm thanh quản. Bên cạnh đó, chụp X-quang thường có thể không thấy nên bác sĩ dễ bỏ qua và bệnh nhân cũng không nhớ có sặc xương cá và không khai với bác sĩ. Đây là lý do bệnh nhân đi khám rất nhiều nơi, nhiều lần mà không phát hiện” - BS Hớn cho biết.

Tuy nhiên, trong quá trình nội soi họng thanh quản, BS thấy có một nốt sùi bất thường ở vùng hạ thanh môn (nằm bên dưới hai dây thanh) nên chỉ định chụp CT kiểm tra và bất ngờ phát hiện xương cá. Trên CT thể hiện xương cá gập góc hình chữ V, hai đầu đâm vào niêm mạc khí quản. BS đã tiến hành gây mê tĩnh mạch và gắp xương cá qua nội soi.
Niềm vui bất ngờ của bệnh nhân vì khàn tiếng trong năm tháng nay đã khỏi. Ảnh: DUY TÍNH. Mảnh xương cá lấy ra từ khí quản bệnh nhân.

“Chúng tôi thực hiện đẩy ngược xương cá xuống để xem hai đầu có đâm sâu vào khí quản hay không. Nếu kéo ngược xương thì vô tình đẩy xương cá lún sâu hơn và có thể gây thủng khí quản dẫn đến tai biến chảy máu, tràn khí, áp xe nhiễm trùng trung thất và đe dọa tính mạng bệnh nhân. Trong ba phút, chúng tôi đã gắp thành công mảnh xương cá ra khỏi khí quản bệnh nhân. Lúc này mảnh xương cá đã biến màu đen, dài 3 cm, trong khi đường kính khí quản chỉ có 1,5-1,8 cm” - BS Hớn kể. 

Điều bất ngờ hơn là xương cá lấy ra không phải là hình chữ V mà chỉ hơi cong như xương cá bình thường. Điều này chứng tỏ khi bệnh nhân bị hóc, do lực nuốt mạnh đẩy xương cá cong lại, vượt qua thanh môn và chui vào khí quản nằm ở tư thế chữ V.

Khi ăn uống chớ đùa giỡn

BS Hớn cho biết thêm nếu mắc kẹt xương cá ở thanh môn, bệnh nhân sẽ khàn tiếng sớm, có triệu chứng khó thở và nội soi thường phát hiện ra ngay. Còn trường hợp này xương cá đã chui qua khỏi thanh môn, mắc kẹt ở khí quản. Đây là một trong những trường hợp rất hiếm gặp lâm sàng và rất dễ bỏ sót. Một số trường hợp khác dị vật mắc ở phế quản, bệnh nhân sẽ bị đau ngực, có thể viêm phổi, có ho, có khó thở và kèm khạc ra máu nếu X-quang phổi sẽ nghi ngờ dị vật.

“Nếu bị ho khan, khàn tiếng kéo dài uống thuốc không khỏi và trong quá khứ từng gặp hội chứng xâm nhập (ăn uống có ho sặc sụa, có cảm giác khó thở thoáng qua) thì nên kể cho BS biết để BS chỉ định chụp CT (không phải bệnh nhân nào ho, khàn tiếng cũng chỉ định chụp CT) tìm dị vật, điều trị kịp thời” - BS Hớn khuyến cáo.

Theo BS CK II Nguyễn Thanh Vinh, Phó Giám đốc BV Tai Mũi Họng, ở người lớn dị vật xương cá thường gặp ở hạ họng, thực quản. Trường hợp gặp ở đường thở với thời gian lâu như thế này thường rất hiếm. Thông thường các vị trí mắc kẹt ở thanh môn hoặc carina (chỗ chia đôi của khí quản và phế quản). Với trẻ em, dị vật đường thở thường gặp ở trẻ 1-3 tuổi. Ở lứa tuổi này, trẻ hiếu động hay chơi đồ chơi, bỏ vào miệng và nuốt, hoặc ngậm đồ chơi bị sặc, dị vật đi vào đường thở. Các loại dị vật hay gặp nhất là đồ chơi nhỏ, hạt mãng cầu, đậu phộng, hạt dưa, đầu bút bi, pin điện tử…', N'83_2016-01-18-16-9-2_13-hoc_wogb.jpg', 1, NULL, N'83_2016-01-18-16-9-6_13-hoc_wogb.jpg', CAST(0xec3a0b AS date), 3)

GO
SET IDENTITY_INSERT [dbo].[tbl_new_PM] OFF
GO

--Table dbo.tbl_silde_PM

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tbl_silde_PM] (
	[ID_silde_PM] [int] NOT NULL IDENTITY (1, 1),
	[Name_silde_PM] [nvarchar](200) NULL,
	[Img_silde_PM] [nvarchar](200) NULL,
	[Status_silde_PM] [int] NULL,
	[Order_silde_PM] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[tbl_silde_PM] ON
GO
INSERT INTO [dbo].[tbl_silde_PM] ([ID_silde_PM], [Name_silde_PM], [Img_silde_PM], [Status_silde_PM], [Order_silde_PM])
	VALUES (1, N'Slide1', N'84_2015-12-18-23-36-23_slide1.jpg', 1, 1)

GO
INSERT INTO [dbo].[tbl_silde_PM] ([ID_silde_PM], [Name_silde_PM], [Img_silde_PM], [Status_silde_PM], [Order_silde_PM])
	VALUES (2, N'Slide2', N'84_2015-12-18-23-36-37_slide2.jpg', 1, 2)

GO
INSERT INTO [dbo].[tbl_silde_PM] ([ID_silde_PM], [Name_silde_PM], [Img_silde_PM], [Status_silde_PM], [Order_silde_PM])
	VALUES (3, N'Slide3', N'84_2015-12-18-23-36-48_slide3.jpg', 1, 3)

GO
INSERT INTO [dbo].[tbl_silde_PM] ([ID_silde_PM], [Name_silde_PM], [Img_silde_PM], [Status_silde_PM], [Order_silde_PM])
	VALUES (4, N'Slide 4', N'84_2015-12-18-23-37-26_Phong-kham-da-khoa-da-nang.jpg', 1, 4)

GO
SET IDENTITY_INSERT [dbo].[tbl_silde_PM] OFF
GO

--Table dbo.tbl_type_new_PM

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tbl_type_new_PM] (
	[ID_type_new_PM] [int] NOT NULL IDENTITY (1, 1));
GO

--Table dbo.tblSysUserGroupPage

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblSysUserGroupPage] (
	[role_group_page_id] [int] NOT NULL IDENTITY (1, 1),
	[role_group_page_name] [nvarchar](50) NOT NULL,
	[role_group_page_des] [ntext] NULL,
	[create_date] [datetime] NULL CONSTRAINT [DF_tblSysUserGroupPage_create_date] DEFAULT (getdate()),
	[update_by] [int] NULL,
	[create_by] [int] NULL,
	[id_company] [int] NOT NULL,
	[role_group_status] [int] NULL,
	[role_page_view] [int] NULL,
	[role_page_create] [int] NULL,
	[role_page_del] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[tblSysUserGroupPage] ON
GO
INSERT INTO [dbo].[tblSysUserGroupPage] ([role_group_page_id], [role_group_page_name], [role_group_page_des], [create_date], [update_by], [create_by], [id_company], [role_group_status], [role_page_view], [role_page_create], [role_page_del])
	VALUES (1, N'Admin', N'Admin', NULL, 1, 1, 3, 1, 1, 1, 1)

GO
INSERT INTO [dbo].[tblSysUserGroupPage] ([role_group_page_id], [role_group_page_name], [role_group_page_des], [create_date], [update_by], [create_by], [id_company], [role_group_status], [role_page_view], [role_page_create], [role_page_del])
	VALUES (2, N'User', N'User', NULL, 1, 1, 3, 1, 1, 1, 1)

GO
INSERT INTO [dbo].[tblSysUserGroupPage] ([role_group_page_id], [role_group_page_name], [role_group_page_des], [create_date], [update_by], [create_by], [id_company], [role_group_status], [role_page_view], [role_page_create], [role_page_del])
	VALUES (4, N'Trang', N'Admin', CAST(0x0000a37200944475 AS datetime), 1, 1, 1, 1, 1, 1, 1)

GO
SET IDENTITY_INSERT [dbo].[tblSysUserGroupPage] OFF
GO

--Table dbo.tblSysUserGroupPageDetail

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblSysUserGroupPageDetail] (
	[role_group_page_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[id_company] [int] NOT NULL,
	[id_group_user_detail] [int] NOT NULL IDENTITY (1, 1));
GO

SET IDENTITY_INSERT [dbo].[tblSysUserGroupPageDetail] ON
GO
INSERT INTO [dbo].[tblSysUserGroupPageDetail] ([role_group_page_id], [user_id], [id_company], [id_group_user_detail])
	VALUES (1, 1, 3, 1)

GO
INSERT INTO [dbo].[tblSysUserGroupPageDetail] ([role_group_page_id], [user_id], [id_company], [id_group_user_detail])
	VALUES (2, 2, 3, 2)

GO
INSERT INTO [dbo].[tblSysUserGroupPageDetail] ([role_group_page_id], [user_id], [id_company], [id_group_user_detail])
	VALUES (2, 1, 3, 3)

GO
INSERT INTO [dbo].[tblSysUserGroupPageDetail] ([role_group_page_id], [user_id], [id_company], [id_group_user_detail])
	VALUES (2, 3, 3, 4)

GO
INSERT INTO [dbo].[tblSysUserGroupPageDetail] ([role_group_page_id], [user_id], [id_company], [id_group_user_detail])
	VALUES (4, 4, 3, 6)

GO
SET IDENTITY_INSERT [dbo].[tblSysUserGroupPageDetail] OFF
GO

--Table dbo.tblSysUserGroupPagePage

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblSysUserGroupPagePage] (
	[role_group_page_id] [int] NOT NULL,
	[id_page] [int] NOT NULL,
	[id_company] [int] NOT NULL,
	[id_group_page_detail] [int] NOT NULL IDENTITY (1, 1));
GO

SET IDENTITY_INSERT [dbo].[tblSysUserGroupPagePage] ON
GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 19, 3, 1)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 50, 3, 2)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 18, 3, 3)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 52, 3, 4)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 20, 3, 5)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 21, 3, 6)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 53, 3, 7)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 54, 3, 8)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 55, 3, 9)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 56, 3, 10)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 57, 3, 11)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 58, 3, 12)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 59, 3, 13)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 60, 3, 14)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 61, 3, 15)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 62, 3, 16)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 49, 3, 17)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 51, 3, 18)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 66, 3, 19)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 65, 3, 22)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 67, 3, 23)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 68, 3, 24)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 69, 3, 25)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 50, 3, 26)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 52, 3, 27)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 53, 3, 28)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 54, 3, 29)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 55, 3, 30)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 56, 3, 31)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 57, 3, 32)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 58, 3, 33)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 59, 3, 34)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 60, 3, 35)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 49, 3, 36)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 51, 3, 37)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (2, 68, 3, 40)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 70, 3, 41)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 71, 3, 42)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 72, 3, 43)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 73, 3, 44)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 74, 3, 45)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 75, 3, 46)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 18, 3, 47)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 19, 3, 48)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 20, 3, 49)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 21, 3, 50)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 62, 3, 51)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 65, 3, 52)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 66, 3, 53)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 61, 3, 54)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 76, 3, 71)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 77, 3, 72)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 78, 3, 74)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (4, 79, 3, 75)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 80, 3, 76)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 81, 3, 77)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 82, 3, 78)

GO
INSERT INTO [dbo].[tblSysUserGroupPagePage] ([role_group_page_id], [id_page], [id_company], [id_group_page_detail])
	VALUES (1, 83, 3, 79)

GO
SET IDENTITY_INSERT [dbo].[tblSysUserGroupPagePage] OFF
GO

--Table dbo.tblSysUserRolePage

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblSysUserRolePage] (
	[id_page] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[role_page_view] [int] NOT NULL,
	[role_page_create] [int] NOT NULL,
	[role_page_del] [int] NOT NULL,
	[role_page_config] [int] NOT NULL,
	[role_page_role] [int] NOT NULL,
	[id_company] [int] NOT NULL,
	[id_user_role_page] [int] NOT NULL IDENTITY (1, 1));
GO

SET IDENTITY_INSERT [dbo].[tblSysUserRolePage] ON
GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (18, 4, 1, 1, 1, 1, 1, 3, 55)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (19, 1, 1, 1, 1, 1, 1, 3, 19)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (19, 4, 1, 1, 1, 1, 1, 3, 56)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (20, 1, 1, 1, 1, 1, 1, 3, 1)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (20, 4, 1, 1, 1, 1, 1, 3, 57)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (21, 1, 1, 1, 1, 1, 1, 3, 17)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (49, 1, 1, 1, 1, 1, 1, 3, 3)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (49, 3, 1, 1, 1, 0, 0, 3, 34)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (50, 1, 1, 1, 1, 1, 1, 3, 4)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (51, 1, 1, 1, 1, 1, 1, 3, 5)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (51, 3, 1, 1, 1, 0, 0, 3, 36)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (52, 1, 1, 1, 1, 1, 1, 3, 6)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (52, 3, 1, 1, 1, 0, 0, 3, 37)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (52, 4, 1, 1, 1, 1, 1, 3, 18)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (53, 1, 1, 1, 1, 1, 1, 3, 7)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (53, 3, 1, 1, 1, 0, 0, 3, 38)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (54, 1, 1, 1, 1, 1, 1, 3, 8)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (54, 3, 1, 1, 1, 0, 0, 3, 39)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (55, 1, 1, 1, 1, 1, 1, 3, 9)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (55, 3, 1, 1, 1, 0, 0, 3, 40)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (56, 1, 1, 1, 1, 1, 1, 3, 10)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (56, 3, 1, 1, 1, 0, 0, 3, 41)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (57, 1, 1, 1, 1, 1, 1, 3, 11)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (57, 3, 1, 1, 1, 0, 0, 3, 42)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (58, 1, 1, 1, 1, 1, 1, 3, 12)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (58, 3, 1, 1, 1, 0, 0, 3, 43)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (59, 1, 1, 1, 1, 1, 1, 3, 13)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (59, 3, 1, 1, 1, 0, 0, 3, 44)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (60, 1, 1, 1, 1, 1, 1, 3, 14)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (60, 3, 1, 1, 1, 0, 0, 3, 45)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (61, 1, 1, 1, 1, 1, 1, 3, 15)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (62, 1, 1, 1, 1, 1, 1, 3, 16)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (62, 4, 1, 1, 1, 1, 1, 3, 59)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (63, 1, 1, 1, 1, 1, 1, 3, 28)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (65, 1, 1, 0, 1, 1, 1, 3, 31)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (66, 1, 1, 1, 1, 1, 1, 3, 20)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (67, 1, 1, 1, 1, 1, 1, 3, 30)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (68, 1, 1, 1, 1, 1, 1, 3, 32)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (69, 1, 1, 1, 1, 1, 1, 3, 33)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (70, 1, 1, 1, 1, 1, 1, 3, 49)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (71, 1, 1, 1, 1, 1, 1, 3, 50)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (72, 1, 1, 1, 1, 1, 1, 3, 51)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (73, 1, 1, 1, 1, 1, 1, 3, 52)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (74, 1, 1, 1, 1, 1, 1, 3, 53)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (75, 1, 1, 1, 1, 1, 1, 3, 54)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (76, 4, 1, 1, 1, 1, 1, 3, 64)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (77, 4, 1, 1, 1, 1, 1, 3, 65)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (78, 4, 1, 1, 1, 1, 1, 3, 66)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (79, 4, 1, 1, 1, 1, 1, 3, 67)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (80, 1, 1, 1, 1, 1, 1, 3, 69)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (80, 4, 1, 1, 1, 1, 1, 3, 68)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (81, 1, 1, 1, 1, 1, 1, 3, 70)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (82, 1, 1, 1, 1, 1, 1, 3, 71)

GO
INSERT INTO [dbo].[tblSysUserRolePage] ([id_page], [user_id], [role_page_view], [role_page_create], [role_page_del], [role_page_config], [role_page_role], [id_company], [id_user_role_page])
	VALUES (83, 1, 1, 1, 1, 1, 1, 3, 72)

GO
SET IDENTITY_INSERT [dbo].[tblSysUserRolePage] OFF
GO

--Table dbo.tblUser

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblUser] (
	[user_id] [bigint] NOT NULL IDENTITY (1, 1),
	[user_email] [nvarchar](50) NOT NULL,
	[user_pass] [nvarchar](50) NULL,
	[user_fullname] [nvarchar](50) NULL,
	[user_status] [int] NULL CONSTRAINT [DF_tblUser_user_status] DEFAULT ((0)),
	[user_create] [datetime] NULL CONSTRAINT [DF_tblUser_user_create] DEFAULT (getdate()),
	[user_update] [datetime] NULL CONSTRAINT [DF_tblUser_user_update] DEFAULT (getdate()),
	[id_group_user] [int] NULL CONSTRAINT [DF_tblUser_id_group_user] DEFAULT ((1)),
	[user_img] [nvarchar](100) NULL CONSTRAINT [DF_tblUser_user_img] DEFAULT (N'user_vuisam.jpg'),
	[user_vip] [int] NULL CONSTRAINT [DF_tblUser_user_vip] DEFAULT ((0)),
	[user_vip_end] [datetime] NULL CONSTRAINT [DF_tblUser_user_vip_end] DEFAULT (getdate()),
	[user_role] [int] NULL CONSTRAINT [DF_tblUser_user_role] DEFAULT ((0)),
	[forget_pass] [nvarchar](50) NULL,
	[user_money] [int] NULL CONSTRAINT [DF_tblUser_user_money] DEFAULT ((30000)),
	[user_avatar] [nvarchar](200) NULL CONSTRAINT [DF_tblUser_user_avatar] DEFAULT (N'/Content/avartar/yezlang.jpg'),
	[user_online] [int] NULL CONSTRAINT [DF_tblUser_user_online] DEFAULT ((0)),
	[id_company] [int] NULL,
	[user_disk] [int] NULL CONSTRAINT [DF_tblUser_user_disk] DEFAULT ((10)),
	[user_code] [nvarchar](20) NULL,
	[seri_number] [nvarchar](50) NULL,
	[user_birthday] [nvarchar](50) NULL,
	[user_code_country] [nvarchar](50) NULL,
	[user_gender] [nvarchar](10) NULL,
	[user_id_facebook] [nvarchar](50) NULL,
	[user_point] [int] NULL CONSTRAINT [DF_tblUser_user_point] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[tblUser] ON
GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (1, N'bonnyhutt@gmail.com', N'08F81F7E5C5E10DA2AAD8B6A40D7FA90', N'Bonny Hutt', 1, CAST(0x0000a32301157ca8 AS datetime), CAST(0x0000a32301157ca8 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a32301157ca8 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N'07/02/1984', N'vi_VN', N'male', N'1433697086881960', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (2, N'loc.lm@vietconnect.com.vn', N'34951C4E87EC5D1818EB34C4114030EF', N'Loc Le Minh', 1, CAST(0x0000a32700ea1fd7 AS datetime), CAST(0x0000a32700ea1fd7 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a32700ea1fd7 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N' ', N'vi', N' ', N'102860212789225418214', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (3, N'vuisam@gmail.com', N'6375F71E297B2B445F608A2B7F5D3F9E', N'Vui Sắm', 1, CAST(0x0000a32700fb6a66 AS datetime), CAST(0x0000a32700fb6a66 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a32700fb6a66 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N' ', N'vi', N'male', N'105650729881644206714', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (5, N'yezland@gmail.com', N'B754306745677942599FE082774E9F79', N'Thành Lê', 1, CAST(0x0000a3270103510e AS datetime), CAST(0x0000a3270103510e AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a3270103510e AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, NULL, N'vi_VN', N'female', N'1477113565857133', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (6, N'a085thanhthuy@yahoo.com', N'FC559054AE0984EF535BEC54548AE6ED', N'Huynh THuy', 1, CAST(0x0000a327013e6433 AS datetime), CAST(0x0000a327013e6433 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a327013e6433 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, NULL, N'vi_VN', N'female', N'683396178386855', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (7, N'huynhquyen968@gmail.com', N'CDAF00DAE417077FA06B96B5719C38DD', N'Huynh Quyen', 1, CAST(0x0000a3280004283e AS datetime), CAST(0x0000a3280004283e AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a3280004283e AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N' ', N'vi', N'female', N'104834537259334521319', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (8, N'minh_loc133003@yahoo.com', N'5CF149AF4DA06B1BD139D13C4E00A992', N'Lộc Lê Minh', 1, CAST(0x0000a32d01064304 AS datetime), CAST(0x0000a32d01064304 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a32d01064304 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, NULL, N'vi_VN', N'male', N'736942396356257', 250)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (9, N'khucthianhnguyet@gmail.com', N'31C013B50B4AE9470FF4ABFC53D09EEC', N'thị ánh nguyệt khúc', 1, CAST(0x0000a33000c550ab AS datetime), CAST(0x0000a33000c550ab AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a33000c550ab AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N' ', N'vi', N'female', N'116671454351988070067', 20)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (10, N'quyen.hm@vietconnect.com.vn', N'EE3866864A34C85C94669253078A4685', N'Quyen Huynh Mai', 1, CAST(0x0000a33200a911a4 AS datetime), CAST(0x0000a33200a911a4 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a33200a911a4 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N' ', N'vi', N' ', N'114856104886128547882', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (11, N'trangltk@gmail.com', N'1B027F296F84BE42686FBD8E567EC28E', N'Kieu Trang', 1, CAST(0x0000a33400a73812 AS datetime), CAST(0x0000a33400a73812 AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a33400a73812 AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, N' ', N'en', N'female', N'110500149735641692771', 0)

GO
INSERT INTO [dbo].[tblUser] ([user_id], [user_email], [user_pass], [user_fullname], [user_status], [user_create], [user_update], [id_group_user], [user_img], [user_vip], [user_vip_end], [user_role], [forget_pass], [user_money], [user_avatar], [user_online], [id_company], [user_disk], [user_code], [seri_number], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_point])
	VALUES (12, N'vietkhue2013@gmail.com', N'D559CADCF674792485C5D4ECA74A7B18', N'Viet Khue', 1, CAST(0x0000a34300c1e2cf AS datetime), CAST(0x0000a34300c1e2cf AS datetime), 1, N'user_vuisam.jpg', 0, CAST(0x0000a34300c1e2cf AS datetime), 1, NULL, 30000, N'/Content/avartar/yezlang.jpg', 0, 3, 10, NULL, NULL, NULL, N'vi_VN', N'female', N'1440943382822396', 30)

GO
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO

--Table dbo.tblUserCloud

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblUserCloud] (
	[user_cloud_id] [bigint] NOT NULL IDENTITY (1, 1),
	[user_code] [nvarchar](50) NULL,
	[user_birthday] [nvarchar](50) NULL,
	[user_code_country] [nvarchar](50) NULL,
	[user_gender] [nvarchar](50) NULL,
	[user_id_facebook] [nvarchar](50) NULL,
	[user_email] [nvarchar](50) NULL,
	[user_fullname] [nvarchar](50) NULL,
	[user_fname] [nvarchar](50) NULL,
	[user_lname] [nvarchar](50) NULL,
	[user_avatar] [nvarchar](500) NULL,
	[user_type] [nvarchar](50) NULL,
	[user_id] [bigint] NULL);
GO

SET IDENTITY_INSERT [dbo].[tblUserCloud] ON
GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (1, N'1433697086881960', N'07/02/1984', N'vi_VN', N'male', N'1434781586773510', N'bonnyhutt@gmail.com', N'Bonny Hutt', N'Bonny', N'Hutt', N'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/v/t1.0-1/c8.0.50.50/p50x50/1558397_1395217444063258_262645679_s.jpg?oh=5ac43ff97b462f28960ced3c1ebacd21&oe=53FF1CD4&__gda__=1407484314_b004efd3d9bdb070790fbe655b47b0eb', N'facebook', 1)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (2, N'102860212789225418214', N' ', N'vi', N' ', N'102860212789225418214', N'loc.lm@vietconnect.com.vn', N'Loc Le Minh', N'Le Minh', N'Loc', N'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', N'goolgle', 2)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (3, N'105650729881644206714', N' ', N'vi', N'male', N'105650729881644206714', N'vuisam@gmail.com', N'Vui Sắm', N'Sắm', N'Vui', N'https://lh3.googleusercontent.com/-KizjDs48a_I/AAAAAAAAAAI/AAAAAAAAAB4/L7jgPGCfz3c/photo.jpg', N'goolgle', 3)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (4, N'1477113565857133', NULL, N'vi_VN', N'female', N'1477113565857133', N'yezland@gmail.com', N'Thành Lê', N'Thành', N'Lê', N'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/t1.0-1/p50x50/1381577_1402394316662392_1194604710_t.jpg', N'facebook', 5)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (5, N'683396178386855', NULL, N'vi_VN', N'female', N'683396178386855', N'a085thanhthuy@yahoo.com', N'Huynh THuy', N'Huynh', N'THuy', N'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/v/t1.0-1/p50x50/1470408_608082389251568_1142252338_t.jpg?oh=fe2dd636d15ef737d7dac06f461ff8a0&oe=53F15790&__gda__=1408085736_57f9257e2e34d209ae199283da10073f', N'facebook', 6)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (6, N'105680408999504579773', N' ', N'vi', N'male', N'105680408999504579773', N'bonnyhutt@gmail.com', N'Thủy Huỳnh', N'Huỳnh', N'Thủy', N'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', N'goolgle', 1)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (7, N'104834537259334521319', N' ', N'vi', N'female', NULL, N'huynhquyen968@gmail.com', N'Huynh Quyen', N'Quyen', N'Huynh', N'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', N'goolgle', 7)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (8, N'736942396356257', NULL, N'vi_VN', N'male', N'736942396356257', N'minh_loc133003@yahoo.com', N'Lộc Lê Minh', N'Lộc', N'Lê Minh', N'https://scontent-a.xx.fbcdn.net/hprofile-ash2/l/t1.0-1/c9.9.112.112/s50x50/385850_277285375655297_741949075_s.jpg', N'facebook', 8)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (9, N'116671454351988070067', N' ', N'vi', N'female', NULL, N'khucthianhnguyet@gmail.com', N'thị ánh nguyệt khúc', N'khúc', N'thị ánh nguyệt', N'https://lh3.googleusercontent.com/-bShi9vv5H9Q/AAAAAAAAAAI/AAAAAAAAAMg/mTwRCiX2yeA/photo.jpg', N'goolgle', 9)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (10, N'114856104886128547882', N' ', N'vi', N' ', N'114856104886128547882', N'quyen.hm@vietconnect.com.vn', N'Quyen Huynh Mai', N'Huynh Mai', N'Quyen', N'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', N'goolgle', 10)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (11, N'110500149735641692771', N' ', N'en', N'female', NULL, N'trangltk@gmail.com', N'Kieu Trang', N'Trang', N'Kieu', N'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', N'goolgle', 11)

GO
INSERT INTO [dbo].[tblUserCloud] ([user_cloud_id], [user_code], [user_birthday], [user_code_country], [user_gender], [user_id_facebook], [user_email], [user_fullname], [user_fname], [user_lname], [user_avatar], [user_type], [user_id])
	VALUES (12, N'1440943382822396', N' ', N'vi_VN', N'female', NULL, N'vietkhue2013@gmail.com', N'Viet Khue', N'Viet', N'Khue', N'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/t1.0-1/p50x50/994076_1393309787585756_619894344_n.jpg', N'facebook', 12)

GO
SET IDENTITY_INSERT [dbo].[tblUserCloud] OFF
GO

--Table dbo.tblUserFriends

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblUserFriends] (
	[user_id] [bigint] NOT NULL,
	[social_id] [nvarchar](50) NOT NULL,
	[social_user] [nvarchar](50) NULL,
	[social_type] [nvarchar](50) NULL,
	[social_name] [nvarchar](250) NULL,
	[social_picture] [ntext] NULL);
GO

--Table dbo.tblUserImg

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[tblUserImg] (
	[id_user_img] [bigint] NOT NULL IDENTITY (1, 1),
	[user_img_name] [nvarchar](200) NULL,
	[user_img_sexy_key] [nvarchar](200) NULL,
	[user_img_size] [float] NULL,
	[user_id] [bigint] NULL,
	[user_img_create] [datetime] NULL CONSTRAINT [DF_tblUserImg_user_img_create] DEFAULT (getdate()),
	[user_img_w] [float] NULL,
	[user_img_h] [float] NULL,
	[user_img_type] [int] NULL CONSTRAINT [DF_tblUserImg_user_img_type] DEFAULT ((0)),
	[admin_view] [int] NULL CONSTRAINT [DF_tblUserImg_admin_view] DEFAULT ((0)));
GO

--Table dbo.user_steel

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[user_steel] (
	[id_user] [int] NOT NULL IDENTITY (1, 1),
	[user_first_name] [nvarchar](50) NULL,
	[user_last_name] [nvarchar](50) NULL,
	[user_full_name] [nvarchar](200) NOT NULL,
	[user_email] [nvarchar](200) NULL,
	[user_status] [int] NOT NULL CONSTRAINT [DF__user_stee__user___607251E5] DEFAULT ((1)),
	[user_pass] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[user_steel] ON
GO
INSERT INTO [dbo].[user_steel] ([id_user], [user_first_name], [user_last_name], [user_full_name], [user_email], [user_status], [user_pass])
	VALUES (1, N'Nguyễn', N'Tú', N'Nguyễn Tấn Tú', N'tu1306@gmail.com', 1, N'123456')

GO
INSERT INTO [dbo].[user_steel] ([id_user], [user_first_name], [user_last_name], [user_full_name], [user_email], [user_status], [user_pass])
	VALUES (2, N'Lộc', N'Lê', N'Lê Minh Lộc', N'leminhloc14061989@gmail.com', 1, N'123456')

GO
INSERT INTO [dbo].[user_steel] ([id_user], [user_first_name], [user_last_name], [user_full_name], [user_email], [user_status], [user_pass])
	VALUES (3, N'Linh', N'Vũ', N'Vũ Duy Linh', N'linh.vd@gmail.com', 1, N'123456')

GO
SET IDENTITY_INSERT [dbo].[user_steel] OFF
GO

--Table dbo.wb_advertising

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[wb_advertising] (
	[id_advertising] [int] NOT NULL IDENTITY (1, 1),
	[name_advertising] [nvarchar](200) NULL,
	[links_advertising] [nvarchar](200) NULL,
	[status_advertising] [nvarchar](200) NULL,
	[order_advertising] [int] NULL,
	[img_advertising] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[wb_advertising] ON
GO
INSERT INTO [dbo].[wb_advertising] ([id_advertising], [name_advertising], [links_advertising], [status_advertising], [order_advertising], [img_advertising])
	VALUES (1, N'Áo đầm đẹp', N'google.com', N'1', 1, N'77_2014-07-09-17-16-10_10476503_576796352433357_5400074428553810391_n.jpg')

GO
INSERT INTO [dbo].[wb_advertising] ([id_advertising], [name_advertising], [links_advertising], [status_advertising], [order_advertising], [img_advertising])
	VALUES (4, N'epic-long-tieng', N'yezland.com/yez-channel-detail/epic-long-tieng', N'1', 1, N'77_2014-07-18-13-52-56_epic.jpg')

GO
SET IDENTITY_INSERT [dbo].[wb_advertising] OFF
GO

--Table dbo.wb_banner

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[wb_banner] (
	[id_banner] [int] NOT NULL IDENTITY (1, 1),
	[name_banner] [nvarchar](200) NULL,
	[links_banner] [nvarchar](200) NULL,
	[order_banner] [int] NULL,
	[image_banner] [nvarchar](200) NULL,
	[status_banner] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[wb_banner] ON
GO
INSERT INTO [dbo].[wb_banner] ([id_banner], [name_banner], [links_banner], [order_banner], [image_banner], [status_banner])
	VALUES (7, N'banner5', NULL, 5, N'74_2014-06-25-17-19-30_dsc01027_dan_nai_goc_1000 (Copy).jpg', 1)

GO
INSERT INTO [dbo].[wb_banner] ([id_banner], [name_banner], [links_banner], [order_banner], [image_banner], [status_banner])
	VALUES (3, N'banner1', NULL, 1, N'74_2014-06-25-17-4-11_banner1 (Copy).jpg', 1)

GO
INSERT INTO [dbo].[wb_banner] ([id_banner], [name_banner], [links_banner], [order_banner], [image_banner], [status_banner])
	VALUES (5, N'banner3', NULL, 3, N'74_2014-06-25-17-11-26_BAT-MA-DSC-01079 (Copy).jpg', 1)

GO
INSERT INTO [dbo].[wb_banner] ([id_banner], [name_banner], [links_banner], [order_banner], [image_banner], [status_banner])
	VALUES (6, N'banner4', NULL, 4, N'74_2014-06-25-17-12-48_dsc01021_1000_1 (Copy).jpg', 1)

GO
SET IDENTITY_INSERT [dbo].[wb_banner] OFF
GO

--Table dbo.wb_comment

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[wb_comment] (
	[id_comment] [int] NOT NULL IDENTITY (1, 1),
	[noidung_comment] [nvarchar](200) NULL,
	[id_products] [int] NULL,
	[phone] [nvarchar](200) NULL,
	[name_full] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[wb_comment] ON
GO
INSERT INTO [dbo].[wb_comment] ([id_comment], [noidung_comment], [id_products], [phone], [name_full], [email])
	VALUES (1, N'cái này giá bao nhiêu', 1, N'0984984691', N'Nguyễn tấn tú', N'tunguyen.it.dev@gmail.com')

GO
INSERT INTO [dbo].[wb_comment] ([id_comment], [noidung_comment], [id_products], [phone], [name_full], [email])
	VALUES (2, N'cái này giá bao nhiêu', 1, N'0984984691', N'Nguyễn tấn tú', N'tunguyen.it.dev@gmail.com')

GO
INSERT INTO [dbo].[wb_comment] ([id_comment], [noidung_comment], [id_products], [phone], [name_full], [email])
	VALUES (4, N'binh dep qua cho hỏi giá nhiêu vậy', 4, N'0984 984 691', N'dai ka tu', N'tantu1306@gmail.com')

GO
INSERT INTO [dbo].[wb_comment] ([id_comment], [noidung_comment], [id_products], [phone], [name_full], [email])
	VALUES (5, N'giá 3tr bác', 4, N'0984 984 691', N'dai ka tu1', N'tantu1306@gmail.com')

GO
SET IDENTITY_INSERT [dbo].[wb_comment] OFF
GO

--Table dbo.wb_menu

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[wb_menu] (
	[id_menu] [int] NOT NULL IDENTITY (1, 1),
	[menu_name] [nvarchar](200) NULL,
	[menu_key_url] [nvarchar](200) NULL,
	[menu_order] [int] NULL,
	[menu_status] [int] NULL,
	[menu_title] [nvarchar](200) NULL,
	[menu_links] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[wb_menu] ON
GO
INSERT INTO [dbo].[wb_menu] ([id_menu], [menu_name], [menu_key_url], [menu_order], [menu_status], [menu_title], [menu_links])
	VALUES (1, N'Trang chủ', N'trang-chu', 1, 1, NULL, N'/Default.aspx')

GO
INSERT INTO [dbo].[wb_menu] ([id_menu], [menu_name], [menu_key_url], [menu_order], [menu_status], [menu_title], [menu_links])
	VALUES (2, N'Giới thiệu', N'gioi-thieu', 4, 1, NULL, N'/about.aspx')

GO
INSERT INTO [dbo].[wb_menu] ([id_menu], [menu_name], [menu_key_url], [menu_order], [menu_status], [menu_title], [menu_links])
	VALUES (3, N'Liên Hệ', N'lien-he', 3, 1, NULL, N'/contact.aspx')

GO
SET IDENTITY_INSERT [dbo].[wb_menu] OFF
GO

--Table dbo.wb_menu_products

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[wb_menu_products] (
	[id_menu_products] [int] NOT NULL IDENTITY (1, 1),
	[menu_products_name] [nvarchar](200) NULL,
	[menu_products_key] [nvarchar](200) NULL,
	[menu_products_order] [int] NULL,
	[img_products] [nvarchar](200) NULL,
	[menu_status] [nvarchar](200) NULL,
	[menu_tomtat] [nvarchar](200) NULL,
	[menu_noidung] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[wb_menu_products] ON
GO
INSERT INTO [dbo].[wb_menu_products] ([id_menu_products], [menu_products_name], [menu_products_key], [menu_products_order], [img_products], [menu_status], [menu_tomtat], [menu_noidung])
	VALUES (1, N'Lục Bình', N'luc-binh', 1, N'73_2014-06-25-20-56-59_luc_binh (Copy).jpg', N'1', N'Trong phong thuỷ, theo thuyết hình khí (hình nào khí nấy) thì hình dạng của lộc bình có tác dụng thu và giữ khí rất tốt. Nhất là khi kết hợp với các hoa văn, đường vân uốn lượn hoặc trạm trỗ Rồng, Phư', NULL)

GO
INSERT INTO [dbo].[wb_menu_products] ([id_menu_products], [menu_products_name], [menu_products_key], [menu_products_order], [img_products], [menu_status], [menu_tomtat], [menu_noidung])
	VALUES (2, N'Bàn Ghế', N'ban-ghe', 2, N'73_2014-07-18-14-34-37_ban-ghe-phong-khach-pk02 (Copy).jpg', N'1', N'Bộ bàn ghế phòng khách gỗ nu vân ngọc tự nhiên cực quý mang ý nghĩa tượng trưng cho sự sung túc về tiền bạc, phát tài phát lộc, sự sinh sôi nảy nở, sự phát triển những điều mới mẻ, may mắn và cát khán', NULL)

GO
INSERT INTO [dbo].[wb_menu_products] ([id_menu_products], [menu_products_name], [menu_products_key], [menu_products_order], [img_products], [menu_status], [menu_tomtat], [menu_noidung])
	VALUES (3, N'Tượng phật', N'tuong-phat', 3, N'73_2014-06-25-21-1-59_tuong-phat-quan-am-cach-dieu.-247x300 (Copy).jpg', N'1', NULL, NULL)

GO
SET IDENTITY_INSERT [dbo].[wb_menu_products] OFF
GO

--Table dbo.wb_products

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[wb_products] (
	[id_products] [int] NOT NULL IDENTITY (1, 1),
	[name_products] [nvarchar](200) NULL,
	[type_products] [nvarchar](200) NULL,
	[tomtat_products] [nvarchar](200) NULL,
	[noidung_products] [nvarchar](200) NULL,
	[price_products] [nvarchar](200) NULL,
	[giamgia_products] [nvarchar](200) NULL,
	[giasaugiam_products] [nvarchar](200) NULL,
	[status_products] [nvarchar](200) NULL,
	[img_main_products] [nvarchar](200) NULL,
	[order_products] [nvarchar](200) NULL,
	[img1_products] [nvarchar](200) NULL,
	[img2_products] [nvarchar](200) NULL,
	[img3_products] [nvarchar](200) NULL,
	[img4_products] [nvarchar](200) NULL,
	[tieubieu_products] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[wb_products] ON
GO
INSERT INTO [dbo].[wb_products] ([id_products], [name_products], [type_products], [tomtat_products], [noidung_products], [price_products], [giamgia_products], [giasaugiam_products], [status_products], [img_main_products], [order_products], [img1_products], [img2_products], [img3_products], [img4_products], [tieubieu_products])
	VALUES (1, N'Lục bình đẹp', N'1', N'dsfs dfsdfdsđ sfddddddddddd ddddddd dddd dddddd ddddddd ddddddddddd dd dd dd ddd ddd dddd ddd dddd dd dddd ddd ddd  ddddđ  gdd dd ddd dd ddd dd dddd   ddd dddd dddd dd dddd d dddd ddd ddd dd dd dd ddd', N'sdfdsfsddscsdcsd', N'30tr', N'-5%', N'27tr', N'1', N'75_2014-06-28-12-57-7_10476503_576796352433357_5400074428553810391_n.jpg', N'1', N'75_2014-06-28-22-13-55_DSC_0765.JPG', N'75_2014-06-28-22-16-30_DSC_0765.JPG', N'75_2014-06-28-22-16-47_DSC_0765.JPG', N'75_2014-06-28-12-12-50_DSC_0769.JPG', N'0')

GO
INSERT INTO [dbo].[wb_products] ([id_products], [name_products], [type_products], [tomtat_products], [noidung_products], [price_products], [giamgia_products], [giasaugiam_products], [status_products], [img_main_products], [order_products], [img1_products], [img2_products], [img3_products], [img4_products], [tieubieu_products])
	VALUES (2, N'Lục bình đẹp 1', N'1', N'fdfdfdfd', N'dfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', N'4545tr', N'-5%', N'454tr', N'1', N'75_2014-06-30-8-32-22_10436158_576796385766687_4933852628194647981_n.jpg', N'2', N'75_2014-06-30-8-32-30_10476503_576796352433357_5400074428553810391_n.jpg', N'75_2014-06-30-8-32-33_DSC_0773.JPG', N'75_2014-06-30-8-32-35_DSC_0777.JPG', N'75_2014-06-30-16-4-24_DSC_0798.JPG', N'0')

GO
INSERT INTO [dbo].[wb_products] ([id_products], [name_products], [type_products], [tomtat_products], [noidung_products], [price_products], [giamgia_products], [giasaugiam_products], [status_products], [img_main_products], [order_products], [img1_products], [img2_products], [img3_products], [img4_products], [tieubieu_products])
	VALUES (3, N'Nậm nu kháo', N'1', N'Nu kín 100% . rất đẹp.', N'Nậm nu kháo cao 63cm. ĐK 40cm', N'8tr', N'0%', N'8tr', N'1', N'75_2014-06-30-16-11-50_large_gal_132047_53a6c95ba767d.jpg', N'3', N'75_2014-06-30-16-12-56_large_gal_132047_53a6c95ba767d.jpg', N'75_2014-06-30-16-12-53_large_gal_132047_53a6c9ae84cf7.jpg', N'&amp;amp;nbsp;', N'&amp;amp;nbsp;', N'0')

GO
INSERT INTO [dbo].[wb_products] ([id_products], [name_products], [type_products], [tomtat_products], [noidung_products], [price_products], [giamgia_products], [giasaugiam_products], [status_products], [img_main_products], [order_products], [img1_products], [img2_products], [img3_products], [img4_products], [tieubieu_products])
	VALUES (4, N'Cặp nậm nu nghiến', N'1', N'Cặp nậm nu nghiến  cao 58cm. Đk 40cm', N'Cặp nậm nu nghiến  cao 58cm. Đk 40cm Kính phố', N'8tr', N'0%', N'8tr', N'1', N'75_2014-06-30-16-42-7_large_gal_132047_53a6c81f85870.jpg', N'5', N'75_2014-06-30-16-42-13_large_gal_132047_53a6c8908787c.jpg', N'75_2014-06-30-16-42-16_large_gal_132047_53a6c95ba767d.jpg', N'75_2014-06-30-16-42-18_large_gal_132047_53a6c81f85870.jpg', N'&nbsp;', N'0')

GO
INSERT INTO [dbo].[wb_products] ([id_products], [name_products], [type_products], [tomtat_products], [noidung_products], [price_products], [giamgia_products], [giasaugiam_products], [status_products], [img_main_products], [order_products], [img1_products], [img2_products], [img3_products], [img4_products], [tieubieu_products])
	VALUES (5, N'Cặp nậm nu nghiến', N'1', N'Cặp nậm nu nghiến  cao 58cm. Đk 40cm', N'Cặp nậm nu nghiến  cao 58cm. Đk 40cm Kính phố
Nu gần như kín 04 mặt.', N'8tr', N'0%', N'8tr', N'1', N'75_2014-06-30-16-42-7_large_gal_132047_53a6c81f85870.jpg', N'5', N'75_2014-06-30-16-42-13_large_gal_132047_53a6c8908787c.jpg', N'75_2014-06-30-16-42-16_large_gal_132047_53a6c95ba767d.jpg', N'75_2014-06-30-16-42-18_large_gal_132047_53a6c81f85870.jpg', N'&nbsp;', N'0')

GO
SET IDENTITY_INSERT [dbo].[wb_products] OFF
GO

--Table dbo.web_banner

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_banner] (
	[id_banner] [int] NOT NULL IDENTITY (1, 1),
	[banner_name] [nvarchar](200) NOT NULL,
	[banner_order] [nvarchar](200) NOT NULL,
	[banner_link] [nvarchar](200) NOT NULL,
	[banner_img] [nvarchar](200) NOT NULL,
	[banner_tiny] [nvarchar](200) NOT NULL,
	[banner_status] [int] NOT NULL);
GO

--Table dbo.web_chater

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_chater] (
	[id_chater] [bigint] NOT NULL IDENTITY (1, 1),
	[chater_name] [nvarchar](200) NOT NULL,
	[customer_logo] [nvarchar](200) NOT NULL,
	[customer_prod] [nvarchar](200) NOT NULL,
	[customer_idea] [ntext] NOT NULL,
	[customer_order] [int] NOT NULL,
	[customer_status] [int] NOT NULL);
GO

--Table dbo.web_chater_content

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_chater_content] (
	[id_chater] [bigint] NOT NULL,
	[id_employer] [int] NOT NULL,
	[chater_content] [ntext] NOT NULL,
	[chater_content_create] [datetime] NOT NULL,
	[id_up] [bigint] NOT NULL IDENTITY (1, 1));
GO

--Table dbo.web_content

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_content] (
	[id_content] [int] NOT NULL IDENTITY (1, 1),
	[content_name] [ntext] NOT NULL,
	[id_menu] [int] NOT NULL);
GO

--Table dbo.web_content_other

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_content_other] (
	[id_content_other] [int] NOT NULL IDENTITY (1, 1),
	[content_other_title] [nvarchar](200) NOT NULL,
	[content_other] [ntext] NOT NULL,
	[id_menu] [int] NOT NULL);
GO

--Table dbo.web_customer

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_customer] (
	[id_customer] [int] NOT NULL IDENTITY (1, 1),
	[customer_name] [nvarchar](200) NOT NULL,
	[customer_logo] [nvarchar](200) NOT NULL,
	[customer_prod] [ntext] NOT NULL,
	[customer_idea] [ntext] NOT NULL,
	[customer_order] [int] NOT NULL,
	[customer_status] [int] NOT NULL);
GO

--Table dbo.web_department

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_department] (
	[id_department] [int] NOT NULL IDENTITY (1, 1),
	[department_name] [nvarchar](200) NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[web_department] ON
GO
INSERT INTO [dbo].[web_department] ([id_department], [department_name])
	VALUES (45, N'29_2014-05-16-14-44-8_SinhVienIT.Net---SnagItv11.2.1.72Serial.rar')

GO
INSERT INTO [dbo].[web_department] ([id_department], [department_name])
	VALUES (46, N'29_2014-05-19-16-36-46_IMG_13032014_112000.png')

GO
INSERT INTO [dbo].[web_department] ([id_department], [department_name])
	VALUES (47, N'29_2014-05-19-16-37-36_hop dong quang ba web yezland 12032014.doc')

GO
SET IDENTITY_INSERT [dbo].[web_department] OFF
GO

--Table dbo.web_employer

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_employer] (
	[id_employer] [int] NOT NULL IDENTITY (1, 1),
	[employer_name] [nvarchar](200) NOT NULL,
	[id_title] [int] NOT NULL,
	[employer_code] [nvarchar](200) NOT NULL,
	[employer_ext] [nvarchar](200) NOT NULL,
	[employer_mobile] [nvarchar](200) NOT NULL,
	[employer_status] [int] NOT NULL);
GO

--Table dbo.web_list_product

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_list_product] (
	[id_list_prod] [int] NOT NULL IDENTITY (1, 1),
	[list_prod_name] [nvarchar](200) NOT NULL,
	[list_prod_order] [int] NOT NULL,
	[list_prod_link] [int] NOT NULL,
	[list_prod_status] [int] NOT NULL);
GO

--Table dbo.web_menu_root

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_menu_root] (
	[id_menu] [int] NOT NULL IDENTITY (1, 1),
	[menu_name] [nvarchar](200) NOT NULL,
	[menu_order] [int] NOT NULL,
	[menu_code] [nvarchar](200) NOT NULL,
	[banner_tiny] [nvarchar](200) NOT NULL,
	[menu_status] [int] NOT NULL);
GO

--Table dbo.web_products

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_products] (
	[id_prod] [int] NOT NULL IDENTITY (1, 1),
	[prod_name] [nvarchar](200) NOT NULL,
	[prod_order] [int] NOT NULL,
	[prod_status] [int] NOT NULL,
	[prod_content] [ntext] NOT NULL);
GO

--Table dbo.web_title

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_title] (
	[id_title] [int] NOT NULL IDENTITY (1, 1),
	[title_name] [nvarchar](200) NOT NULL,
	[id_department] [int] NOT NULL);
GO

--Table dbo.web_tr_menu_product

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_tr_menu_product] (
	[id_menu_products] [int] NOT NULL IDENTITY (1, 1),
	[name_menu_products] [nvarchar](200) NULL,
	[order_menu_products] [int] NULL,
	[status_menu_products] [int] NULL,
	[img_menu_products] [nvarchar](200) NULL,
	[tomtat_menu_products] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[web_tr_menu_product] ON
GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (1, N'Dành cho Bé', 1, 1, N'&amp;amp;amp;nbsp;', N'Sản phẩm dành cho bé yêu')

GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (2, N'Mỹ Phẩm', 2, 1, N'&nbsp;', N'Mỹ phẩm Nhật')

GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (3, N'TP Chức Năng', 3, 1, N'&nbsp;', N'Sản phẩm chức năng')

GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (4, N'Thực Phẩm', 4, 1, N'&nbsp;', N'')

GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (5, N'Thời Trang', 5, 0, N'&amp;amp;amp;nbsp;', N'Sẩn phẩm thời trang')

GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (6, N'Khuyến mãi', 6, 0, N'&amp;nbsp;', N'Sản phẩm khuyến mãi')

GO
INSERT INTO [dbo].[web_tr_menu_product] ([id_menu_products], [name_menu_products], [order_menu_products], [status_menu_products], [img_menu_products], [tomtat_menu_products])
	VALUES (7, N'Điện tủ', 5, 1, N'', N'Hàng điện tử')

GO
SET IDENTITY_INSERT [dbo].[web_tr_menu_product] OFF
GO

--Table dbo.web_tr_menutop

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_tr_menutop] (
	[id_menu_top] [int] NOT NULL IDENTITY (1, 1),
	[name_menu_top] [nvarchar](200) NULL,
	[links_menu_top] [nvarchar](200) NULL,
	[key_links_menu_top] [nvarchar](200) NULL,
	[status_menu_top] [int] NULL,
	[order_menu_top] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[web_tr_menutop] ON
GO
INSERT INTO [dbo].[web_tr_menutop] ([id_menu_top], [name_menu_top], [links_menu_top], [key_links_menu_top], [status_menu_top], [order_menu_top])
	VALUES (1, N'Trang chủ', N'/Default.aspx', N'trang-chu', 1, 1)

GO
INSERT INTO [dbo].[web_tr_menutop] ([id_menu_top], [name_menu_top], [links_menu_top], [key_links_menu_top], [status_menu_top], [order_menu_top])
	VALUES (2, N'Giới thiệu', N'/about.aspx', N'gioi-thieu', 1, 2)

GO
INSERT INTO [dbo].[web_tr_menutop] ([id_menu_top], [name_menu_top], [links_menu_top], [key_links_menu_top], [status_menu_top], [order_menu_top])
	VALUES (3, N'Liên hệ', N'/contact.aspx', N'gioi-thieu', 1, 3)

GO
INSERT INTO [dbo].[web_tr_menutop] ([id_menu_top], [name_menu_top], [links_menu_top], [key_links_menu_top], [status_menu_top], [order_menu_top])
	VALUES (4, N'Sản phẩm mới', N'/new_products.aspx', N'san-pham-moi', 1, 4)

GO
SET IDENTITY_INSERT [dbo].[web_tr_menutop] OFF
GO

--Table dbo.web_tr_products

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_tr_products] (
	[id_products_tr] [int] NOT NULL IDENTITY (1, 1),
	[name_product_tr] [nvarchar](200) NULL,
	[type_products_tr] [int] NULL,
	[status_products_tr] [int] NULL,
	[order_products_tr] [int] NULL,
	[img_main_products_tr] [nvarchar](200) NULL,
	[img1_main_products_tr] [nvarchar](200) NULL,
	[Specials] [int] NULL,
	[price_products] [nvarchar](200) NULL,
	[tomtat_products] [ntext] NULL,
	[noidung_products] [ntext] NULL,
	[img_small_products] [nvarchar](200) NULL,
	[img2_main_products_tr] [nvarchar](200) NULL,
	[img3_main_products_tr] [nvarchar](200) NULL,
	[price_products1] [nvarchar](200) NULL,
	[phantram_products] [nvarchar](200) NULL);
GO

SET IDENTITY_INSERT [dbo].[web_tr_products] ON
GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (17, N'Sữa Meiji 0-1', 1, 1, 1, N'81_2014-09-19-17-58-54_1_13307.gif.jpg', N'81_2014-09-19-17-59-1_81_2014-09-17-16-4-35_603000300.jpg', 1, N'575000', N'Sữa Meiji 0-1 800gr dành cho bé từ 0-1 tuổi', N'Pha sữa ở nhiệt độ nước 70 độ C. Pha 20 ml nước pha 1 thìa gạt 2,7 gam bột sữa Meiji số 0. Nên lấy 1 lượng nước ấm (70 độ C)= 2/3 lượng sữa cần pha sau đó cho bột sữa vào lắc tan, tiếp  theo cho nước sôi để nguội ( 70 độ C) vào để đạt đủ lượng sữa cần pha lắc tiếp lần nữa cho tan hết bột sữa, và để nguội đạt 38-40 độ C mới cho bé uống. Pha đúng tỷ lệ (Số thìa sữa và ml nước) theo độ tuổi của trẻ như trong bảng dưới đây. Mẹ nên pha đúng theo tỷ lệ, không nên pha đặc sẽ hại thận của bé vì phải làm việc quá nhiều, còn nếu pha loãng thì sẽ không đầy đủ chất dinh dưỡng cần thiết cho bé', N'&amp;amp;amp;amp;nbsp;', N'81_2014-09-19-17-58-19_m0.PNG', N'&amp;amp;amp;amp;nbsp;', N'575000', N'&amp;nbsp;')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (18, N'Sữa Meiji 1-3', 1, 1, 2, N'81_2014-09-21-12-13-17_81_2014-09-17-16-16-33_sua meiji 9 moi-585x650.jpg', N'81_2014-09-21-12-13-25_81_2014-09-17-16-28-45_1405338423_VK20of84.jpg', 0, N'470000', N'Sữa Meiji 1-3 (820gr) dành cho bé từ 1-3 tuổi', N'Pha sữa ở nhiệt độ nước 50 độ C (Khác với nhiệt độ pha sữa Meiji số 0 là 70 độ C), cứ 40 ml nước pha 1 thìa gạt 5,6g gam bột sữa. Nên lấy 1 lượng nước ấm (50 độ C)= 2/3 lượng sữa cần pha sau đó cho bột sữa vào lắc tan, tiếp  theo cho nước sôi để nguội ( 50 độ C) vào để đạt đủ lượng sữa cần pha lắc tiếp lần nữa cho tan hết bột sữa, và để nguội đạt 38-40 độ C mới cho bé uống.', N'&amp;amp;nbsp;', N'81_2014-09-21-12-13-37_Meiji-9.jpg', N'&amp;amp;nbsp;', N'470000', N'&amp;amp;nbsp;')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (22, N'Sữa Wakodo số 0', 1, 1, 6, N'81_2014-09-20-23-5-51_ihl1332326774.jpg', N'81_2014-09-20-23-5-54_tải xuống.jpg', 0, N'490000', N'Sữa Wakodo số 0 - 850g dành cho bé từ 0-12 tháng tuổi', N'Lấy chính xác lượng sữa bằng muỗng đi kèm, cho vào trong bình sữa đã khử trùng. Mỗi muỗng lường (2,6g) sữa bột pha được 20ml sữa. Giữ muỗng khô sạch, không để muỗng trong hộp sữa.  Đổ 2/3 lượng nước cần thiết sau khi đã đun sôi và để nguội đến 70 độ C. Đậy chặt nắp bình sữa , lắc nhẹ để hòa tan sữa. Bọc dụng cụ bằng khăn để tay không bị nóng. Chú ý không để dụng cụ trượt khỏi tay. Tháo nắp bình sữa ,đổ thêm nước nóng hơn 70 độ C hoặc nước nguội đã đun sôi đến thể tích cần thiết. Lượng nước tính đến vạch dưới của bọt sữa. Vặn chặt nắp bình sữa, lắc nhẹ để hòa tan sữa. Ngay sau khi sữa đã hòa tan, nhanh chóng cho bình sữa vào dòng nước chảy hoặc nước đá để làm nguội sữa trong bình xuống đến nhiệt độ cơ thể. Thử nhiệt độ sữa bằng cách nhỏ vài giọt sữa vào cổ tay. Nhiệt độ thích hợp là bằng nhiệt độ cơ thể. Sau đó cho trẻ ăn. Không pha sữa bằng nước sôi. Không đun sôi sữa đã pha. Chỉ pha sữa đủ cho một lần dùng, sữa còn lại sau hai giờ nên bỏ đi.', N'', N'81_2014-09-20-23-5-58_wakodo_0_-_300g_ms_2.jpg', N'', N'490000', N'')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (23, N'Kitkat Trà xanh', 4, 1, 1, N'81_2014-09-20-23-13-34_81_2014-09-18-10-46-54_0930234keo_kitkat_tra_xanh.jpg', N'81_2014-09-20-23-13-42_81_2014-09-18-10-47-4_10157140_751953124824817_27289345911334906_n.jpg', 0, N'120000', N'Đây là lọai bánh xốp được phủ lớp CHOCOLATE TRÀ XANH', N'Kitkat trà xanh là sản phẩm biến tấu có mặt đầu tiên tại Nhật Bản, nó gần như chiếm ưu thế số một trong những thực đơn tráng miệng hoặc nhận được nhiều quan tâm từ những người yêu thích trà xanh. Không có gì đáng ngạc nhiên khi mà vị trà xanh được giữ nguyên vẹn trong từng thanh bánh chocolate ngọt ngào. Đặc biệt hơn, với điểm nhấn là hương thơm những đọt trà xanh mới hái, maccha kit kat đã khẳng định được chất lượng, đảm bảo mang lại sức khỏe cho người sử dụng.', N'', N'81_2014-09-20-23-13-49_81_2014-09-18-10-47-0_1383651_1410453582518224_627014150_n.jpg', N'', N'100000', N'15')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (24, N'Kitkat Socola', 4, 1, 2, N'81_2014-09-20-23-20-13_81_2014-09-18-10-51-16_0000438_banh-kitkat-socola-den-goi-to_300.jpeg', N'81_2014-09-20-23-20-17_81_2014-09-18-10-51-22_263701_2560086016880_424841924_n.jpg', 0, N'120000', N'Bánh Kitkat Socola Đen (gói to)', N'Một gói với 13 thanh đôi kitkat đen, là vị người lớn rất thích ăn!
Nhà sản xuất: Nhật bản', N'', N'81_2014-09-20-23-20-21_81_2014-09-18-10-51-31_kitkat_darkchocolate.jpg', N'', N'100000', N'')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (26, N'IP6 16GB', 7, 1, 1, N'81_2014-09-21-12-2-41_ip6.jpg', N'81_2014-09-21-12-3-53_hqdefault.jpg', 0, N'21500000', N'IP6 16GB hàng Nhật xách tay, bản Quốc tế', N'IP6 16GB hàng Nhật xách tay, bản Quốc tế', N'&nbsp;', N'81_2014-09-21-12-4-2_1424406_10152736387378679_3462785370459246862_n.jpg', N'&nbsp;', N'21500000', N'&nbsp;')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (27, N'IP6 64GB', 7, 1, 2, N'81_2014-09-21-12-6-29_ip6.jpg', N'81_2014-09-21-12-6-29_1424406_10152736387378679_3462785370459246862_n.jpg', 0, N'22500000', N'IP6 64GB hàng Nhật xách tay, bản Quốc tế', N'IP6 64GB hàng Nhật xách tay, bản Quốc tế', N'&nbsp;', N'81_2014-09-21-12-6-46_nhung-tinh-nang-duoc-mong-cho-tren-iphone-6.jpg', N'&nbsp;', N'22500000', N'&nbsp;')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (28, N'Xương khớp Glucosamine', 3, 1, 1, N'81_2014-09-30-11-23-26_ori4571157256290-800x800.jpg', N'81_2014-09-30-11-23-31_10646954_1492236337702478_9113323534616851544_n.jpg', 1, N'1000000', N'Thuốc điều trị xương khớp Glucosamine 900 viên ORIHIRO - Nhật Bản', N'Thuốc điều trị xương khớp Glucosamine 1500mg của hãng ORIHIRO được bào chế từ vỏ loài giáp xác như tôm biển, cua biểm, có bổ sung chất Chondroitin MSM chiết xuất từ sụn vi cá mập. Ngày 10 viên chia 2 lần, uống sau khi ăn.', N'', N'81_2014-09-30-11-24-19_ori4571157256290-800x800.jpg', N'', N'1000000', N'')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (29, N'Tảo xoắn Spirulina', 3, 1, 2, N'81_2014-09-30-11-53-44_Tao-Nhat-2200-vien.jpg', N'81_2014-09-30-11-54-2_taoxoannhatban3.jpg', 0, N'700000', N'Tảo xoắn Spirulina 2200 viên Nhật Bản', N'
    Dùng từ 20-40 viên mỗi ngày chia làm 2-4 lần theo tiêu chuẩn của người Nhật. Người lớn có thể uống từ 10-20 viên mỗi ngày (tối đa là 20 viên).   Trẻ em trên 5 tuổi có thể uống từ 6-10 viên mỗi ngày. Trẻ em dưới 5 tuổi 3-5 viên mỗi ngày.   Người thừa cân, béo phì hay trong gian đoạn ăn kiêng (giảm béo) nếu muốn giảm cân nên uống Tảo biển Nhật Spirulina trước bữa ăn từ 15-20 phút. Nếu muốn tăng cân nên uống sau bữa ăn hàng ngày. Nên uống nhiều nước khi dùng tảo để có tác dụng tốt hơn cho cơ thể.
', N'', N'81_2014-09-30-11-54-7_t_o_nh_t_1x800x800x4.jpg', N'', N'700000', N'')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (25, N'Ruốc Cá hồi', 4, 1, 3, N'81_2014-09-20-23-53-20_ruoc-ca-hoi-nhat-ban-1.jpg', N'81_2014-09-20-23-54-39_10739_0_4950861103227_1.jpg', 0, N'160000', N'1 cặp gồm 2 lọ ruốc, vị thơm ngon, đầy đủ dưỡng chất mà không có mùi tanh như các loại ruốc cá thông thường', N'1 cặp gồm 2 lọ ruốc, vị thơm ngon, đầy đủ dưỡng chất mà không có mùi tanh như các loại ruốc cá thông thường', N'&amp;nbsp;', N'81_2014-09-20-23-54-52_Manual08_RuocCaHoi01.jpg', N'&amp;nbsp;', N'160000', N'&amp;nbsp;')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (19, N'Sữa Icreo Glico Nhật Bản số 9', 1, 1, 3, N'81_2014-09-19-17-45-7_81_2014-09-18-10-10-42_ICREO-9.jpg', N'81_2014-09-19-17-45-15_81_2014-09-18-10-11-3_img_6604.jpg', 1, N'590000', N'Sữa Icreo Glico số 9 hộp 850g Dành cho trẻ từ 9 tháng - 3 tuổi', N'Đun sôi nước trong 10 phút, sau đó để nguội xuống 50 độ. Cứ 1 muỗng gạt ngang (khoảng 5,44g ) thì pha với 40ml nước. Sau đó để nguội tới khoảng 37-38 độ C thì cho bé uống. Có hương vị thơm ngon, bổ dưỡng. Bảo quản : Bảo quản sữa nơi khô thoáng, tránh ánh sáng trực tiếp. Không để sữa trong tủ lạnh. Khi mở nắp chỉ nên sử dụng trong vòng 30 ngày.', N'', N'81_2014-09-19-17-45-20_81_2014-09-18-10-10-54_3f23b639-cdb7-4237-a5df-d250991cfa61.jpg', N'', N'590000', N'')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (20, N'Sữa Icreo Glico Nhật Bản số 0', 1, 1, 4, N'81_2014-09-19-17-49-49_81_2014-09-18-9-24-32_bibikids.vn.jpg', N'81_2014-09-19-17-49-54_81_2014-09-18-9-24-48_img_6438.jpg', 0, N'690000', N'Sữa Icreo Glico Nhật Bản số 0 dành cho trẻ từ 0 - 9 tháng', N'', N'', N'81_2014-09-19-17-49-58_81_2014-09-18-9-24-40_sua glico so 0.jpg', N'', N'690000', N'')

GO
INSERT INTO [dbo].[web_tr_products] ([id_products_tr], [name_product_tr], [type_products_tr], [status_products_tr], [order_products_tr], [img_main_products_tr], [img1_main_products_tr], [Specials], [price_products], [tomtat_products], [noidung_products], [img_small_products], [img2_main_products_tr], [img3_main_products_tr], [price_products1], [phantram_products])
	VALUES (21, N'Sữa Wakodo số 9', 1, 1, 5, N'81_2014-09-19-17-56-10_wa9.jpg', N'81_2014-09-19-17-52-9_wakodo_9_ms_2_1.jpg', 1, N'450000', N'Sữa Wakodo số 9 cho bé từ 1-3 tuổi phát triển trí não, chiều cao', N'Pha lượng sữa bằng muỗng đi kèm, mỗi muỗng(2,6g) pha được 20ml sữa. Giữ muỗng khô sạch không để muỗng trong hộp sữa. Đổ 2/3 lượng nước cần thiết sau khi đã đun sôi và để nguội đến 70 độ C. Đậy chặt dụng cụ pha sữa, lắc nhẹ để hòa tan sữa. Bọc dụng cụ bằng khăn để tay không bị nóng. Chú ý không để dụng cụ trượt khỏi tay. Tháo nắp dụng cụ, đổ thêm nước nóng hơn 70 độ C hoặc nước nguội đã đun sôi đến thể tích cần thiết. Lượng nước tính đến vạch dưới của bọt sữa. Vặn chặt nắp dụng cụ pha sữa, lắc nhẹ để hòa tan  sữa Wakodo. Ngay sau khi sữa đã hòa tan, nhanh chóng cho dụng cụ pha sữa vào dòng nước chảy hoặc nước đá để làm nguội sữa  xuống  đến nhiệt độ cơ thể. Thử nhiệt độ sữa bằng cách nhỏ vài giọt sữa vào cổ tay. Nhiệt độ thích hợp là bằng nhiệt độ cơ thể. Sau đó cho trẻ ăn.', N'&nbsp;', N'81_2014-09-19-17-56-32_wa9.PNG', N'&nbsp;', N'450000', N'&nbsp;')

GO
SET IDENTITY_INSERT [dbo].[web_tr_products] OFF
GO

--Table dbo.web_tr_quangcao

USE [nhphompq_phongkhambacsihon]
GO

--Create table and its columns
CREATE TABLE [dbo].[web_tr_quangcao] (
	[id_quangcao] [int] NOT NULL IDENTITY (1, 1),
	[name_quangcao] [nvarchar](200) NULL,
	[links_quangcao] [nvarchar](200) NULL,
	[status_quangcao] [nvarchar](200) NULL,
	[order_quangcao] [int] NULL,
	[img_quangcao] [nvarchar](200) NULL,
	[type_quangcao] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[web_tr_quangcao] ON
GO
INSERT INTO [dbo].[web_tr_quangcao] ([id_quangcao], [name_quangcao], [links_quangcao], [status_quangcao], [order_quangcao], [img_quangcao], [type_quangcao])
	VALUES (1, N'Thuốc', N'yezland.com/', N'1', 2, N'80_2014-08-28-17-19-1_advertising_002.jpg', 0)

GO
INSERT INTO [dbo].[web_tr_quangcao] ([id_quangcao], [name_quangcao], [links_quangcao], [status_quangcao], [order_quangcao], [img_quangcao], [type_quangcao])
	VALUES (2, N'Thuốcdcdcd', N'zing.vn', N'1', 1, N'80_2014-08-27-23-30-16_tt.jpg', 1)

GO
INSERT INTO [dbo].[web_tr_quangcao] ([id_quangcao], [name_quangcao], [links_quangcao], [status_quangcao], [order_quangcao], [img_quangcao], [type_quangcao])
	VALUES (7, N'Thuốc 2', N'google.com', N'1', 1, N'80_2014-09-08-17-35-9_3.jpg', 0)

GO
INSERT INTO [dbo].[web_tr_quangcao] ([id_quangcao], [name_quangcao], [links_quangcao], [status_quangcao], [order_quangcao], [img_quangcao], [type_quangcao])
	VALUES (6, N'dffdfd', N'google.com', N'1', 1, N'80_2014-08-27-23-30-5_advertising.jpg', 1)

GO
SET IDENTITY_INSERT [dbo].[web_tr_quangcao] OFF
GO

--Executing Entities
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_ list_product] @txt_list_prod_name NVARCHAR(200),@cb_list_prod_order INTEGER,@cb_list_prod_link INTEGER,@cb_list_prod_status INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  list_prod_name as 'Tên danh mục', list_prod_order as 'Thứ tự', list_prod_link as 'Cấp cha', list_prod_status as 'Trạng thái',id_list_prod as _fs_ws_tb_key FROM web_list_product end if @call_action=2 begin INSERT INTO web_list_product (list_prod_name,list_prod_order,list_prod_link,list_prod_status) VALUES (@txt_list_prod_name,@cb_list_prod_order,@cb_list_prod_link,@cb_list_prod_status); end if @call_action=3 begin UPDATE web_list_product SET list_prod_name =@txt_list_prod_name,list_prod_order =@cb_list_prod_order,list_prod_link =@cb_list_prod_link,list_prod_status =@cb_list_prod_status WHERE id_list_prod =@_fs_item_id end if @call_action=4 begin DELETE FROM web_list_product WHERE id_list_prod =@_fs_item_id end if @call_action=5 begin SELECT list_prod_name as 'txt_list_prod_name',list_prod_order as 'cb_list_prod_order',list_prod_link as 'cb_list_prod_link',list_prod_status as 'cb_list_prod_status' FROM web_list_product WHERE id_list_prod =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_banner] @txt_banner_name NVARCHAR(200),@cb_banner_order INTEGER,@txt_banner_link NVARCHAR(200),@txt_banner_img NVARCHAR(200),@txt_banner_tiny NVARCHAR(200),@cb_banner_status INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  banner_name as 'Tên banner', banner_order as 'Thứ tự', banner_link as 'Link khi click', banner_img as 'Hình banner', banner_tiny as 'Hình nhỏ banner', banner_status as 'Status banner',id_banner as _fs_ws_tb_key FROM web_banner end if @call_action=2 begin INSERT INTO web_banner (banner_name,banner_order,banner_link,banner_img,banner_tiny,banner_status) VALUES (@txt_banner_name,@cb_banner_order,@txt_banner_link,@txt_banner_img,@txt_banner_tiny,@cb_banner_status); end if @call_action=3 begin UPDATE web_banner SET banner_name =@txt_banner_name,banner_order =@cb_banner_order,banner_link =@txt_banner_link,banner_img =@txt_banner_img,banner_tiny =@txt_banner_tiny,banner_status =@cb_banner_status WHERE id_banner =@_fs_item_id end if @call_action=4 begin DELETE FROM web_banner WHERE id_banner =@_fs_item_id end if @call_action=5 begin SELECT banner_name as 'txt_banner_name',banner_order as 'cb_banner_order',banner_link as 'txt_banner_link',banner_img as 'txt_banner_img',banner_tiny as 'txt_banner_tiny',banner_status as 'cb_banner_status' FROM web_banner WHERE id_banner =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_products] @txt_prod_name NVARCHAR(200),@cb_prod_order INTEGER,@cb_prod_status INTEGER,@txt_prod_content NTEXT,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  prod_name as 'Tên sản phẩm', prod_order as 'Thứ tự', prod_status as 'Trạng thái', prod_content as 'Nội dung',id_prod as _fs_ws_tb_key FROM web_products end if @call_action=2 begin INSERT INTO web_products (prod_name,prod_order,prod_status,prod_content) VALUES (@txt_prod_name,@cb_prod_order,@cb_prod_status,@txt_prod_content); end if @call_action=3 begin UPDATE web_products SET prod_name =@txt_prod_name,prod_order =@cb_prod_order,prod_status =@cb_prod_status,prod_content =@txt_prod_content WHERE id_prod =@_fs_item_id end if @call_action=4 begin DELETE FROM web_products WHERE id_prod =@_fs_item_id end if @call_action=5 begin SELECT prod_name as 'txt_prod_name',prod_order as 'cb_prod_order',prod_status as 'cb_prod_status',prod_content as 'txt_prod_content' FROM web_products WHERE id_prod =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_group_page_page] @cb_nhom_quyen INTEGER,@cb_trang INTEGER,@cb_cong_ty INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_company as 'Công ty', role_group_page_id as 'Nhóm quyền', id_page as 'Page',id_group_page_detail as _fs_ws_tb_key FROM tblSysUserGroupPagePage end if @call_action=2 begin INSERT INTO tblSysUserGroupPagePage (role_group_page_id,id_page,id_company) VALUES (@cb_nhom_quyen,@cb_trang,@cb_cong_ty); end if @call_action=3 begin UPDATE tblSysUserGroupPagePage SET role_group_page_id =@cb_nhom_quyen,id_page =@cb_trang,id_company =@cb_cong_ty WHERE id_group_page_detail =@_fs_item_id end if @call_action=4 begin DELETE FROM tblSysUserGroupPagePage WHERE id_group_page_detail =@_fs_item_id end if @call_action=5 begin SELECT role_group_page_id as 'cb_nhom_quyen',id_page as 'cb_trang',id_company as 'cb_cong_ty' FROM tblSysUserGroupPagePage WHERE id_group_page_detail =@_fs_item_id end RETURN 0







GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_content] @txt_content_name NTEXT,@cb_id_menu INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  content_name as 'Nội dung', id_menu as 'Mã menu',id_content as _fs_ws_tb_key FROM web_content end if @call_action=2 begin INSERT INTO web_content (content_name,id_menu) VALUES (@txt_content_name,@cb_id_menu); end if @call_action=3 begin UPDATE web_content SET content_name =@txt_content_name,id_menu =@cb_id_menu WHERE id_content =@_fs_item_id end if @call_action=4 begin DELETE FROM web_content WHERE id_content =@_fs_item_id end if @call_action=5 begin SELECT content_name as 'txt_content_name',id_menu as 'cb_id_menu' FROM web_content WHERE id_content =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_web_tr_sanpham] @ful_img_main_products NVARCHAR(200),@ful_hinh1_products NVARCHAR(200),@dr_sanphamtieubieu INTEGER,@txt_tomtat_products NTEXT,@txt_noidung_products NTEXT,@ful_hinh2_products NVARCHAR(200),@ful_hinh3_products NVARCHAR(200),@txt_giamgia NVARCHAR(200),@txt_giam_phantram NVARCHAR(200),@txt_products NVARCHAR(200),@dr_type_products INTEGER,@dr_status_products INTEGER,@dr_order_products INTEGER,@txt_price NVARCHAR(200),@ful_small_img_products NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_product_tr as 'Tên sản phẩm', type_products_tr as 'Loại sản phẩm', status_products_tr as 'Trạng thái', price_products as 'Giá', img_small_products as 'Hình nhỏ',id_products_tr as _fs_ws_tb_key FROM web_tr_products end if @call_action=2 begin INSERT INTO web_tr_products (img_main_products_tr,img1_main_products_tr,Specials,tomtat_products,noidung_products,img2_main_products_tr,img3_main_products_tr,price_products1,phantram_products,name_product_tr,type_products_tr,status_products_tr,order_products_tr,price_products,img_small_products) VALUES (@ful_img_main_products,@ful_hinh1_products,@dr_sanphamtieubieu,@txt_tomtat_products,@txt_noidung_products,@ful_hinh2_products,@ful_hinh3_products,@txt_giamgia,@txt_giam_phantram,@txt_products,@dr_type_products,@dr_status_products,@dr_order_products,@txt_price,@ful_small_img_products); end if @call_action=3 begin UPDATE web_tr_products SET img_main_products_tr =@ful_img_main_products,img1_main_products_tr =@ful_hinh1_products,Specials =@dr_sanphamtieubieu,tomtat_products =@txt_tomtat_products,noidung_products =@txt_noidung_products,img2_main_products_tr =@ful_hinh2_products,img3_main_products_tr =@ful_hinh3_products,price_products1 =@txt_giamgia,phantram_products =@txt_giam_phantram,name_product_tr =@txt_products,type_products_tr =@dr_type_products,status_products_tr =@dr_status_products,order_products_tr =@dr_order_products,price_products =@txt_price,img_small_products =@ful_small_img_products WHERE id_products_tr =@_fs_item_id end if @call_action=4 begin DELETE FROM web_tr_products WHERE id_products_tr =@_fs_item_id end if @call_action=5 begin SELECT img_main_products_tr as 'ful_img_main_products',img1_main_products_tr as 'ful_hinh1_products',Specials as 'dr_sanphamtieubieu',tomtat_products as 'txt_tomtat_products',noidung_products as 'txt_noidung_products',img2_main_products_tr as 'ful_hinh2_products',img3_main_products_tr as 'ful_hinh3_products',price_products1 as 'txt_giamgia',phantram_products as 'txt_giam_phantram',name_product_tr as 'txt_products',type_products_tr as 'dr_type_products',status_products_tr as 'dr_status_products',order_products_tr as 'dr_order_products',price_products as 'txt_price',img_small_products as 'ful_small_img_products' FROM web_tr_products WHERE id_products_tr =@_fs_item_id end RETURN 0









GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_employer] @txt_employer_name NVARCHAR(200),@cb_id_title INTEGER,@txt_employer_code NVARCHAR(200),@txt_employer_ext NVARCHAR(200),@txt_employer_mobile NVARCHAR(200),@cb_employer_status INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  employer_name as 'Họ và Tên ', id_title as 'Mã chức vụ', employer_code as 'Mã nhân viên code', employer_ext as 'Số điện thoại ext', employer_mobile as 'Điện thoại di động', employer_status as 'Trạng thái',id_employer as _fs_ws_tb_key FROM web_employer end if @call_action=2 begin INSERT INTO web_employer (employer_name,id_title,employer_code,employer_ext,employer_mobile,employer_status) VALUES (@txt_employer_name,@cb_id_title,@txt_employer_code,@txt_employer_ext,@txt_employer_mobile,@cb_employer_status); end if @call_action=3 begin UPDATE web_employer SET employer_name =@txt_employer_name,id_title =@cb_id_title,employer_code =@txt_employer_code,employer_ext =@txt_employer_ext,employer_mobile =@txt_employer_mobile,employer_status =@cb_employer_status WHERE id_employer =@_fs_item_id end if @call_action=4 begin DELETE FROM web_employer WHERE id_employer =@_fs_item_id end if @call_action=5 begin SELECT employer_name as 'txt_employer_name',id_title as 'cb_id_title',employer_code as 'txt_employer_code',employer_ext as 'txt_employer_ext',employer_mobile as 'txt_employer_mobile',employer_status as 'cb_employer_status' FROM web_employer WHERE id_employer =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_menu_root] @cb_id_menu INTEGER,@txt_menu_name NVARCHAR(200),@cb_menu_order INTEGER,@txt_menu_code NVARCHAR(200),@cb_banner_tiny NVARCHAR(200),@cb_menu_status INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  menu_name as 'Tên menu', menu_order as 'Thứ tự', menu_code as 'Tên không dấu', banner_tiny as 'Hình banner nhỏ', menu_status as 'Trạng thái',id_menu as _fs_ws_tb_key FROM web_menu_root end if @call_action=2 begin INSERT INTO web_menu_root (menu_name,menu_order,menu_code,banner_tiny,menu_status) VALUES (@txt_menu_name,@cb_menu_order,@txt_menu_code,@cb_banner_tiny,@cb_menu_status); end if @call_action=3 begin UPDATE web_menu_root SET menu_name =@txt_menu_name,menu_order =@cb_menu_order,menu_code =@txt_menu_code,banner_tiny =@cb_banner_tiny,menu_status =@cb_menu_status WHERE id_menu =@_fs_item_id end if @call_action=4 begin DELETE FROM web_menu_root WHERE id_menu =@_fs_item_id end if @call_action=5 begin SELECT menu_name as 'txt_menu_name',menu_order as 'cb_menu_order',menu_code as 'txt_menu_code',banner_tiny as 'cb_banner_tiny',menu_status as 'cb_menu_status' FROM web_menu_root WHERE id_menu =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_new_PM] @txt_shortdescription_new_PM NTEXT,@txt_description_new_PM NTEXT,@fl_img1_new_PM NVARCHAR(200),@ful_img_new_PM NVARCHAR(200),@txt_title_new_PM NVARCHAR(200),@drp_status_new_PM INTEGER,@drp_order_new_PM INTEGER,@drp_type_new_PM INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  Img_new_PM as 'Hình', Title_new_PM as 'Tiêu đề', Status_new_PM as 'Trạng thái', Order_new_PM as 'Thứ tự', Type_new_PM as 'Loại tin',ID_new_PM as _fs_ws_tb_key FROM tbl_new_PM end if @call_action=2 begin INSERT INTO tbl_new_PM (Shortdescription_new_PM,Description,Img1_new_PM_,Img_new_PM,Title_new_PM,Status_new_PM,Order_new_PM,Type_new_PM) VALUES (@txt_shortdescription_new_PM,@txt_description_new_PM,@fl_img1_new_PM,@ful_img_new_PM,@txt_title_new_PM,@drp_status_new_PM,@drp_order_new_PM,@drp_type_new_PM); end if @call_action=3 begin UPDATE tbl_new_PM SET Shortdescription_new_PM =@txt_shortdescription_new_PM,Description =@txt_description_new_PM,Img1_new_PM_ =@fl_img1_new_PM,Img_new_PM =@ful_img_new_PM,Title_new_PM =@txt_title_new_PM,Status_new_PM =@drp_status_new_PM,Order_new_PM =@drp_order_new_PM,Type_new_PM =@drp_type_new_PM WHERE ID_new_PM =@_fs_item_id end if @call_action=4 begin DELETE FROM tbl_new_PM WHERE ID_new_PM =@_fs_item_id end if @call_action=5 begin SELECT Shortdescription_new_PM as 'txt_shortdescription_new_PM',Description as 'txt_description_new_PM',Img1_new_PM_ as 'fl_img1_new_PM',Img_new_PM as 'ful_img_new_PM',Title_new_PM as 'txt_title_new_PM',Status_new_PM as 'drp_status_new_PM',Order_new_PM as 'drp_order_new_PM',Type_new_PM as 'drp_type_new_PM' FROM tbl_new_PM WHERE ID_new_PM =@_fs_item_id end RETURN 0




GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_stock] @cb_ke_hang INTEGER,@txt_ma_ke_hang NVARCHAR(200),@cb_trang_thai INTEGER,@cb_thuoc_kho INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  store_stock_code as 'Mã khách hàng', store_stock_status as 'Trạng thái', store_stock_store as 'Thuộc kho',id_store_stock as _fs_ws_tb_key FROM store_stock end if @call_action=2 begin INSERT INTO store_stock (store_stock_code,store_stock_status,store_stock_store) VALUES (@txt_ma_ke_hang,@cb_trang_thai,@cb_thuoc_kho); end if @call_action=3 begin UPDATE store_stock SET store_stock_code =@txt_ma_ke_hang,store_stock_status =@cb_trang_thai,store_stock_store =@cb_thuoc_kho WHERE id_store_stock =@_fs_item_id end if @call_action=4 begin DELETE FROM store_stock WHERE id_store_stock =@_fs_item_id end if @call_action=5 begin SELECT store_stock_code as 'txt_ma_ke_hang',store_stock_status as 'cb_trang_thai',store_stock_store as 'cb_thuoc_kho' FROM store_stock WHERE id_store_stock =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_menu_PM] @txt_name_menu_PM NVARCHAR(200),@txt_link_menu_PM NVARCHAR(200),@drp_type_menu_PM INTEGER,@drp_status_menu_PM INTEGER,@drp_order_menu_PM INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  Name_menu_PM as 'Tên Menu', Link_menu_PM as 'Link Menu', Type_menu_PM as 'Loại Menu', Status_menu_PM as 'Trạng thái Menu', Order_menu_PM as 'Thứ tự',ID_menu_PM as _fs_ws_tb_key FROM tbl_menu_PM end if @call_action=2 begin INSERT INTO tbl_menu_PM (Name_menu_PM,Link_menu_PM,Type_menu_PM,Status_menu_PM,Order_menu_PM) VALUES (@txt_name_menu_PM,@txt_link_menu_PM,@drp_type_menu_PM,@drp_status_menu_PM,@drp_order_menu_PM); end if @call_action=3 begin UPDATE tbl_menu_PM SET Name_menu_PM =@txt_name_menu_PM,Link_menu_PM =@txt_link_menu_PM,Type_menu_PM =@drp_type_menu_PM,Status_menu_PM =@drp_status_menu_PM,Order_menu_PM =@drp_order_menu_PM WHERE ID_menu_PM =@_fs_item_id end if @call_action=4 begin DELETE FROM tbl_menu_PM WHERE ID_menu_PM =@_fs_item_id end if @call_action=5 begin SELECT Name_menu_PM as 'txt_name_menu_PM',Link_menu_PM as 'txt_link_menu_PM',Type_menu_PM as 'drp_type_menu_PM',Status_menu_PM as 'drp_status_menu_PM',Order_menu_PM as 'drp_order_menu_PM' FROM tbl_menu_PM WHERE ID_menu_PM =@_fs_item_id end RETURN 0







GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_contact] @txt_email_nv NVARCHAR(200),@cb_id_company INTEGER,@txt_ho_va_ten NVARCHAR(200),@txt_account_chat NVARCHAR(200),@txt_mobile NVARCHAR(200),@txt_chuc_vu NVARCHAR(200),@txt_noi_bo_ext NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_store_company as 'Tên công ty', contact_full_name as 'Họ và tên', contact_chat as 'Tài khoản CHAT', contact_mobile as 'Di động', contact_title as 'Chức vụ', contact_ext as 'Nội bộ (Ext)', contact_email as 'Email',id_store_contact as _fs_ws_tb_key FROM store_contact end if @call_action=2 begin INSERT INTO store_contact (contact_email,id_store_company,contact_full_name,contact_chat,contact_mobile,contact_title,contact_ext) VALUES (@txt_email_nv,@cb_id_company,@txt_ho_va_ten,@txt_account_chat,@txt_mobile,@txt_chuc_vu,@txt_noi_bo_ext); end if @call_action=3 begin UPDATE store_contact SET contact_email =@txt_email_nv,id_store_company =@cb_id_company,contact_full_name =@txt_ho_va_ten,contact_chat =@txt_account_chat,contact_mobile =@txt_mobile,contact_title =@txt_chuc_vu,contact_ext =@txt_noi_bo_ext WHERE id_store_contact =@_fs_item_id end if @call_action=4 begin DELETE FROM store_contact WHERE id_store_contact =@_fs_item_id end if @call_action=5 begin SELECT contact_email as 'txt_email_nv',id_store_company as 'cb_id_company',contact_full_name as 'txt_ho_va_ten',contact_chat as 'txt_account_chat',contact_mobile as 'txt_mobile',contact_title as 'txt_chuc_vu',contact_ext as 'txt_noi_bo_ext' FROM store_contact WHERE id_store_contact =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_silde_PM] @txt_name_silde_PM NVARCHAR(200),@ful_img_silde_PM NVARCHAR(200),@drp_status_silde_PM INTEGER,@drp_order_silde_PM INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  Img_silde_PM as 'Hình', Name_silde_PM as 'Tên Silde PM', Status_silde_PM as 'Trạng Thái ', Order_silde_PM as 'Thứ tự',ID_silde_PM as _fs_ws_tb_key FROM tbl_silde_PM end if @call_action=2 begin INSERT INTO tbl_silde_PM (Name_silde_PM,Img_silde_PM,Status_silde_PM,Order_silde_PM) VALUES (@txt_name_silde_PM,@ful_img_silde_PM,@drp_status_silde_PM,@drp_order_silde_PM); end if @call_action=3 begin UPDATE tbl_silde_PM SET Name_silde_PM =@txt_name_silde_PM,Img_silde_PM =@ful_img_silde_PM,Status_silde_PM =@drp_status_silde_PM,Order_silde_PM =@drp_order_silde_PM WHERE ID_silde_PM =@_fs_item_id end if @call_action=4 begin DELETE FROM tbl_silde_PM WHERE ID_silde_PM =@_fs_item_id end if @call_action=5 begin SELECT Name_silde_PM as 'txt_name_silde_PM',Img_silde_PM as 'ful_img_silde_PM',Status_silde_PM as 'drp_status_silde_PM',Order_silde_PM as 'drp_order_silde_PM' FROM tbl_silde_PM WHERE ID_silde_PM =@_fs_item_id end RETURN 0







GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_prod] @txt_ten_san_pham NVARCHAR(200),@file_hinh_san_pham NVARCHAR(200),@txt_ma_san_pham NVARCHAR(200),@cb_don_vi_tinh INTEGER,@cb_nhom_san_pham INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  store_prod_img as 'Hình sản phẩm', id_store_cate as 'Nhóm sản phẩm', store_prod_code as 'Mã sản phẩm', store_prod_name as 'Tên sản phẩm', id_store_unit as 'Đơn vị tính',id_store_prod as _fs_ws_tb_key FROM store_prod end if @call_action=2 begin INSERT INTO store_prod (store_prod_name,store_prod_img,store_prod_code,id_store_unit,id_store_cate) VALUES (@txt_ten_san_pham,@file_hinh_san_pham,@txt_ma_san_pham,@cb_don_vi_tinh,@cb_nhom_san_pham); end if @call_action=3 begin UPDATE store_prod SET store_prod_name =@txt_ten_san_pham,store_prod_img =@file_hinh_san_pham,store_prod_code =@txt_ma_san_pham,id_store_unit =@cb_don_vi_tinh,id_store_cate =@cb_nhom_san_pham WHERE id_store_prod =@_fs_item_id end if @call_action=4 begin DELETE FROM store_prod WHERE id_store_prod =@_fs_item_id end if @call_action=5 begin SELECT store_prod_name as 'txt_ten_san_pham',store_prod_img as 'file_hinh_san_pham',store_prod_code as 'txt_ma_san_pham',id_store_unit as 'cb_don_vi_tinh',id_store_cate as 'cb_nhom_san_pham' FROM store_prod WHERE id_store_prod =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_wb_banner] @txt_banner_name NVARCHAR(200),@dr_banner_order INTEGER,@ul_image NVARCHAR(200),@dr_status_banner INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_banner as 'Tên banner', order_banner as 'Thứ tự', image_banner as 'Image', status_banner as 'Status banner',id_banner as _fs_ws_tb_key FROM wb_banner end if @call_action=2 begin INSERT INTO wb_banner (name_banner,order_banner,image_banner,status_banner) VALUES (@txt_banner_name,@dr_banner_order,@ul_image,@dr_status_banner); end if @call_action=3 begin UPDATE wb_banner SET name_banner =@txt_banner_name,order_banner =@dr_banner_order,image_banner =@ul_image,status_banner =@dr_status_banner WHERE id_banner =@_fs_item_id end if @call_action=4 begin DELETE FROM wb_banner WHERE id_banner =@_fs_item_id end if @call_action=5 begin SELECT name_banner as 'txt_banner_name',order_banner as 'dr_banner_order',image_banner as 'ul_image',status_banner as 'dr_status_banner' FROM wb_banner WHERE id_banner =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create FUNCTION [dbo].[Split]
    (
      @RowData NVARCHAR(MAX) ,
      @SplitOn NVARCHAR(5)
    )
RETURNS @ReturnValue TABLE ( Data NVARCHAR(MAX) )
AS 
    BEGIN
        DECLARE @Counter INT
        SET @Counter = 1 
        WHILE ( CHARINDEX(@SplitOn, @RowData) > 0 ) 
            BEGIN  
                INSERT  INTO @ReturnValue
                        ( data
                        )
                        SELECT  Data = LTRIM(RTRIM(SUBSTRING(@RowData, 1,
                                                             CHARINDEX(@SplitOn,
                                                              @RowData) - 1)))
                SET @RowData = SUBSTRING(@RowData,
                                         CHARINDEX(@SplitOn, @RowData) + 1,
                                         LEN(@RowData)) 
                SET @Counter = @Counter + 1  
            END 
        INSERT  INTO @ReturnValue
                ( data )
                SELECT  Data = LTRIM(RTRIM(@RowData))  
        RETURN  
    END;
    












GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 
    
    create FUNCTION [dbo].[func_slipt_max_string](@InputString [nvarchar](max) = '', @Delimitter [varchar](5) = '!%%!')
RETURNS @RESULT TABLE (
	[ID] [int] IDENTITY(1,1),
	[Data] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) WITH EXECUTE AS CALLER
AS 
BEGIN 
	DECLARE @XML XML 
	SELECT @XML = CONVERT(XML, REPLACE(SQL_TEXT,'&','gg')) 
	FROM ( 
		SELECT '<root><item>' 
			+ REPLACE(@InputString, @Delimitter, '</item><item>') 
			+ '</item></root>' AS SQL_TEXT 
		) dt 
	
	INSERT INTO @RESULT(Data) 
	SELECT REPLACE( t.col.query('.').value('.', 'NVARCHAR(1000)') ,'gg','&') AS DelimittedStrings
	FROM @XML.nodes('root/item') t(col) 
	RETURN 
END 












GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[kh_store_exp_detail_update]
@_fs_item_id int,
@list_san_pham NVARCHAR(200)
as
begin	
declare @dataOne nvarchar(200)
delete from [store_exp_detail] where id_store_exp=@_fs_item_id
DECLARE db_cursor_data CURSOR FOR  
SELECT Data 
FROM dbo.Split(@list_san_pham,';')
OPEN db_cursor_data   
FETCH NEXT FROM db_cursor_data INTO @dataOne   

WHILE @@FETCH_STATUS = 0   
BEGIN   
	declare @id_store_exp int,@id_store_prod int,@store_prod_count int,@id_store_slot int,@store_prod_cost int,@store_prod_shelf nvarchar(10)
	SELECT @id_store_prod=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=1
	SELECT @store_prod_count=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=2
	SELECT @store_prod_shelf=Data
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=3
	SELECT @store_prod_cost=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=4
	SELECT @id_store_slot=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=5
	
	INSERT INTO [store_exp_detail]
           ([id_store_exp]
           ,[id_store_prod]
           ,[store_prod_count]
           ,[id_store_slot]
           ,[store_prod_cost]
           ,[store_prod_shelf])
     VALUES
           (@_fs_item_id
           ,@id_store_prod
           ,@store_prod_count
           ,@id_store_slot
           ,@store_prod_cost
           ,CONVERT(datetime,@store_prod_shelf,103))

    FETCH NEXT FROM db_cursor_data INTO @dataOne   
END   

CLOSE db_cursor_data   
DEALLOCATE db_cursor_data

end













GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_exp] 
@list_san_pham NVARCHAR(200),
@txt_ten_phieu NVARCHAR(200),
@cb_nguoi_duyet INTEGER,
@cb_kiem_tra_xuat INTEGER,
@txt_phi_van_chuyen INTEGER,
@_fs_item_id int,
@call_action int 
AS  
if @call_action=1 
begin 
SELECT  store_exp_name as 'Tên phiếu', store_exp_creater as 'Người xuất phiếu', store_exp_checker as 'Người kiểm hàng',id_store_exp as _fs_ws_tb_key FROM store_exp 
end 
if @call_action=2 
begin 
INSERT INTO store_exp (store_exp_list_data,store_exp_name,store_exp_creater,store_exp_checker,store_exp_cost) VALUES (@list_san_pham,@txt_ten_phieu,@cb_nguoi_duyet,@cb_kiem_tra_xuat,@txt_phi_van_chuyen); 
SELECT @_fs_item_id=@@IDENTITY
EXEC	kh_store_exp_detail_update	@_fs_item_id,	 @list_san_pham
end 
if @call_action=3 
begin UPDATE store_exp SET store_exp_list_data =@list_san_pham,store_exp_name =@txt_ten_phieu,store_exp_creater =@cb_nguoi_duyet,store_exp_checker =@cb_kiem_tra_xuat,store_exp_cost =@txt_phi_van_chuyen WHERE id_store_exp =@_fs_item_id 
EXEC	kh_store_exp_detail_update	 @_fs_item_id, @list_san_pham
end 
if @call_action=4 
begin 
delete from store_exp_detail where id_store_exp=@_fs_item_id
DELETE FROM store_exp WHERE id_store_exp =@_fs_item_id end if @call_action=5 begin SELECT store_exp_list_data as 'list_san_pham',store_exp_name as 'txt_ten_phieu',store_exp_creater as 'cb_nguoi_duyet',store_exp_checker as 'cb_kiem_tra_xuat',store_exp_cost as 'txt_phi_van_chuyen' FROM store_exp WHERE id_store_exp =@_fs_item_id 
end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_slot] @cb_kho_hang INTEGER,@cb_ke_hang INTEGER,@txt_ma_ngan_chua NVARCHAR(200),@txt_so_luong INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_store as 'Kho hàng', id_store_stock as 'Kệ hàng', store_slot_code as 'Mã ngăn chứa', store_slot_contain as 'Số lượng',id_store_slot as _fs_ws_tb_key FROM store_slot end if @call_action=2 begin INSERT INTO store_slot (id_store,id_store_stock,store_slot_code,store_slot_contain) VALUES (@cb_kho_hang,@cb_ke_hang,@txt_ma_ngan_chua,@txt_so_luong); end if @call_action=3 begin UPDATE store_slot SET id_store =@cb_kho_hang,id_store_stock =@cb_ke_hang,store_slot_code =@txt_ma_ngan_chua,store_slot_contain =@txt_so_luong WHERE id_store_slot =@_fs_item_id end if @call_action=4 begin DELETE FROM store_slot WHERE id_store_slot =@_fs_item_id end if @call_action=5 begin SELECT id_store as 'cb_kho_hang',id_store_stock as 'cb_ke_hang',store_slot_code as 'txt_ma_ngan_chua',store_slot_contain as 'txt_so_luong' FROM store_slot WHERE id_store_slot =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_customer] @txt_customer_name NVARCHAR(200),@txt_customer_logo NVARCHAR(200),@txt_customer_prod NVARCHAR(200),@txt_customer_idea NVARCHAR(200),@cb_customer_order INTEGER,@cb_customer_status INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  customer_name as 'Tên khách hàng', customer_logo as 'Logo khách hàng', customer_prod as 'Sản phẩm sử dụng', customer_idea as 'Ý kiến khách hàng', customer_order as 'Thứ tự', customer_status as 'Trạng thái',id_customer as _fs_ws_tb_key FROM web_customer end if @call_action=2 begin INSERT INTO web_customer (customer_name,customer_logo,customer_prod,customer_idea,customer_order,customer_status) VALUES (@txt_customer_name,@txt_customer_logo,@txt_customer_prod,@txt_customer_idea,@cb_customer_order,@cb_customer_status); end if @call_action=3 begin UPDATE web_customer SET customer_name =@txt_customer_name,customer_logo =@txt_customer_logo,customer_prod =@txt_customer_prod,customer_idea =@txt_customer_idea,customer_order =@cb_customer_order,customer_status =@cb_customer_status WHERE id_customer =@_fs_item_id end if @call_action=4 begin DELETE FROM web_customer WHERE id_customer =@_fs_item_id end if @call_action=5 begin SELECT customer_name as 'txt_customer_name',customer_logo as 'txt_customer_logo',customer_prod as 'txt_customer_prod',customer_idea as 'txt_customer_idea',customer_order as 'cb_customer_order',customer_status as 'cb_customer_status' FROM web_customer WHERE id_customer =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_tao_table] @cb_id_mapped INTEGER,@txt_mapped_name NVARCHAR(200),@txt_mapped_code NVARCHAR(200),@cb_type_table INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_mapped as 'ID Map', mapped_name as 'Tên table', mapped_code as 'Mã table', type_other as 'Loại',id_mapped as _fs_ws_tb_key FROM sys_mapped_table end if @call_action=2 begin INSERT INTO sys_mapped_table (mapped_name,mapped_code,type_other) VALUES (@txt_mapped_name,@txt_mapped_code,@cb_type_table); end if @call_action=3 begin UPDATE sys_mapped_table SET mapped_name =@txt_mapped_name,mapped_code =@txt_mapped_code,type_other =@cb_type_table WHERE id_mapped =@_fs_item_id end if @call_action=4 begin DELETE FROM sys_mapped_table WHERE id_mapped =@_fs_item_id end if @call_action=5 begin SELECT mapped_name as 'txt_mapped_name',mapped_code as 'txt_mapped_code',type_other as 'cb_type_table' FROM sys_mapped_table WHERE id_mapped =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_tao_page] @cb_page INTEGER,@txt_page_name NVARCHAR(200),@cb_form_id INTEGER,@cb_page_order INTEGER,@cb_thuoc_nhom_menu INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  page_name as 'Tên Page', id_page as 'ID Page', id_form as 'Tên form', page_order as 'Thứ tự',id_page as _fs_ws_tb_key FROM sys_page end if @call_action=2 begin INSERT INTO sys_page (page_name,id_form,page_order,id_group_page) VALUES (@txt_page_name,@cb_form_id,@cb_page_order,@cb_thuoc_nhom_menu); end if @call_action=3 begin UPDATE sys_page SET page_name =@txt_page_name,id_form =@cb_form_id,page_order =@cb_page_order,id_group_page =@cb_thuoc_nhom_menu WHERE id_page =@_fs_item_id end if @call_action=4 begin DELETE FROM sys_page WHERE id_page =@_fs_item_id end if @call_action=5 begin SELECT page_name as 'txt_page_name',id_form as 'cb_form_id',page_order as 'cb_page_order',id_group_page as 'cb_thuoc_nhom_menu' FROM sys_page WHERE id_page =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_chater] @txt_chater_name NVARCHAR(200),@txt_customer_logo NVARCHAR(200),@txt_customer_prod NVARCHAR(200),@txt_customer_idea NTEXT,@cb_customer_order INTEGER,@cb_customer_status INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  chater_name as 'Họ và Tên ', customer_logo as 'Email', customer_prod as 'Điện thoại', customer_idea as 'Nội dung', customer_order as 'Thứ tự', customer_status as 'Trạng thái',id_chater as _fs_ws_tb_key FROM web_chater end if @call_action=2 begin INSERT INTO web_chater (chater_name,customer_logo,customer_prod,customer_idea,customer_order,customer_status) VALUES (@txt_chater_name,@txt_customer_logo,@txt_customer_prod,@txt_customer_idea,@cb_customer_order,@cb_customer_status); end if @call_action=3 begin UPDATE web_chater SET chater_name =@txt_chater_name,customer_logo =@txt_customer_logo,customer_prod =@txt_customer_prod,customer_idea =@txt_customer_idea,customer_order =@cb_customer_order,customer_status =@cb_customer_status WHERE id_chater =@_fs_item_id end if @call_action=4 begin DELETE FROM web_chater WHERE id_chater =@_fs_item_id end if @call_action=5 begin SELECT chater_name as 'txt_chater_name',customer_logo as 'txt_customer_logo',customer_prod as 'txt_customer_prod',customer_idea as 'txt_customer_idea',customer_order as 'cb_customer_order',customer_status as 'cb_customer_status' FROM web_chater WHERE id_chater =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_call_query]
	@_query [ntext]
WITH EXECUTE AS CALLER
AS
EXECUTE sp_executesql @_query











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_prod_sku] @cb_san_pham INTEGER,@txt_so_luong INTEGER,@cb_san_pham_SKU INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_prod_sku as 'Sản phẩm SKU', id_store_prod as 'Sản phẩm', sku_count as 'Số lượng',id_store_prod_sku as _fs_ws_tb_key FROM store_prod_sku end if @call_action=2 begin INSERT INTO store_prod_sku (id_store_prod,sku_count,id_prod_sku) VALUES (@cb_san_pham,@txt_so_luong,@cb_san_pham_SKU); end if @call_action=3 begin UPDATE store_prod_sku SET id_store_prod =@cb_san_pham,sku_count =@txt_so_luong,id_prod_sku =@cb_san_pham_SKU WHERE id_store_prod_sku =@_fs_item_id end if @call_action=4 begin DELETE FROM store_prod_sku WHERE id_store_prod_sku =@_fs_item_id end if @call_action=5 begin SELECT id_store_prod as 'cb_san_pham',sku_count as 'txt_so_luong',id_prod_sku as 'cb_san_pham_SKU' FROM store_prod_sku WHERE id_store_prod_sku =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_c_u_store]
	@_query [ntext]
WITH EXECUTE AS CALLER
AS
select * from sys.objects where type_desc = 'SQL_STORED_PROCEDURE' AND name = 'tbl_store1'
EXECUTE sp_executesql @_query











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_user_steel] @txt_ho NVARCHAR(200),@txt_ten NVARCHAR(200),@txt_ho_va_ten NVARCHAR(200),@txt_email NVARCHAR(200),@txt_trang_thai NVARCHAR(200),@txt_mat_ma NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  user_full_name as 'Họ và Tên', user_email as 'Email', user_status as 'Trạng thái', user_pass as 'Mật mã',id_user as _fs_ws_tb_key FROM user_steel end if @call_action=2 begin INSERT INTO user_steel (user_first_name,user_last_name,user_full_name,user_email,user_status,user_pass) VALUES (@txt_ho,@txt_ten,@txt_ho_va_ten,@txt_email,@txt_trang_thai,@txt_mat_ma); end if @call_action=3 begin UPDATE user_steel SET user_first_name =@txt_ho,user_last_name =@txt_ten,user_full_name =@txt_ho_va_ten,user_email =@txt_email,user_status =@txt_trang_thai,user_pass =@txt_mat_ma WHERE id_user =@_fs_item_id end if @call_action=4 begin DELETE FROM user_steel WHERE id_user =@_fs_item_id end if @call_action=5 begin SELECT user_first_name as 'txt_ho',user_last_name as 'txt_ten',user_full_name as 'txt_ho_va_ten',user_email as 'txt_email',user_status as 'txt_trang_thai',user_pass as 'txt_mat_ma' FROM user_steel WHERE id_user =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_call_store_ctr]
	@strore_name [nvarchar](200)
WITH EXECUTE AS CALLER
AS
EXEC @strore_name











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys__group_page] @cb_thuoc_nhom_menu INTEGER,@txt_ten_nhom_page NVARCHAR(200),@txt_trang_thai INTEGER,@cb_thu_tu INTEGER,@txt_hinh_icon NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  group_page_name as 'Tên nhóm trang', group_page_status as 'Trạng thái', group_page_icon as 'Icon', group_page_order as 'Thứ tự',id_group_page as _fs_ws_tb_key FROM sys_group_page end if @call_action=2 begin INSERT INTO sys_group_page (group_page_name,group_page_status,group_page_order,group_page_icon) VALUES (@txt_ten_nhom_page,@txt_trang_thai,@cb_thu_tu,@txt_hinh_icon); end if @call_action=3 begin UPDATE sys_group_page SET group_page_name =@txt_ten_nhom_page,group_page_status =@txt_trang_thai,group_page_order =@cb_thu_tu,group_page_icon =@txt_hinh_icon WHERE id_group_page =@_fs_item_id end if @call_action=4 begin DELETE FROM sys_group_page WHERE id_group_page =@_fs_item_id end if @call_action=5 begin SELECT group_page_name as 'txt_ten_nhom_page',group_page_status as 'txt_trang_thai',group_page_order as 'cb_thu_tu',group_page_icon as 'txt_hinh_icon' FROM sys_group_page WHERE id_group_page =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_chater_content] @cb_id_chater bigint,@cb_id_employer INTEGER,@txt_chater_content_note NTEXT,@txt_chater_content_create datetime,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_chater as 'Mã hỗ trợ', id_employer as 'Mã nhân viên', chater_content as 'Nội dung', chater_content_create as 'Thời gian tạo',id_up as _fs_ws_tb_key FROM web_chater_content end if @call_action=2 begin INSERT INTO web_chater_content (id_chater,id_employer,chater_content,chater_content_create) VALUES (@cb_id_chater,@cb_id_employer,@txt_chater_content_note,@txt_chater_content_create); end if @call_action=3 begin UPDATE web_chater_content SET id_chater =@cb_id_chater,id_employer =@cb_id_employer,chater_content =@txt_chater_content_note,chater_content_create =@txt_chater_content_create WHERE id_up =@_fs_item_id end if @call_action=4 begin DELETE FROM web_chater_content WHERE id_up =@_fs_item_id end if @call_action=5 begin SELECT id_chater as 'cb_id_chater',id_employer as 'cb_id_employer',chater_content as 'txt_chater_content_note',chater_content_create as 'txt_chater_content_create' FROM web_chater_content WHERE id_up =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_red_build_store]
	@str_create [nvarchar](max),
	@str_delete [nvarchar](max),
	@str_update [nvarchar](max),
	@str_update_select [nvarchar](max),
	@str_select [nvarchar](max),
	@str_drop [nvarchar](max),
	@str_update_table [nvarchar](max),
	@str_insert_mapped_col [nvarchar](max),
	@str_store_name [nvarchar](200),
	@str_input_store [nvarchar](max),
	@str_mapped_form [nvarchar](max),
	@str_mapped_grid [nvarchar](max)
WITH EXECUTE AS CALLER
AS
if @str_drop <>''
	begin
		EXECUTE sp_executesql @str_drop;
	end

	if @str_update_table <>''
	begin
	EXECUTE sp_executesql @str_update_table;
	EXECUTE sp_executesql @str_insert_mapped_col;
	end
	
	if @str_mapped_form <>''
	begin
		EXECUTE sp_executesql @str_mapped_form;
	end
	--Tạo Store có CREATE - UPDATE - DELETE - SELECT
	DECLARE @_store_query nvarchar(max);
	set @_store_query='CREATE PROCEDURE [dbo].['+@str_store_name+'] '+@str_input_store+',@call_action int AS ';

	--1 là xem
	set @_store_query=@_store_query+' if @call_action=1 begin '+@str_select+' end';

	--2 là tạo
	set @_store_query=@_store_query+' if @call_action=2 begin '+@str_create+' end';

	--3 là sửa
	set @_store_query=@_store_query+' if @call_action=3 begin '+@str_update+' end';

	--4 là xóa
	set @_store_query=@_store_query+' if @call_action=4 begin '+@str_delete+' end';

	--5 là lấy 1 record để update
	set @_store_query=@_store_query+' if @call_action=5 begin '+@str_update_select+' end RETURN 0';
	EXECUTE sp_executesql @_store_query;
	EXECUTE sp_executesql @str_mapped_grid;
RETURN ''











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[report_store_prod_sku]
	@txt_ma_kho nvarchar(200)
AS
BEGIN
	 SELECT store_cate.store_cate_name as 'Loại sản phẩm',store_cate.store_cate_order as 'Thứ tự' 
	 FROM store_cate WHERE (store_cate.store_cate_name <> @txt_ma_kho) 
END












GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_content_other] @txt_content_other_title NVARCHAR(200),@textarea1 NTEXT,@cb_id_menu INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  content_other_title as 'Tiêu đề', content_other as 'Nội dung', id_menu as 'Mã menu',id_content_other as _fs_ws_tb_key FROM web_content_other end if @call_action=2 begin INSERT INTO web_content_other (content_other_title,content_other,id_menu) VALUES (@txt_content_other_title,@textarea1,@cb_id_menu); end if @call_action=3 begin UPDATE web_content_other SET content_other_title =@txt_content_other_title,content_other =@textarea1,id_menu =@cb_id_menu WHERE id_content_other =@_fs_item_id end if @call_action=4 begin DELETE FROM web_content_other WHERE id_content_other =@_fs_item_id end if @call_action=5 begin SELECT content_other_title as 'txt_content_other_title',content_other as 'textarea1',id_menu as 'cb_id_menu' FROM web_content_other WHERE id_content_other =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_group_user_page] @cb_page INTEGER,@cb_tai_khoan INTEGER,@cb_quyen_xem INTEGER,@cb_quyen_tao INTEGER,@cb_quyen_xoa INTEGER,@cb_quyen_cau_hinh INTEGER,@cb_quyen_phan_quyen INTEGER,@cb_cong_ty INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_company as 'Công ty', id_page as 'Page', user_id as 'Tài khoản', role_page_view as 'Quyền xem', role_page_create as 'Quyền tạo', role_page_del as 'Quyền xóa', role_page_config as 'Quyền cài đặt', role_page_role as 'Quyền thiết lập quyền',id_user_role_page as _fs_ws_tb_key FROM tblSysUserRolePage end if @call_action=2 begin INSERT INTO tblSysUserRolePage (id_page,user_id,role_page_view,role_page_create,role_page_del,role_page_config,role_page_role,id_company) VALUES (@cb_page,@cb_tai_khoan,@cb_quyen_xem,@cb_quyen_tao,@cb_quyen_xoa,@cb_quyen_cau_hinh,@cb_quyen_phan_quyen,@cb_cong_ty); end if @call_action=3 begin UPDATE tblSysUserRolePage SET id_page =@cb_page,user_id =@cb_tai_khoan,role_page_view =@cb_quyen_xem,role_page_create =@cb_quyen_tao,role_page_del =@cb_quyen_xoa,role_page_config =@cb_quyen_cau_hinh,role_page_role =@cb_quyen_phan_quyen,id_company =@cb_cong_ty WHERE id_user_role_page =@_fs_item_id end if @call_action=4 begin DELETE FROM tblSysUserRolePage WHERE id_user_role_page =@_fs_item_id end if @call_action=5 begin SELECT id_page as 'cb_page',user_id as 'cb_tai_khoan',role_page_view as 'cb_quyen_xem',role_page_create as 'cb_quyen_tao',role_page_del as 'cb_quyen_xoa',role_page_config as 'cb_quyen_cau_hinh',role_page_role as 'cb_quyen_phan_quyen',id_company as 'cb_cong_ty' FROM tblSysUserRolePage WHERE id_user_role_page =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[tbl_store1]
WITH EXECUTE AS CALLER
AS












GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[wpct_employee] @cb_employee INTEGER,@textarea1 NVARCHAR(200),@test1 NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  employee_name as 'employee name', employee_address as 'employee address',id_employee as _fs_ws_tb_key FROM pct_employee end if @call_action=2 begin INSERT INTO pct_employee (employee_name,employee_address) VALUES (@textarea1,@test1); end if @call_action=3 begin UPDATE pct_employee SET employee_name =@textarea1,employee_address =@test1 WHERE id_employee =@_fs_item_id end if @call_action=4 begin DELETE FROM pct_employee WHERE id_employee =@_fs_item_id end if @call_action=5 begin SELECT employee_name as 'textarea1',employee_address as 'test1' FROM pct_employee WHERE id_employee =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[test_view_list]
	@fs_textbox [nvarchar](max)
WITH EXECUTE AS CALLER
AS
SELECT other_group.group_other_status as 'Trạng thái danh mục',other_group.group_other_name as 'Tên danh mục dự án',other_group.id_group_other as 'Mã danh mục dự án' FROM other_group WHERE (other_group.group_other_name LIKE @fs_textbox)











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[kh_store_imp_detail_update]
@_fs_item_id int,
@list_san_pham NVARCHAR(200)
as
begin	
declare @dataOne nvarchar(200)
delete from store_imp_detail where id_store_imp=@_fs_item_id
DECLARE db_cursor_data CURSOR FOR  
SELECT Data 
FROM dbo.Split(@list_san_pham,';')
OPEN db_cursor_data   
FETCH NEXT FROM db_cursor_data INTO @dataOne   

WHILE @@FETCH_STATUS = 0   
BEGIN   
	declare @id_store_exp int,@id_store_prod int,@store_prod_count int,@id_store_slot int,@store_prod_cost int,@store_prod_shelf nvarchar(10)
	SELECT @id_store_prod=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=1
	SELECT @store_prod_count=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=2
	SELECT @store_prod_shelf=Data
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=3
	SELECT @store_prod_cost=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=4
	SELECT @id_store_slot=cast(Data  as  int)
	FROM dbo.func_slipt_max_string(@dataOne,':')
	where  id=5
	
	INSERT INTO store_imp_detail
           ([id_store_imp]
           ,[id_store_prod]
           ,[store_prod_count]
           ,[id_store_slot]
           ,[store_prod_cost]
           ,[store_prod_shelf])
     VALUES
           (@_fs_item_id
           ,@id_store_prod
           ,@store_prod_count
           ,@id_store_slot
           ,@store_prod_cost
           ,CONVERT(datetime,@store_prod_shelf,103))

    FETCH NEXT FROM db_cursor_data INTO @dataOne   
END   

CLOSE db_cursor_data   
DEALLOCATE db_cursor_data

end













GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_list_ctr_in_form]
	@id_form [int]
WITH EXECUTE AS CALLER
AS
SELECT ctr_in_form.ctr_client_id, ctr_in_form.ctr_name, ctr_steel.ctr_page_name, 
	ctr_steel.ctr_request_default, ctr_in_form.id_ctr,ctr_in_form.id_ctr_in_form
	FROM form_steel 
	INNER JOIN ctr_in_form ON form_steel.id_form = ctr_in_form.id_form 
	INNER JOIN ctr_steel ON ctr_in_form.id_ctr = ctr_steel.id_ctr 
	WHERE (form_steel.id_form = @id_form) ORDER BY ctr_in_form.order_ctr
RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_config_ctr]
	@id_form [int],
	@id_ctr [int]
WITH EXECUTE AS CALLER
AS
SELECT top 1 ctr_in_form.id_ctr,ctr_in_form.ctr_parent_active,ctr_query_data,order_ctr,ctr_in_form.ctr_placeholder,id_ctr_in_form,ctr_in_form.ctr_name,ctr_in_form.ctr_client_id,ctr_store,order_ctr,ctr_parent_active,ctr_effect_show, ctr_in_form.ctr_require_validate, 
                      ctr_in_form.ctr_require_validate_rex, ctr_in_form.ctr_require_validate_mess

	from ctr_in_form inner join ctr_steel on ctr_in_form.id_ctr=ctr_steel.id_ctr where id_form=@id_form and id_ctr_in_form=@id_ctr











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_wb_comment] @txt_noidung NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  noidung_comment as 'Nội dung comment', phone as 'Số điện thoại', name_full as 'Họ và tên', email as 'Email', id_products as 'Mã sản phẩm',id_comment as _fs_ws_tb_key FROM wb_comment end if @call_action=2 begin INSERT INTO wb_comment (noidung_comment) VALUES (@txt_noidung); end if @call_action=3 begin UPDATE wb_comment SET noidung_comment =@txt_noidung WHERE id_comment =@_fs_item_id end if @call_action=4 begin DELETE FROM wb_comment WHERE id_comment =@_fs_item_id end if @call_action=5 begin SELECT noidung_comment as 'txt_noidung' FROM wb_comment WHERE id_comment =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_call_query_ctr]
	@id_ctr [int]
WITH EXECUTE AS CALLER
AS
DECLARE @_query_ nvarchar(4000)
	select top 1 @_query_=ctr_query_data from ctr_in_form where id_ctr_in_form=@id_ctr

	EXECUTE sp_executesql @_query_











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_build_submit]
	@id_form [int]
WITH EXECUTE AS CALLER
AS
SELECT     ctr_in_form.ctr_client_id, ctr_steel.ctr_type
FROM         form_steel INNER JOIN
                      ctr_in_form ON form_steel.id_form = ctr_in_form.id_form INNER JOIN
                      ctr_steel ON ctr_in_form.id_ctr = ctr_steel.id_ctr
WHERE     (form_steel.id_form = @id_form)
ORDER BY ctr_in_form.order_ctr











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_wb_products] @ful_hinh2 NVARCHAR(200),@ful_hinh3 NVARCHAR(200),@ful_hinh4 NVARCHAR(200),@txt_products_name NVARCHAR(200),@dr_products_type INTEGER,@txt_tomtat NVARCHAR(200),@txt_noidung NVARCHAR(200),@txt_price_products NVARCHAR(200),@txt_giam_gia NVARCHAR(200),@txt_giasaukhigiam NVARCHAR(200),@dr_status_product INTEGER,@ful_img_main NVARCHAR(200),@dr_order_product INTEGER,@ful_img_small NVARCHAR(200),@dr_sanphamtieubieu NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_products as 'Tên sản phẩm', type_products as 'Loại sản phẩm', tomtat_products as 'Tóm tắt', price_products as 'Giá Tiền', giamgia_products as 'Giảm giá', giasaugiam_products as 'Giá sau giảm', status_products as 'Trạng thái', img_main_products as 'Hình chính', order_products as 'Thứ tự', tieubieu_products as 'Sản phẩm tiêu biểu',id_products as _fs_ws_tb_key FROM wb_products end if @call_action=2 begin INSERT INTO wb_products (img2_products,img3_products,img4_products,name_products,type_products,tomtat_products,noidung_products,price_products,giamgia_products,giasaugiam_products,status_products,img_main_products,order_products,img1_products,tieubieu_products) VALUES (@ful_hinh2,@ful_hinh3,@ful_hinh4,@txt_products_name,@dr_products_type,@txt_tomtat,@txt_noidung,@txt_price_products,@txt_giam_gia,@txt_giasaukhigiam,@dr_status_product,@ful_img_main,@dr_order_product,@ful_img_small,@dr_sanphamtieubieu); end if @call_action=3 begin UPDATE wb_products SET img2_products =@ful_hinh2,img3_products =@ful_hinh3,img4_products =@ful_hinh4,name_products =@txt_products_name,type_products =@dr_products_type,tomtat_products =@txt_tomtat,noidung_products =@txt_noidung,price_products =@txt_price_products,giamgia_products =@txt_giam_gia,giasaugiam_products =@txt_giasaukhigiam,status_products =@dr_status_product,img_main_products =@ful_img_main,order_products =@dr_order_product,img1_products =@ful_img_small,tieubieu_products =@dr_sanphamtieubieu WHERE id_products =@_fs_item_id end if @call_action=4 begin DELETE FROM wb_products WHERE id_products =@_fs_item_id end if @call_action=5 begin SELECT img2_products as 'ful_hinh2',img3_products as 'ful_hinh3',img4_products as 'ful_hinh4',name_products as 'txt_products_name',type_products as 'dr_products_type',tomtat_products as 'txt_tomtat',noidung_products as 'txt_noidung',price_products as 'txt_price_products',giamgia_products as 'txt_giam_gia',giasaugiam_products as 'txt_giasaukhigiam',status_products as 'dr_status_product',img_main_products as 'ful_img_main',order_products as 'dr_order_product',img1_products as 'ful_img_small',tieubieu_products as 'dr_sanphamtieubieu' FROM wb_products WHERE id_products =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pct_phong_ban]
	@txt_name_department [nvarchar](200),
	@_fs_item_id [int],
	@call_action [int]
WITH EXECUTE AS CALLER
AS
if @call_action=1 begin SELECT  department_name as 'Name Department',id_department as _fs_ws_tb_key FROM pct_department end if @call_action=2 begin INSERT INTO pct_department (department_name) VALUES (@txt_name_department); end if @call_action=3 begin UPDATE pct_department SET department_name =@txt_name_department WHERE id_department =@_fs_item_id end if @call_action=4 begin DELETE FROM pct_department WHERE id_department =@_fs_item_id end if @call_action=5 begin SELECT department_name as 'txt_name_department' FROM pct_department WHERE id_department =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pct_phieu_cong_tac]
	@cb_employee [int],
	@txt_fromdate [nvarchar](200),
	@txt_todate [nvarchar](200),
	@txt_money [int],
	@txt_add [nvarchar](200),
	@txt_note [nvarchar](200),
	@_fs_item_id [int],
	@call_action [int]
WITH EXECUTE AS CALLER
AS
if @call_action=1 begin SELECT  id_employee as 'ID Employee', ticket_fromdate as 'Fromdate', ticket_todate as 'Todate', ticket_money as 'Money', ticket_add as 'Add', ticket_note as 'Note',id_ticket as _fs_ws_tb_key FROM pct_ticket end if @call_action=2 begin INSERT INTO pct_ticket (id_employee,ticket_fromdate,ticket_todate,ticket_money,ticket_add,ticket_note) VALUES (@cb_employee,@txt_fromdate,@txt_todate,@txt_money,@txt_add,@txt_note); end if @call_action=3 begin UPDATE pct_ticket SET id_employee =@cb_employee,ticket_fromdate =@txt_fromdate,ticket_todate =@txt_todate,ticket_money =@txt_money,ticket_add =@txt_add,ticket_note =@txt_note WHERE id_ticket =@_fs_item_id end if @call_action=4 begin DELETE FROM pct_ticket WHERE id_ticket =@_fs_item_id end if @call_action=5 begin SELECT id_employee as 'cb_employee',ticket_fromdate as 'txt_fromdate',ticket_todate as 'txt_todate',ticket_money as 'txt_money',ticket_add as 'txt_add',ticket_note as 'txt_note' FROM pct_ticket WHERE id_ticket =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_wb_advertising] @txt_qc_name NVARCHAR(200),@txt_qc_links NVARCHAR(200),@dr_qc_status NVARCHAR(200),@dr_qc_order INTEGER,@ful_qc_img NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_advertising as 'Tên quảng cáo', links_advertising as 'Links', status_advertising as 'Trạng thái', order_advertising as 'Thứ tự', img_advertising as 'Hình ',id_advertising as _fs_ws_tb_key FROM wb_advertising end if @call_action=2 begin INSERT INTO wb_advertising (name_advertising,links_advertising,status_advertising,order_advertising,img_advertising) VALUES (@txt_qc_name,@txt_qc_links,@dr_qc_status,@dr_qc_order,@ful_qc_img); end if @call_action=3 begin UPDATE wb_advertising SET name_advertising =@txt_qc_name,links_advertising =@txt_qc_links,status_advertising =@dr_qc_status,order_advertising =@dr_qc_order,img_advertising =@ful_qc_img WHERE id_advertising =@_fs_item_id end if @call_action=4 begin DELETE FROM wb_advertising WHERE id_advertising =@_fs_item_id end if @call_action=5 begin SELECT name_advertising as 'txt_qc_name',links_advertising as 'txt_qc_links',status_advertising as 'dr_qc_status',order_advertising as 'dr_qc_order',img_advertising as 'ful_qc_img' FROM wb_advertising WHERE id_advertising =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pct_nhan_vien]
	@cb_id_title [int],
	@txt_name [nvarchar](200),
	@txt_address [nvarchar](200),
	@txt_mobile [nvarchar](200),
	@_fs_item_id [int],
	@call_action [int]
WITH EXECUTE AS CALLER
AS
if @call_action=1 begin SELECT  id_title as 'ID Title', employee_name as 'Name Employee', employee_address as 'Add Employee', employee_mobile as 'Mobile Employee',id_employee as _fs_ws_tb_key FROM pct_employee end if @call_action=2 begin INSERT INTO pct_employee (id_title,employee_name,employee_address,employee_mobile) VALUES (@cb_id_title,@txt_name,@txt_address,@txt_mobile); end if @call_action=3 begin UPDATE pct_employee SET id_title =@cb_id_title,employee_name =@txt_name,employee_address =@txt_address,employee_mobile =@txt_mobile WHERE id_employee =@_fs_item_id end if @call_action=4 begin DELETE FROM pct_employee WHERE id_employee =@_fs_item_id end if @call_action=5 begin SELECT id_title as 'cb_id_title',employee_name as 'txt_name',employee_address as 'txt_address',employee_mobile as 'txt_mobile' FROM pct_employee WHERE id_employee =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pr_wb_menu] @cb_id_menu INTEGER,@txt_menu_name NVARCHAR(200),@txt_tu_khoa_url NVARCHAR(200),@dr_thu_tu INTEGER,@dr_status_menu INTEGER,@txt_links NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  menu_name as 'Tên Menu', id_menu as 'Mã Menu', menu_key_url as 'Từ khóa url', menu_order as 'Thứ tự', menu_status as 'Trạng thái', menu_links as 'Links',id_menu as _fs_ws_tb_key FROM wb_menu end if @call_action=2 begin INSERT INTO wb_menu (menu_name,menu_key_url,menu_order,menu_status,menu_links) VALUES (@txt_menu_name,@txt_tu_khoa_url,@dr_thu_tu,@dr_status_menu,@txt_links); end if @call_action=3 begin UPDATE wb_menu SET menu_name =@txt_menu_name,menu_key_url =@txt_tu_khoa_url,menu_order =@dr_thu_tu,menu_status =@dr_status_menu,menu_links =@txt_links WHERE id_menu =@_fs_item_id end if @call_action=4 begin DELETE FROM wb_menu WHERE id_menu =@_fs_item_id end if @call_action=5 begin SELECT menu_name as 'txt_menu_name',menu_key_url as 'txt_tu_khoa_url',menu_order as 'dr_thu_tu',menu_status as 'dr_status_menu',menu_links as 'txt_links' FROM wb_menu WHERE id_menu =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pct_chuc_vu]
	@cb_id_title [int],
	@cb_name_department [int],
	@txt_name_title [nvarchar](200),
	@_fs_item_id [int],
	@call_action [int]
WITH EXECUTE AS CALLER
AS
if @call_action=1 begin SELECT  id_department as 'ID Department', title_name as 'Name Title',id_title as _fs_ws_tb_key FROM pct_title end if @call_action=2 begin INSERT INTO pct_title (id_department,title_name) VALUES (@cb_name_department,@txt_name_title); end if @call_action=3 begin UPDATE pct_title SET id_department =@cb_name_department,title_name =@txt_name_title WHERE id_title =@_fs_item_id end if @call_action=4 begin DELETE FROM pct_title WHERE id_title =@_fs_item_id end if @call_action=5 begin SELECT id_department as 'cb_name_department',title_name as 'txt_name_title' FROM pct_title WHERE id_title =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[from1_1]
	@txtFrom [nvarchar](200),
	@txt_orther [int],
	@cbb_fromtype [int],
	@_fs_item_id [int],
	@call_action [int]
WITH EXECUTE AS CALLER
AS
if @call_action=1 begin SELECT  from_name as 'Tên From', from_type as 'Loại From',Id as _fs_ws_tb_key FROM from1 end if @call_action=2 begin INSERT INTO from1 (from_name,from_orther,from_type) VALUES (@txtFrom,@txt_orther,@cbb_fromtype); end if @call_action=3 begin UPDATE from1 SET from_name =@txtFrom,from_orther =@txt_orther,from_type =@cbb_fromtype WHERE Id =@_fs_item_id end if @call_action=4 begin DELETE FROM from1 WHERE Id =@_fs_item_id end if @call_action=5 begin SELECT from_name as 'txtFrom',from_orther as 'txt_orther',from_type as 'cbb_fromtype' FROM from1 WHERE Id =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_imp] 
@list_san_pham NVARCHAR(200),
@txt_phieu_nhap NVARCHAR(200),
@cb_nguoi_kiem_hang INTEGER,
@cb_nguoi_lap_phieu INTEGER,
@cbb_khohang INTEGER,
@_fs_item_id int,
@call_action int 
AS  
if @call_action=1 begin 
SELECT  store_imp_name as 'Tên phiếu', store_imp_checker as 'Người kiểm hàng', store_imp_creater as 'Người lập phiếu',id_store_imp as _fs_ws_tb_key FROM store_imp end 
if @call_action=2 begin 
INSERT INTO store_imp (store_imp_list_data,store_imp_name,store_imp_checker,store_imp_creater,store_imp_store) VALUES (@list_san_pham,@txt_phieu_nhap,@cb_nguoi_kiem_hang,@cb_nguoi_lap_phieu,@cbb_khohang); 
SELECT @_fs_item_id=@@IDENTITY
EXEC	kh_store_imp_detail_update	@_fs_item_id,	 @list_san_pham
end 
if @call_action=3 begin 
UPDATE store_imp SET store_imp_list_data =@list_san_pham,store_imp_name =@txt_phieu_nhap,store_imp_checker =@cb_nguoi_kiem_hang,store_imp_creater =@cb_nguoi_lap_phieu,store_imp_store =@cbb_khohang WHERE id_store_imp =@_fs_item_id 
EXEC	kh_store_imp_detail_update	@_fs_item_id,	 @list_san_pham
end 
if @call_action=4 begin 
DELETE FROM store_imp_detail WHERE id_store_imp =@_fs_item_id 
DELETE FROM store_imp WHERE id_store_imp =@_fs_item_id end 
if @call_action=5 begin SELECT store_imp_list_data as 'list_san_pham',store_imp_name as 'txt_phieu_nhap',store_imp_checker as 'cb_nguoi_kiem_hang',store_imp_creater as 'cb_nguoi_lap_phieu',store_imp_store as 'cbb_khohang' FROM store_imp WHERE id_store_imp =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_department] @cb_id_department INTEGER,@txt_department_name NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  department_name as 'Tên phòng ban',id_department as _fs_ws_tb_key FROM web_department end if @call_action=2 begin INSERT INTO web_department (department_name) VALUES (@txt_department_name); end if @call_action=3 begin UPDATE web_department SET department_name =@txt_department_name WHERE id_department =@_fs_item_id end if @call_action=4 begin DELETE FROM web_department WHERE id_department =@_fs_item_id end if @call_action=5 begin SELECT department_name as 'txt_department_name' FROM web_department WHERE id_department =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_wb_menu_products] @txt_menu_products_name NVARCHAR(200),@txt_menu_key NVARCHAR(200),@dr_order INTEGER,@fu_hinh NVARCHAR(200),@cb_menu_status NVARCHAR(200),@txt_tomtat NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  menu_products_name as 'Tên danh mục sản phẩm', menu_products_key as 'Từ khóa danh mục', menu_products_order as 'Thứ tự', img_products as 'Hình', menu_status as 'Trạng thái',id_menu_products as _fs_ws_tb_key FROM wb_menu_products end if @call_action=2 begin INSERT INTO wb_menu_products (menu_products_name,menu_products_key,menu_products_order,img_products,menu_status,menu_tomtat) VALUES (@txt_menu_products_name,@txt_menu_key,@dr_order,@fu_hinh,@cb_menu_status,@txt_tomtat); end if @call_action=3 begin UPDATE wb_menu_products SET menu_products_name =@txt_menu_products_name,menu_products_key =@txt_menu_key,menu_products_order =@dr_order,img_products =@fu_hinh,menu_status =@cb_menu_status,menu_tomtat =@txt_tomtat WHERE id_menu_products =@_fs_item_id end if @call_action=4 begin DELETE FROM wb_menu_products WHERE id_menu_products =@_fs_item_id end if @call_action=5 begin SELECT menu_products_name as 'txt_menu_products_name',menu_products_key as 'txt_menu_key',menu_products_order as 'dr_order',img_products as 'fu_hinh',menu_status as 'cb_menu_status',menu_tomtat as 'txt_tomtat' FROM wb_menu_products WHERE id_menu_products =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_unit] @cb_don_vi_tinh INTEGER,@txt_don_vi_tinh NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_store_unit as 'Mã đơn vị tính', store_unit_name as 'Tên đơn vị',id_store_unit as _fs_ws_tb_key FROM store_unit end if @call_action=2 begin INSERT INTO store_unit (store_unit_name) VALUES (@txt_don_vi_tinh); end if @call_action=3 begin UPDATE store_unit SET store_unit_name =@txt_don_vi_tinh WHERE id_store_unit =@_fs_item_id end if @call_action=4 begin DELETE FROM store_unit WHERE id_store_unit =@_fs_item_id end if @call_action=5 begin SELECT store_unit_name as 'txt_don_vi_tinh' FROM store_unit WHERE id_store_unit =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pweb_title] @cb_id_title INTEGER,@txt_title_name NVARCHAR(200),@cb_id_department INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  title_name as 'Tên chức vụ', id_department as 'Mã phòng ban',id_title as _fs_ws_tb_key FROM web_title end if @call_action=2 begin INSERT INTO web_title (title_name,id_department) VALUES (@txt_title_name,@cb_id_department); end if @call_action=3 begin UPDATE web_title SET title_name =@txt_title_name,id_department =@cb_id_department WHERE id_title =@_fs_item_id end if @call_action=4 begin DELETE FROM web_title WHERE id_title =@_fs_item_id end if @call_action=5 begin SELECT title_name as 'txt_title_name',id_department as 'cb_id_department' FROM web_title WHERE id_title =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_web_tr_menu_top] @txt_menu_top NVARCHAR(200),@txt_links_menu_top NVARCHAR(200),@txt_tu_khoa_link NVARCHAR(200),@dr_status_menu_top INTEGER,@dr_order INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_menu_top as 'Tên menu top', links_menu_top as 'Links', key_links_menu_top as 'Từ khóa links', status_menu_top as 'Trạng thái', order_menu_top as 'Thứ tự',id_menu_top as _fs_ws_tb_key FROM web_tr_menutop end if @call_action=2 begin INSERT INTO web_tr_menutop (name_menu_top,links_menu_top,key_links_menu_top,status_menu_top,order_menu_top) VALUES (@txt_menu_top,@txt_links_menu_top,@txt_tu_khoa_link,@dr_status_menu_top,@dr_order); end if @call_action=3 begin UPDATE web_tr_menutop SET name_menu_top =@txt_menu_top,links_menu_top =@txt_links_menu_top,key_links_menu_top =@txt_tu_khoa_link,status_menu_top =@dr_status_menu_top,order_menu_top =@dr_order WHERE id_menu_top =@_fs_item_id end if @call_action=4 begin DELETE FROM web_tr_menutop WHERE id_menu_top =@_fs_item_id end if @call_action=5 begin SELECT name_menu_top as 'txt_menu_top',links_menu_top as 'txt_links_menu_top',key_links_menu_top as 'txt_tu_khoa_link',status_menu_top as 'dr_status_menu_top',order_menu_top as 'dr_order' FROM web_tr_menutop WHERE id_menu_top =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_web_tr_menu_products] @txt_name_products NVARCHAR(200),@dr_order_menu_products INTEGER,@dr_status_menu_products INTEGER,@ul_img_products NVARCHAR(200),@txt_tomtat NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_menu_products as 'Tên sản phẩm', order_menu_products as 'Thứ tự', status_menu_products as 'Trạng thái', img_menu_products as 'Hình', tomtat_menu_products as 'Tóm tắt',id_menu_products as _fs_ws_tb_key FROM web_tr_menu_product end if @call_action=2 begin INSERT INTO web_tr_menu_product (name_menu_products,order_menu_products,status_menu_products,img_menu_products,tomtat_menu_products) VALUES (@txt_name_products,@dr_order_menu_products,@dr_status_menu_products,@ul_img_products,@txt_tomtat); end if @call_action=3 begin UPDATE web_tr_menu_product SET name_menu_products =@txt_name_products,order_menu_products =@dr_order_menu_products,status_menu_products =@dr_status_menu_products,img_menu_products =@ul_img_products,tomtat_menu_products =@txt_tomtat WHERE id_menu_products =@_fs_item_id end if @call_action=4 begin DELETE FROM web_tr_menu_product WHERE id_menu_products =@_fs_item_id end if @call_action=5 begin SELECT name_menu_products as 'txt_name_products',order_menu_products as 'dr_order_menu_products',status_menu_products as 'dr_status_menu_products',img_menu_products as 'ul_img_products',tomtat_menu_products as 'txt_tomtat' FROM web_tr_menu_product WHERE id_menu_products =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_web_tr_quangcao] @txt_name_quangcao NVARCHAR(200),@txt_link_quangcao NVARCHAR(200),@dr_status_quangcao NVARCHAR(200),@txt_order INTEGER,@ful_img_quangcao NVARCHAR(200),@dr_type_quangcao INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  name_quangcao as 'Tên quảng cáo', links_quangcao as 'Links', status_quangcao as 'Trạng thái', order_quangcao as 'Thứ tự', img_quangcao as 'Hình', type_quangcao as 'Loại quảng cáo',id_quangcao as _fs_ws_tb_key FROM web_tr_quangcao end if @call_action=2 begin INSERT INTO web_tr_quangcao (name_quangcao,links_quangcao,status_quangcao,order_quangcao,img_quangcao,type_quangcao) VALUES (@txt_name_quangcao,@txt_link_quangcao,@dr_status_quangcao,@txt_order,@ful_img_quangcao,@dr_type_quangcao); end if @call_action=3 begin UPDATE web_tr_quangcao SET name_quangcao =@txt_name_quangcao,links_quangcao =@txt_link_quangcao,status_quangcao =@dr_status_quangcao,order_quangcao =@txt_order,img_quangcao =@ful_img_quangcao,type_quangcao =@dr_type_quangcao WHERE id_quangcao =@_fs_item_id end if @call_action=4 begin DELETE FROM web_tr_quangcao WHERE id_quangcao =@_fs_item_id end if @call_action=5 begin SELECT name_quangcao as 'txt_name_quangcao',links_quangcao as 'txt_link_quangcao',status_quangcao as 'dr_status_quangcao',order_quangcao as 'txt_order',img_quangcao as 'ful_img_quangcao',type_quangcao as 'dr_type_quangcao' FROM web_tr_quangcao WHERE id_quangcao =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_tao_col] @cb_id_mapped INTEGER,@txt_mapped_col_name NVARCHAR(200),@cb_mapped_col_type NVARCHAR(200),@cb_mapped_col_key INTEGER,@txt_mapped_col_code NVARCHAR(200),@cb_mapped_col_order INTEGER,@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_mapped as 'Tên table', mapped_col_name as 'Tên cột', mapped_col_type as 'Loại cột', mapped_col_key as 'Khóa chính', mapped_col_code as 'Mã cột', mapped_col_order as 'Thứ tự',id_mapped_col as _fs_ws_tb_key FROM sys_mapped_col end if @call_action=2 begin INSERT INTO sys_mapped_col (id_mapped,mapped_col_name,mapped_col_type,mapped_col_key,mapped_col_code,mapped_col_order) VALUES (@cb_id_mapped,@txt_mapped_col_name,@cb_mapped_col_type,@cb_mapped_col_key,@txt_mapped_col_code,@cb_mapped_col_order); end if @call_action=3 begin UPDATE sys_mapped_col SET id_mapped =@cb_id_mapped,mapped_col_name =@txt_mapped_col_name,mapped_col_type =@cb_mapped_col_type,mapped_col_key =@cb_mapped_col_key,mapped_col_code =@txt_mapped_col_code,mapped_col_order =@cb_mapped_col_order WHERE id_mapped_col =@_fs_item_id end if @call_action=4 begin DELETE FROM sys_mapped_col WHERE id_mapped_col =@_fs_item_id end if @call_action=5 begin SELECT id_mapped as 'cb_id_mapped',mapped_col_name as 'txt_mapped_col_name',mapped_col_type as 'cb_mapped_col_type',mapped_col_key as 'cb_mapped_col_key',mapped_col_code as 'txt_mapped_col_code',mapped_col_order as 'cb_mapped_col_order' FROM sys_mapped_col WHERE id_mapped_col =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_com_type] @txt_company_type NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  id_store_com_type as 'Mã loại nhà cung cấp', type_name as 'Tên loại',id_store_com_type as _fs_ws_tb_key FROM store_com_type end if @call_action=2 begin INSERT INTO store_com_type (type_name) VALUES (@txt_company_type); end if @call_action=3 begin UPDATE store_com_type SET type_name =@txt_company_type WHERE id_store_com_type =@_fs_item_id end if @call_action=4 begin DELETE FROM store_com_type WHERE id_store_com_type =@_fs_item_id end if @call_action=5 begin SELECT type_name as 'txt_company_type' FROM store_com_type WHERE id_store_com_type =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_company] @txt_company_email NVARCHAR(200),@txt_company_website NVARCHAR(200),@txt_company_des NVARCHAR(200),@cb_id_store_com_type INTEGER,@txt_company_name NVARCHAR(200),@txt_company_code NVARCHAR(200),@txt_company_address NVARCHAR(200),@txt_company_phone NVARCHAR(200),@file_company_logo NVARCHAR(200),@txt_company_fax NVARCHAR(200),@txt_company_bank NVARCHAR(200),@txt_company_bank_ads NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  company_logo as 'Logo', company_name as 'Tên công ty', company_code as 'Mã số thuế', company_address as 'Ðịa chỉ', company_phone as 'Ðiện thoại', company_fax as 'Fax', company_bank as 'Tài khoản Bank', company_bank_ads as 'Ðịa chỉ Bank',id_store_company as _fs_ws_tb_key FROM store_company end if @call_action=2 begin INSERT INTO store_company (company_email,company_website,company_des,id_store_com_type,company_name,company_code,company_address,company_phone,company_logo,company_fax,company_bank,company_bank_ads) VALUES (@txt_company_email,@txt_company_website,@txt_company_des,@cb_id_store_com_type,@txt_company_name,@txt_company_code,@txt_company_address,@txt_company_phone,@file_company_logo,@txt_company_fax,@txt_company_bank,@txt_company_bank_ads); end if @call_action=3 begin UPDATE store_company SET company_email =@txt_company_email,company_website =@txt_company_website,company_des =@txt_company_des,id_store_com_type =@cb_id_store_com_type,company_name =@txt_company_name,company_code =@txt_company_code,company_address =@txt_company_address,company_phone =@txt_company_phone,company_logo =@file_company_logo,company_fax =@txt_company_fax,company_bank =@txt_company_bank,company_bank_ads =@txt_company_bank_ads WHERE id_store_company =@_fs_item_id end if @call_action=4 begin DELETE FROM store_company WHERE id_store_company =@_fs_item_id end if @call_action=5 begin SELECT company_email as 'txt_company_email',company_website as 'txt_company_website',company_des as 'txt_company_des',id_store_com_type as 'cb_id_store_com_type',company_name as 'txt_company_name',company_code as 'txt_company_code',company_address as 'txt_company_address',company_phone as 'txt_company_phone',company_logo as 'file_company_logo',company_fax as 'txt_company_fax',company_bank as 'txt_company_bank',company_bank_ads as 'txt_company_bank_ads' FROM store_company WHERE id_store_company =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sys_tao_form] @cb_form_id INTEGER,@txt_form_name NVARCHAR(200),@thuoc_du_an INTEGER,@cb_form_grid_view NVARCHAR(200),@cb_form_grid_form NVARCHAR(200),@cb_clock_database INTEGER,@cb_ban_chinh NVARCHAR(200),@txt_fs_store_c_u_d_s NVARCHAR(200),@cb_fs_script_page_load NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  form_name as 'Tên form', id_form as 'ID Form', form_grid_view as 'Loại quản trị', fs_table_name as 'Bản chính', fs_store_c_u_d_s as 'Store chính', fs_script_page_load as 'Script load', form_grid_form as 'Script form',id_form as _fs_ws_tb_key FROM form_steel end if @call_action=2 begin INSERT INTO form_steel (form_name,id_project,form_grid_view,form_grid_form,form_db,fs_table_name,fs_store_c_u_d_s,fs_script_page_load) VALUES (@txt_form_name,@thuoc_du_an,@cb_form_grid_view,@cb_form_grid_form,@cb_clock_database,@cb_ban_chinh,@txt_fs_store_c_u_d_s,@cb_fs_script_page_load); end if @call_action=3 begin UPDATE form_steel SET form_name =@txt_form_name,id_project =@thuoc_du_an,form_grid_view =@cb_form_grid_view,form_grid_form =@cb_form_grid_form,form_db =@cb_clock_database,fs_table_name =@cb_ban_chinh,fs_store_c_u_d_s =@txt_fs_store_c_u_d_s,fs_script_page_load =@cb_fs_script_page_load WHERE id_form =@_fs_item_id end if @call_action=4 begin DELETE FROM form_steel WHERE id_form =@_fs_item_id end if @call_action=5 begin SELECT form_name as 'txt_form_name',id_project as 'thuoc_du_an',form_grid_view as 'cb_form_grid_view',form_grid_form as 'cb_form_grid_form',form_db as 'cb_clock_database',fs_table_name as 'cb_ban_chinh',fs_store_c_u_d_s as 'txt_fs_store_c_u_d_s',fs_script_page_load as 'cb_fs_script_page_load' FROM form_steel WHERE id_form =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_cate] @cb_nhom_san_pham INTEGER,@txt_url_loai_san_pham NVARCHAR(200),@txt_loai_san_pham NVARCHAR(200),@cb_thu_tu INTEGER,@cb_trang_thai INTEGER,@file_hinh_mo_ta NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  store_cate_name as 'Loại sản phẩm', store_cate_order as 'Thứ tự', store_cate_status as 'Trạng thái', store_cate_img as 'Hình mô tả',id_store_cate as _fs_ws_tb_key FROM store_cate end if @call_action=2 begin INSERT INTO store_cate (store_cate_key,store_cate_name,store_cate_order,store_cate_status,store_cate_img) VALUES (@txt_url_loai_san_pham,@txt_loai_san_pham,@cb_thu_tu,@cb_trang_thai,@file_hinh_mo_ta); end if @call_action=3 begin UPDATE store_cate SET store_cate_key =@txt_url_loai_san_pham,store_cate_name =@txt_loai_san_pham,store_cate_order =@cb_thu_tu,store_cate_status =@cb_trang_thai,store_cate_img =@file_hinh_mo_ta WHERE id_store_cate =@_fs_item_id end if @call_action=4 begin DELETE FROM store_cate WHERE id_store_cate =@_fs_item_id end if @call_action=5 begin SELECT store_cate_key as 'txt_url_loai_san_pham',store_cate_name as 'txt_loai_san_pham',store_cate_order as 'cb_thu_tu',store_cate_status as 'cb_trang_thai',store_cate_img as 'file_hinh_mo_ta' FROM store_cate WHERE id_store_cate =@_fs_item_id end RETURN 0











GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[kh_store_] @txt_ten_kho NVARCHAR(200),@txt_dia_chi NVARCHAR(200),@txt_dien_thoai NVARCHAR(200),@txt_mo_ta NVARCHAR(200),@_fs_item_id int,@call_action int AS  if @call_action=1 begin SELECT  store_name as 'Tên kho', store_ads as 'Địa chỉ', store_phone as 'Điện thoại', store_des as 'Mô tả',id_store as _fs_ws_tb_key FROM store_ end if @call_action=2 begin INSERT INTO store_ (store_name,store_ads,store_phone,store_des) VALUES (@txt_ten_kho,@txt_dia_chi,@txt_dien_thoai,@txt_mo_ta); end if @call_action=3 begin UPDATE store_ SET store_name =@txt_ten_kho,store_ads =@txt_dia_chi,store_phone =@txt_dien_thoai,store_des =@txt_mo_ta WHERE id_store =@_fs_item_id end if @call_action=4 begin DELETE FROM store_ WHERE id_store =@_fs_item_id end if @call_action=5 begin SELECT store_name as 'txt_ten_kho',store_ads as 'txt_dia_chi',store_phone as 'txt_dien_thoai',store_des as 'txt_mo_ta' FROM store_ WHERE id_store =@_fs_item_id end RETURN 0











GO

GO

--Indexes of table dbo.bh_GiftCode
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[bh_GiftCode] ADD CONSTRAINT [PK_bh_GifCode] PRIMARY KEY CLUSTERED ([bh_masp], [bh_giftcode]) 
GO

--Indexes of table dbo.bh_GiftProduct
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[bh_GiftProduct] ADD CONSTRAINT [PK_bh_GiftProduct] PRIMARY KEY CLUSTERED ([id]) 
GO

--Indexes of table dbo.bh_UserGiftCode
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[bh_UserGiftCode] ADD CONSTRAINT [PK_bh_UserGiftCode] PRIMARY KEY CLUSTERED ([user_id], [bh_massp], [bh_giftcode]) 
GO

--Indexes of table dbo.bh_UserProduct
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[bh_UserProduct] ADD CONSTRAINT [PK_bh_UserProduct] PRIMARY KEY CLUSTERED ([id]) 
GO

--Indexes of table dbo.ctr_in_form
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ctr_in_form] ADD CONSTRAINT [PK_ctr_in_form] PRIMARY KEY CLUSTERED ([id_ctr_in_form]) 
GO

--Indexes of table dbo.ctr_steel
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ctr_steel] ADD CONSTRAINT [PK__ctr_stee__D696DA0C04E4BC85] PRIMARY KEY CLUSTERED ([id_ctr]) 
GO

--Indexes of table dbo.form_steel
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[form_steel] ADD CONSTRAINT [PK__form_ste__620E126409A971A2] PRIMARY KEY CLUSTERED ([id_form]) 
GO

--Indexes of table dbo.form_store
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[form_store] ADD CONSTRAINT [PK__form_sto__B67CEC6D0E6E26BF] PRIMARY KEY CLUSTERED ([id_form_store]) 
GO

--Indexes of table dbo.form_store_para
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[form_store_para] ADD CONSTRAINT [PK__form_sto__53C1CEE014270015] PRIMARY KEY CLUSTERED ([id_store_para]) 
GO

--Indexes of table dbo.fs_auth
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[fs_auth] ADD CONSTRAINT [PK_fs_auth] PRIMARY KEY CLUSTERED ([auth_id]) 
GO

--Indexes of table dbo.fs_manga
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[fs_manga] ADD CONSTRAINT [PK_fs_manga] PRIMARY KEY CLUSTERED ([manga_id]) 
GO

--Indexes of table dbo.fs_manga_chap
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[fs_manga_chap] ADD CONSTRAINT [PK_fs_manga_chap] PRIMARY KEY CLUSTERED ([chap_id]) 
GO

--Indexes of table dbo.fs_manga_tag
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[fs_manga_tag] ADD CONSTRAINT [PK_manga_tag] PRIMARY KEY CLUSTERED ([tag_id]) 
GO

--Indexes of table dbo.fs_manga_type
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[fs_manga_type] ADD CONSTRAINT [PK_manga_type] PRIMARY KEY CLUSTERED ([type_id]) 
GO

--Indexes of table dbo.mar_project
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_mar_project] ON [dbo].[mar_project]  ([id_mar_project]) 
GO

ALTER TABLE [dbo].[mar_project] ADD CONSTRAINT [PK_mar_project] PRIMARY KEY CLUSTERED ([mar_project_name]) 
GO

--Indexes of table dbo.other_group
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[other_group] ADD CONSTRAINT [PK__other_gr__EF2116001CBC4616] PRIMARY KEY CLUSTERED ([id_group_other]) 
GO

--Indexes of table dbo.other_item
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[other_item] ADD CONSTRAINT [PK__other_it__EB6CAE8A22751F6C] PRIMARY KEY CLUSTERED ([id_other]) 
GO

--Indexes of table dbo.other_list
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[other_list] ADD CONSTRAINT [PK__other_li__3C8818E6282DF8C2] PRIMARY KEY CLUSTERED ([id_list_other]) 
GO

--Indexes of table dbo.pct_department
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[pct_department] ADD CONSTRAINT [PK_pct_department] PRIMARY KEY CLUSTERED ([id_department]) 
GO

--Indexes of table dbo.pct_employee
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[pct_employee] ADD CONSTRAINT [PK_pct_employee] PRIMARY KEY CLUSTERED ([id_employee]) 
GO

--Indexes of table dbo.pct_ticket
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[pct_ticket] ADD CONSTRAINT [PK_pct_ticket] PRIMARY KEY CLUSTERED ([id_ticket]) 
GO

--Indexes of table dbo.pct_title
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[pct_title] ADD CONSTRAINT [PK_pct_title] PRIMARY KEY CLUSTERED ([id_title]) 
GO

--Indexes of table dbo.project_steel
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[project_steel] ADD CONSTRAINT [PK__project___274AE1B32DE6D218] PRIMARY KEY CLUSTERED ([id_project]) 
GO

--Indexes of table dbo.so_orther
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[so_orther] ADD CONSTRAINT [PK_so_Orther] PRIMARY KEY CLUSTERED ([so_id]) 
GO

--Indexes of table dbo.so_orther_detail
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[so_orther_detail] ADD CONSTRAINT [PK_so_Orther_detail] PRIMARY KEY CLUSTERED ([so_orther_id], [so_prod_id]) 
GO

--Indexes of table dbo.so_prod_image_detail
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[so_prod_image_detail] ADD CONSTRAINT [PK_bh_ProductImageDetail] PRIMARY KEY CLUSTERED ([id]) 
GO

--Indexes of table dbo.store_
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_store] ON [dbo].[store_]  ([id_store]) 
GO

ALTER TABLE [dbo].[store_] ADD CONSTRAINT [PK_store__1] PRIMARY KEY CLUSTERED ([store_name]) 
GO

--Indexes of table dbo.store_cate
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_store_cate] ON [dbo].[store_cate]  ([id_store_cate]) 
GO

ALTER TABLE [dbo].[store_cate] ADD CONSTRAINT [PK_store_cate_1] PRIMARY KEY CLUSTERED ([store_cate_name]) 
GO

--Indexes of table dbo.store_com_ship
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_com_ship] ADD CONSTRAINT [PK_store_com_ship] PRIMARY KEY CLUSTERED ([id_store_com_ship]) 
GO

--Indexes of table dbo.store_com_type
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_com_type] ADD CONSTRAINT [PK_store_com_type] PRIMARY KEY CLUSTERED ([id_store_com_type]) 
GO

--Indexes of table dbo.store_company
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_company] ADD CONSTRAINT [PK_store_company] PRIMARY KEY CLUSTERED ([id_store_company]) 
GO

--Indexes of table dbo.store_contact
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_contact] ADD CONSTRAINT [PK_store_contact] PRIMARY KEY CLUSTERED ([id_store_contact]) 
GO

--Indexes of table dbo.store_exp
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_exp] ADD CONSTRAINT [PK_store_exp] PRIMARY KEY CLUSTERED ([id_store_exp]) 
GO

--Indexes of table dbo.store_imp
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_imp] ADD CONSTRAINT [PK_store_imp] PRIMARY KEY CLUSTERED ([id_store_imp]) 
GO

--Indexes of table dbo.store_prod
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_store_prod] ON [dbo].[store_prod]  ([id_store_prod]) 
GO

ALTER TABLE [dbo].[store_prod] ADD CONSTRAINT [PK_store_prod_1] PRIMARY KEY CLUSTERED ([store_prod_code]) 
GO

--Indexes of table dbo.store_prod_sku
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[store_prod_sku] ADD CONSTRAINT [PK_store_prod_sku] PRIMARY KEY CLUSTERED ([id_store_prod], [id_prod_sku]) 
GO

--Indexes of table dbo.store_slot
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_store_slot] ON [dbo].[store_slot]  ([id_store_slot]) 
GO

ALTER TABLE [dbo].[store_slot] ADD CONSTRAINT [PK_store_slot_1] PRIMARY KEY CLUSTERED ([store_slot_code]) 
GO

--Indexes of table dbo.store_stock
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_store_stock] ON [dbo].[store_stock]  ([id_store_stock]) 
GO

ALTER TABLE [dbo].[store_stock] ADD CONSTRAINT [PK_store_stock_1] PRIMARY KEY CLUSTERED ([store_stock_code]) 
GO

--Indexes of table dbo.store_unit
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [fs_id_store_unit] ON [dbo].[store_unit]  ([id_store_unit]) 
GO

ALTER TABLE [dbo].[store_unit] ADD CONSTRAINT [PK_store_unit] PRIMARY KEY CLUSTERED ([store_unit_name]) 
GO

--Indexes of table dbo.sys_company
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_company] ADD CONSTRAINT [PK_sys_company] PRIMARY KEY CLUSTERED ([id_company]) 
GO

--Indexes of table dbo.sys_fs_help
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_fs_help] ADD CONSTRAINT [PK__sys_fs_h__111BD456339FAB6E] PRIMARY KEY CLUSTERED ([id_fs_help]) 
GO

--Indexes of table dbo.sys_gridview_control
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_gridview_control] ADD CONSTRAINT [PK_sys_gridview_control] PRIMARY KEY CLUSTERED ([table_name], [column_name]) 
GO

--Indexes of table dbo.sys_group_page
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_group_page] ADD CONSTRAINT [PK__sys_grou__48D4F89737703C52] PRIMARY KEY CLUSTERED ([id_group_page]) 
GO

--Indexes of table dbo.sys_info
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_info] ADD CONSTRAINT [PK__sys_info__6393461B3C34F16F] PRIMARY KEY CLUSTERED ([id_sys_info]) 
GO

--Indexes of table dbo.sys_mapped_col
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_mapped_col] ADD CONSTRAINT [PK__sys_mapp__BE3F45B640058253] PRIMARY KEY CLUSTERED ([id_mapped_col]) 
GO

--Indexes of table dbo.sys_mapped_join
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_mapped_join] ADD CONSTRAINT [PK__sys_mapp__873804D045BE5BA9] PRIMARY KEY CLUSTERED ([id_mapped_join]) 
GO

--Indexes of table dbo.sys_mapped_operators
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_mapped_operators] ADD CONSTRAINT [PK__sys_mapp__41E57046498EEC8D] PRIMARY KEY CLUSTERED ([id_operators]) 
GO

--Indexes of table dbo.sys_mapped_table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_mapped_table] ADD CONSTRAINT [PK__sys_mapp__084AC9224D5F7D71] PRIMARY KEY CLUSTERED ([id_mapped]) 
GO

--Indexes of table dbo.sys_mapped_ty_op
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_mapped_ty_op] ADD CONSTRAINT [PK__sys_mapp__424E213B5224328E] PRIMARY KEY CLUSTERED ([id_operators], [id_operators_type]) 
GO

--Indexes of table dbo.sys_mapped_type
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_mapped_type] ADD CONSTRAINT [PK__sys_mapp__3AB517D155F4C372] PRIMARY KEY CLUSTERED ([id_operators_type]) 
GO

--Indexes of table dbo.sys_page
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[sys_page] ADD CONSTRAINT [PK__sys_page__0941B07A59C55456] PRIMARY KEY CLUSTERED ([id_page]) 
GO

--Indexes of table dbo.tbl_menu_PM
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tbl_menu_PM] ADD CONSTRAINT [PK_tbl_menu_PM] PRIMARY KEY CLUSTERED ([ID_menu_PM]) 
GO

--Indexes of table dbo.tbl_new_PM
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tbl_new_PM] ADD CONSTRAINT [PK_tbl_new_PM] PRIMARY KEY CLUSTERED ([ID_new_PM]) 
GO

--Indexes of table dbo.tbl_silde_PM
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tbl_silde_PM] ADD CONSTRAINT [PK_tbl_silde_PM] PRIMARY KEY CLUSTERED ([ID_silde_PM]) 
GO

--Indexes of table dbo.tbl_type_new_PM
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tbl_type_new_PM] ADD CONSTRAINT [PK_tbl_type_new_PM] PRIMARY KEY CLUSTERED ([ID_type_new_PM]) 
GO

--Indexes of table dbo.tblSysUserGroupPage
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblSysUserGroupPage] ADD CONSTRAINT [PK_tblSysUserGroupPage] PRIMARY KEY CLUSTERED ([role_group_page_id]) 
GO

--Indexes of table dbo.tblSysUserGroupPageDetail
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblSysUserGroupPageDetail] ADD CONSTRAINT [PK_tblSysUserGroupPageDetail] PRIMARY KEY CLUSTERED ([id_group_user_detail]) 
GO

--Indexes of table dbo.tblSysUserGroupPagePage
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblSysUserGroupPagePage] ADD CONSTRAINT [PK_tblSysUserGroupPagePage] PRIMARY KEY CLUSTERED ([id_group_page_detail]) 
GO

--Indexes of table dbo.tblSysUserRolePage
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblSysUserRolePage] ADD CONSTRAINT [PK_tblSysUserRolePage_1] PRIMARY KEY CLUSTERED ([id_page], [user_id]) 
GO

--Indexes of table dbo.tblUser
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblUser] ADD CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED ([user_id], [user_email]) 
GO

--Indexes of table dbo.tblUserCloud
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblUserCloud] ADD CONSTRAINT [PK_tblUserCloud] PRIMARY KEY CLUSTERED ([user_cloud_id]) 
GO

--Indexes of table dbo.tblUserFriends
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblUserFriends] ADD CONSTRAINT [PK_tblUserFriends] PRIMARY KEY CLUSTERED ([user_id], [social_id]) 
GO

--Indexes of table dbo.tblUserImg
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[tblUserImg] ADD CONSTRAINT [PK_tblUserImg] PRIMARY KEY CLUSTERED ([id_user_img]) 
GO

--Indexes of table dbo.user_steel
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[user_steel] ADD CONSTRAINT [PK__user_ste__D2D146375E8A0973] PRIMARY KEY CLUSTERED ([id_user]) 
GO

--Indexes of table dbo.web_banner
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_banner] ADD CONSTRAINT [PK_web_banner] PRIMARY KEY CLUSTERED ([id_banner]) 
GO

--Indexes of table dbo.web_chater
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_chater] ADD CONSTRAINT [PK_web_chater] PRIMARY KEY CLUSTERED ([id_chater]) 
GO

--Indexes of table dbo.web_chater_content
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_chater_content] ADD CONSTRAINT [PK_web_chater_content] PRIMARY KEY CLUSTERED ([id_up]) 
GO

--Indexes of table dbo.web_content
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_content] ADD CONSTRAINT [PK_web_content] PRIMARY KEY CLUSTERED ([id_content]) 
GO

--Indexes of table dbo.web_content_other
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_content_other] ADD CONSTRAINT [PK_web_content_other] PRIMARY KEY CLUSTERED ([id_content_other]) 
GO

--Indexes of table dbo.web_customer
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_customer] ADD CONSTRAINT [PK_web_customer] PRIMARY KEY CLUSTERED ([id_customer]) 
GO

--Indexes of table dbo.web_department
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_department] ADD CONSTRAINT [PK_web_department] PRIMARY KEY CLUSTERED ([id_department]) 
GO

--Indexes of table dbo.web_employer
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_employer] ADD CONSTRAINT [PK_web_employer] PRIMARY KEY CLUSTERED ([id_employer]) 
GO

--Indexes of table dbo.web_list_product
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_list_product] ADD CONSTRAINT [PK_web_list_product] PRIMARY KEY CLUSTERED ([id_list_prod]) 
GO

--Indexes of table dbo.web_menu_root
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_menu_root] ADD CONSTRAINT [PK_web_menu_root] PRIMARY KEY CLUSTERED ([id_menu]) 
GO

--Indexes of table dbo.web_products
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_products] ADD CONSTRAINT [PK_web_products] PRIMARY KEY CLUSTERED ([id_prod]) 
GO

--Indexes of table dbo.web_title
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[web_title] ADD CONSTRAINT [PK_web_title] PRIMARY KEY CLUSTERED ([id_title]) 
GO
