USE [master]
GO
/****** Object:  Database [LandlystDB]    Script Date: 14-12-2020 00:30:29 ******/
CREATE DATABASE [LandlystDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LandlystDB', FILENAME = N'C:\Users\alex303a\LandlystDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LandlystDB_log', FILENAME = N'C:\Users\alex303a\LandlystDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LandlystDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LandlystDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LandlystDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LandlystDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LandlystDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LandlystDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LandlystDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LandlystDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LandlystDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LandlystDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LandlystDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LandlystDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LandlystDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LandlystDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LandlystDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LandlystDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LandlystDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LandlystDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LandlystDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LandlystDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LandlystDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LandlystDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LandlystDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LandlystDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LandlystDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LandlystDB] SET  MULTI_USER 
GO
ALTER DATABASE [LandlystDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LandlystDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LandlystDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LandlystDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LandlystDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LandlystDB] SET QUERY_STORE = OFF
GO
USE [LandlystDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [LandlystDB]
GO
/****** Object:  User [Lis]    Script Date: 14-12-2020 00:30:29 ******/
CREATE USER [Lis] FOR LOGIN [Lis] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Addition]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addition](
	[AdditionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Cost] [char](10) NULL,
 CONSTRAINT [PK_Addition] PRIMARY KEY CLUSTERED 
(
	[AdditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Additions]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Additions](
	[AdditionID] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
 CONSTRAINT [PK_Additions] PRIMARY KEY CLUSTERED 
(
	[AdditionID] ASC,
	[RoomNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Costumer]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costumer](
	[Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[ZipCode] [char](10) NULL,
	[PhoneNumber] [char](10) NOT NULL,
	[Mail] [varchar](100) NULL,
 CONSTRAINT [PK_Costumer_1] PRIMARY KEY CLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[CostumerID] [char](10) NOT NULL,
	[RoomNumber] [int] NULL,
	[CheckinDate] [datetime] NULL,
	[CheckoutDate] [datetime] NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomNumber] [int] NOT NULL,
	[BaseCost] [char](10) NULL,
	[Taken] [bit] NULL,
	[Clean] [bit] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCode](
	[ZipCode] [char](10) NOT NULL,
	[City] [varchar](50) NULL,
 CONSTRAINT [PK_ZipCode] PRIMARY KEY CLUSTERED 
(
	[ZipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Additions]  WITH CHECK ADD  CONSTRAINT [FK_Additions_Addition] FOREIGN KEY([AdditionID])
REFERENCES [dbo].[Addition] ([AdditionID])
GO
ALTER TABLE [dbo].[Additions] CHECK CONSTRAINT [FK_Additions_Addition]
GO
ALTER TABLE [dbo].[Additions]  WITH CHECK ADD  CONSTRAINT [FK_Additions_Room] FOREIGN KEY([RoomNumber])
REFERENCES [dbo].[Room] ([RoomNumber])
GO
ALTER TABLE [dbo].[Additions] CHECK CONSTRAINT [FK_Additions_Room]
GO
ALTER TABLE [dbo].[Costumer]  WITH CHECK ADD  CONSTRAINT [FK_Costumer_ZipCode] FOREIGN KEY([ZipCode])
REFERENCES [dbo].[ZipCode] ([ZipCode])
GO
ALTER TABLE [dbo].[Costumer] CHECK CONSTRAINT [FK_Costumer_ZipCode]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Costumer] FOREIGN KEY([CostumerID])
REFERENCES [dbo].[Costumer] ([PhoneNumber])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Costumer]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Room] FOREIGN KEY([RoomNumber])
REFERENCES [dbo].[Room] ([RoomNumber])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Room]
GO
/****** Object:  StoredProcedure [dbo].[CreateCustomer]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateCustomer] @Name varchar(50), @Address varchar(100), @ZipCode char(10),
@PhoneNumber char(10), @Mail varchar(100)
AS
INSERT INTO Costumer(Name, Address, ZipCode,PhoneNumber,Mail)
VALUES(@Name,@Address,@ZipCode,@PhoneNumber,@Mail)
GO
/****** Object:  StoredProcedure [dbo].[CreateReservation]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateReservation] @PhoneNumber char(10), 
@RoomNumber int, @CheckinDate datetime, @CheckoutDate datetime
AS
INSERT INTO dbo.Reservation(CostumerID,RoomNumber,
CheckinDate,CheckoutDate)
VALUES(@PhoneNumber,@RoomNumber,@CheckinDate,@CheckoutDate)
GO
/****** Object:  StoredProcedure [dbo].[CreateReservationAndCostumer]    Script Date: 14-12-2020 00:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateReservationAndCostumer] @Name varchar(50), @Address varchar(100), @ZipCode char(10),
@PhoneNumber char(10), @Mail varchar(100), @RoomNumber int, @CheckinDate datetime, @CheckoutDate datetime


AS

EXEC CreateCustomer @Name, @Address, @ZipCode, @PhoneNumber, @Mail

EXEC CreateReservation @PhoneNumber, @RoomNumber, @CheckinDate, @CheckoutDate
GO
USE [master]
GO
ALTER DATABASE [LandlystDB] SET  READ_WRITE 
GO
