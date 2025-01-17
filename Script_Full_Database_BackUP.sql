USE [master]
GO
/****** Object:  Database [Tierheim_Abschlussprojekt]    Script Date: 10.12.2020 14:03:26 ******/
CREATE DATABASE [Tierheim_Abschlussprojekt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tierheim_Abschlussprojekt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tierheim_Abschlussprojekt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tierheim_Abschlussprojekt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tierheim_Abschlussprojekt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tierheim_Abschlussprojekt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET RECOVERY FULL 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET  MULTI_USER 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tierheim_Abschlussprojekt', N'ON'
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [TierheimWriter]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [TierheimWriter] WITH PASSWORD=N'goO37RdRMtUeeNioceZbljZVPXmzl9mgzYDsu5DxT/U=', DEFAULT_DATABASE=[Tierheim_Abschlussprojekt], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [TierheimWriter] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [TierheimReader]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [TierheimReader] WITH PASSWORD=N'Xb+gZt3b0gmPIhSedXUrG6TmwHByhKyB8gEhpyKcFEA=', DEFAULT_DATABASE=[Tierheim_Abschlussprojekt], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [TierheimReader] DISABLE
GO
/****** Object:  Login [NT-AUTORITÄT\SYSTEM]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [NT-AUTORITÄT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [DESKTOP-T0HF2L1\Tabea]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [DESKTOP-T0HF2L1\Tabea] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'EurZtIrX9SsSSrOul0LEZhipeNUtxsY9RWrw1qsnmyg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 10.12.2020 14:03:26 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'1Dwpfj1YNNXOXvF37nSalo9VvdBVWy5axdylqwce9rc=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[Tierheim_Abschlussprojekt] TO [DESKTOP-T0HF2L1\Tabea]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-T0HF2L1\Tabea]
GO
USE [Tierheim_Abschlussprojekt]
GO
/****** Object:  User [TierheimSchreiber]    Script Date: 10.12.2020 14:03:26 ******/
CREATE USER [TierheimSchreiber] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TierheimLeser]    Script Date: 10.12.2020 14:03:26 ******/
CREATE USER [TierheimLeser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [TierheimLeser] AS [dbo]
GO
GRANT CONNECT TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_CountMitarbeiter]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE    FUNCTION [dbo].[sf_CountMitarbeiter]
(
	@getTierheimID int
)
RETURNS int
AS
BEGIN

DECLARE @AnzahlMitarbeiter int;

SET @AnzahlMitarbeiter = (

SELECT COUNT (MitarbeiterID)
FROM tb_Mitarbeiter
WHERE TierheimID = @getTierheimID 

)

RETURN @AnzahlMitarbeiter

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_CountMitarbeiter] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_IstMitarbeiterTierpfleger]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE    FUNCTION [dbo].[sf_IstMitarbeiterTierpfleger]
(
	@getMitarbeiterID int
)
RETURNS bit
AS
BEGIN

DECLARE @Beruf_Position nvarchar(50);


SET @Beruf_Position =
(SELECT Beruf_Position
FROM tb_Mitarbeiter
WHERE tb_Mitarbeiter.MitarbeiterID = @getMitarbeiterID)


RETURN IIF(@Beruf_Position = 'Tierpfleger', 1, 0)


END

GO
ALTER AUTHORIZATION ON [dbo].[sf_IstMitarbeiterTierpfleger] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Tier]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Tier](
	[TierID] [int] IDENTITY(1,1) NOT NULL,
	[TierName] [nvarchar](50) NOT NULL,
	[TierAlter] [smallint] NULL,
	[DatumAnkunft] [date] NOT NULL,
	[DatumAbgabe] [date] NULL,
	[TierKategorieID] [smallint] NOT NULL,
	[GesundheitID] [smallint] NULL,
	[GrößeID] [smallint] NOT NULL,
	[Bemerkung] [nvarchar](250) NULL,
 CONSTRAINT [PK_TierID] PRIMARY KEY CLUSTERED 
(
	[TierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Tier] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Tier] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Tier] TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  View [dbo].[View_Tier2020]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Tier2020]
AS
SELECT        TOP (100) PERCENT TierName AS Tier, TierAlter, DatumAnkunft, DatumAbgabe, Bemerkung
FROM            dbo.tb_Tier
WHERE        (DatumAnkunft BETWEEN CONVERT(DATETIME, '2020-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2020-12-31 00:00:00', 102))
ORDER BY TierAlter, DatumAnkunft
GO
ALTER AUTHORIZATION ON [dbo].[View_Tier2020] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Tierheim]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Tierheim](
	[TierheimID] [smallint] IDENTITY(1,1) NOT NULL,
	[TierheimName] [nvarchar](50) NOT NULL,
	[TierheimStraße] [nvarchar](50) NOT NULL,
	[TierheimHausnummer] [char](10) NOT NULL,
	[TierheimPLZ] [char](5) NOT NULL,
	[TierheimOrt] [nvarchar](30) NOT NULL,
	[TierheimTel] [nvarchar](25) NULL,
	[TierheimEmail] [nvarchar](40) NULL,
 CONSTRAINT [PK_tb_Tierheim] PRIMARY KEY CLUSTERED 
(
	[TierheimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Tierheim] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Tierheim] ([TierheimName]) TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Tierheim] ([TierheimName]) TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Mitarbeiter]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Mitarbeiter](
	[MitarbeiterID] [smallint] IDENTITY(1,1) NOT NULL,
	[MitarbeiterVorname] [nvarchar](50) NOT NULL,
	[MitarbeiterNachname] [nvarchar](50) NULL,
	[MitarbeiterStraße] [nvarchar](50) NOT NULL,
	[MitarbeiterHausnummer] [char](10) NULL,
	[MitarbeiterPLZ] [char](5) NOT NULL,
	[MitarbeiterOrt] [nvarchar](30) NOT NULL,
	[Beruf_Position] [nvarchar](50) NOT NULL,
	[Anstellungsverhältnis] [nvarchar](50) NOT NULL,
	[TierheimID] [smallint] NOT NULL,
 CONSTRAINT [PK_MitarbeiterID] PRIMARY KEY CLUSTERED 
(
	[MitarbeiterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Mitarbeiter] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Mitarbeiter] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Mitarbeiter] TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  View [dbo].[View_MitarbeiterTierheim]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MitarbeiterTierheim]
AS
SELECT        TOP (100) PERCENT dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterVorname, dbo.tb_Mitarbeiter.MitarbeiterNachname
FROM            dbo.tb_Tierheim INNER JOIN
                         dbo.tb_Mitarbeiter ON dbo.tb_Mitarbeiter.TierheimID = dbo.tb_Tierheim.TierheimID
ORDER BY dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname
GO
ALTER AUTHORIZATION ON [dbo].[View_MitarbeiterTierheim] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[View_MitarbeiterTierheim] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[View_MitarbeiterTierheim] TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Gesundheit]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Gesundheit](
	[GesundheitsID] [smallint] IDENTITY(1,1) NOT NULL,
	[Untersuchung] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_GesundheitsID] PRIMARY KEY CLUSTERED 
(
	[GesundheitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Gesundheit] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Gesundheit] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Gesundheit] TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Größe]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Größe](
	[GrößeID] [smallint] IDENTITY(1,1) NOT NULL,
	[Tiergröße] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_GrößeID] PRIMARY KEY CLUSTERED 
(
	[GrößeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Größe] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Größe] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Größe] TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_TierKategorie]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TierKategorie](
	[TierKategorieID] [smallint] IDENTITY(1,1) NOT NULL,
	[TierArt] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_TierKategorieID] PRIMARY KEY CLUSTERED 
(
	[TierKategorieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_TierKategorie] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_VerknüpfungMitarbeiterTier]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_VerknüpfungMitarbeiterTier](
	[MitarbeiterTierID] [smallint] IDENTITY(1,1) NOT NULL,
	[TierID] [int] NOT NULL,
	[MitarbeiterID] [smallint] NOT NULL,
	[Status] [nvarchar](7) NULL,
 CONSTRAINT [PK_tb_VerknüpfungMitarbeiterTier] PRIMARY KEY CLUSTERED 
(
	[MitarbeiterTierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_VerknüpfungMitarbeiterTier] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_MitarbeiterTierPflege]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MitarbeiterTierPflege]
AS
SELECT        TOP (100) PERCENT dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_Mitarbeiter.MitarbeiterVorname, dbo.tb_TierKategorie.TierArt, dbo.tb_Tier.TierName, dbo.tb_Gesundheit.Untersuchung, 
                         dbo.tb_Größe.Tiergröße
FROM            dbo.tb_Tier INNER JOIN
                         dbo.tb_Gesundheit ON dbo.tb_Tier.GesundheitID = dbo.tb_Gesundheit.GesundheitsID INNER JOIN
                         dbo.tb_Größe ON dbo.tb_Tier.GrößeID = dbo.tb_Größe.GrößeID INNER JOIN
                         dbo.tb_TierKategorie ON dbo.tb_Tier.TierKategorieID = dbo.tb_TierKategorie.TierKategorieID INNER JOIN
                         dbo.tb_VerknüpfungMitarbeiterTier ON dbo.tb_Tier.TierID = dbo.tb_VerknüpfungMitarbeiterTier.TierID INNER JOIN
                         dbo.tb_Mitarbeiter ON dbo.tb_VerknüpfungMitarbeiterTier.MitarbeiterID = dbo.tb_Mitarbeiter.MitarbeiterID INNER JOIN
                         dbo.tb_Tierheim ON dbo.tb_Mitarbeiter.TierheimID = dbo.tb_Tierheim.TierheimID
ORDER BY dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_TierKategorie.TierArt, dbo.tb_Tier.TierName
GO
ALTER AUTHORIZATION ON [dbo].[View_MitarbeiterTierPflege] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_MitarbeiterTierPflegeErweiterung]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MitarbeiterTierPflegeErweiterung]
AS
SELECT        TOP (100) PERCENT dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_Mitarbeiter.MitarbeiterVorname, dbo.tb_TierKategorie.TierArt, dbo.tb_Tier.TierName, dbo.tb_Gesundheit.Untersuchung, 
                         dbo.tb_Größe.Tiergröße
FROM            dbo.tb_Tierheim INNER JOIN
                         dbo.tb_Mitarbeiter ON dbo.tb_Tierheim.TierheimID = dbo.tb_Mitarbeiter.TierheimID LEFT OUTER JOIN
                         dbo.tb_Tier INNER JOIN
                         dbo.tb_Gesundheit ON dbo.tb_Tier.GesundheitID = dbo.tb_Gesundheit.GesundheitsID INNER JOIN
                         dbo.tb_Größe ON dbo.tb_Tier.GrößeID = dbo.tb_Größe.GrößeID INNER JOIN
                         dbo.tb_TierKategorie ON dbo.tb_Tier.TierKategorieID = dbo.tb_TierKategorie.TierKategorieID INNER JOIN
                         dbo.tb_VerknüpfungMitarbeiterTier ON dbo.tb_Tier.TierID = dbo.tb_VerknüpfungMitarbeiterTier.TierID ON dbo.tb_Mitarbeiter.MitarbeiterID = dbo.tb_VerknüpfungMitarbeiterTier.MitarbeiterID
ORDER BY dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_TierKategorie.TierArt, dbo.tb_Tier.TierName
GO
ALTER AUTHORIZATION ON [dbo].[View_MitarbeiterTierPflegeErweiterung] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_MitarbeiterTierPflegeErweiterungZWEI]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MitarbeiterTierPflegeErweiterungZWEI]
AS
SELECT        TOP (100) PERCENT dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_Mitarbeiter.MitarbeiterVorname, dbo.tb_TierKategorie.TierArt, COUNT(dbo.tb_Tier.TierName) AS AnzahlTier
FROM            dbo.tb_TierKategorie INNER JOIN
                         dbo.tb_Tier INNER JOIN
                         dbo.tb_VerknüpfungMitarbeiterTier ON dbo.tb_Tier.TierID = dbo.tb_VerknüpfungMitarbeiterTier.TierID ON dbo.tb_TierKategorie.TierKategorieID = dbo.tb_Tier.TierKategorieID RIGHT OUTER JOIN
                         dbo.tb_Tierheim INNER JOIN
                         dbo.tb_Mitarbeiter ON dbo.tb_Tierheim.TierheimID = dbo.tb_Mitarbeiter.TierheimID ON dbo.tb_VerknüpfungMitarbeiterTier.MitarbeiterID = dbo.tb_Mitarbeiter.MitarbeiterID
GROUP BY dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_Mitarbeiter.MitarbeiterVorname, dbo.tb_TierKategorie.TierArt
ORDER BY dbo.tb_Tierheim.TierheimName, dbo.tb_Mitarbeiter.MitarbeiterNachname, dbo.tb_TierKategorie.TierArt
GO
ALTER AUTHORIZATION ON [dbo].[View_MitarbeiterTierPflegeErweiterungZWEI] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[tf_TierVermittlung]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   FUNCTION [dbo].[tf_TierVermittlung] 
(	
	@SuchzeitraumStart date,
	@SuchzeitraumEnde date
)
RETURNS TABLE 
AS
RETURN 
( 
	SELECT dbo.tb_Tier.TierName AS NameTier, 
		dbo.tb_Tier.TierAlter AS AlterTier, 
		dbo.tb_Tier.DatumAnkunft AS Ankunft, 
		dbo.tb_Tier.DatumAbgabe AS Abgabe

	FROM tb_Tier

	WHERE tb_Tier.DatumAnkunft BETWEEN @SuchzeitraumStart AND @SuchzeitraumEnde -- filtern nach Datum

)
GO
ALTER AUTHORIZATION ON [dbo].[tf_TierVermittlung] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Kunden]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kunden](
	[KundenID] [int] IDENTITY(1,1) NOT NULL,
	[KundenVorname] [nvarchar](50) NOT NULL,
	[KundenNachname] [nvarchar](50) NULL,
	[KundenStraße] [nvarchar](50) NOT NULL,
	[KundenHausnummer] [char](10) NULL,
	[KundenPLZ] [char](5) NOT NULL,
	[KundenOrt] [nvarchar](30) NOT NULL,
	[KundenTel] [nvarchar](25) NULL,
 CONSTRAINT [PK_tb_Kunden] PRIMARY KEY CLUSTERED 
(
	[KundenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Kunden] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Kunden] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Kunden] TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenVorname]) TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenNachname]) TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenStraße]) TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenHausnummer]) TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenPLZ]) TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenOrt]) TO [TierheimSchreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Kunden] ([KundenTel]) TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Lager]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lager](
	[LagerID] [smallint] IDENTITY(1,1) NOT NULL,
	[Spielzeug] [int] NULL,
	[Nahrung] [int] NULL,
	[Medikamente] [int] NULL,
	[TierheimID] [smallint] NOT NULL,
 CONSTRAINT [PK_tb_Lager] PRIMARY KEY CLUSTERED 
(
	[LagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Lager] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Lager] TO [TierheimLeser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Lager] TO [TierheimSchreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_VerknüpfungKundenTierheim]    Script Date: 10.12.2020 14:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_VerknüpfungKundenTierheim](
	[KundenTierheimID] [smallint] IDENTITY(1,1) NOT NULL,
	[KundenID] [int] NOT NULL,
	[TierheimID] [smallint] NOT NULL,
 CONSTRAINT [PK_tb_VerknüpfungKundenTierheim] PRIMARY KEY CLUSTERED 
(
	[KundenTierheimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_VerknüpfungKundenTierheim] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[tb_Gesundheit] ON 

INSERT [dbo].[tb_Gesundheit] ([GesundheitsID], [Untersuchung]) VALUES (1, N'Tier nicht untersucht')
INSERT [dbo].[tb_Gesundheit] ([GesundheitsID], [Untersuchung]) VALUES (2, N'Tier untersucht; krank')
INSERT [dbo].[tb_Gesundheit] ([GesundheitsID], [Untersuchung]) VALUES (3, N'Tier untersucht; gesund')
SET IDENTITY_INSERT [dbo].[tb_Gesundheit] OFF
SET IDENTITY_INSERT [dbo].[tb_Größe] ON 

INSERT [dbo].[tb_Größe] ([GrößeID], [Tiergröße]) VALUES (1, N'klein')
INSERT [dbo].[tb_Größe] ([GrößeID], [Tiergröße]) VALUES (2, N'mittel')
INSERT [dbo].[tb_Größe] ([GrößeID], [Tiergröße]) VALUES (3, N'groß')
SET IDENTITY_INSERT [dbo].[tb_Größe] OFF
SET IDENTITY_INSERT [dbo].[tb_Kunden] ON 

INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (1, N'Anna', N'Müller', N'Müllerstraße', N'5a        ', N'12345', N'Müllerhausen', N'+49 00445215654')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (2, N'Hansi', N'Huller', N'Hullerstraße', N'25        ', N'12356', N'Hullerhausen', N'+49 04895454')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (3, N'Horst', N'Mustermann', N'Musterstraße', N'255       ', N'12378', N'Musterstadt', N'02383 569')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (4, N'Susi', N'Santana', N'Santenstraße', N'56        ', N'12325', N'Santenhausen', N'0259 6589')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (6, N'Hanna', N'Jera', N'Jerastraße', N'52        ', N'12325', N'Jerastadt', N'255557 383')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (7, N'Babara', N'Hirsch', N'Hirschstraße', N'13        ', N'24962', N'Hirschstadt', N'+049 4098408')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (8, N'Charlie', N'Braun', N'Braunstraße', N'53        ', N'49752', N'Braunhausen', N'+049 04984048')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (9, N'Horst', N'Klein', N'Kleinstraße', N'177       ', N'78564', N'Kleinstadt', N'+ 04089 04890489')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (10, N'Sandra', N'Blatt', N'Blattweg', N'63        ', N'89543', N'Blattstadt', N'+ 049840 498 ')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (12, N'Petra', N'Hecht', N'Hechtweg', N'1A        ', N'48964', N'Hechthausen', N'+459854 4984')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (13, N'Marie', N'Mayer', N'Winkelgasse', N'7         ', N'15494', N'Winkelstadt', N'49680 49840')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (14, N'Laura', N'Müller', N'Weinstraße', N'19        ', N'23496', N'Weinstadt', N'5468049 4984')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (15, N'Felix', N'Fuchs', N'Ferdinantstraße', N'201       ', N'39550', N'Ferdinantstadt', N'+56 549844654')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (16, N'Matthias', N'Schleicher', N'Schleichstraße', N'72        ', N'96544', N'Schleichhausen', N'+333 5985')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (17, N'Günther', N'Jausch', N'Jauschbachstraße', N'2         ', N'12385', N'Jauschhausen', N'+46854 9849')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (18, N'Melanie', N'Munsen', N'Munsenstraße', N'37        ', N'46846', N'Munsenstadt', N'5486440 4984')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (19, N'Franziska', N'Mai', N'Frühlingsstraße', N'6         ', N'65482', N'Frühlingshausen', N'7984 4984 98498')
INSERT [dbo].[tb_Kunden] ([KundenID], [KundenVorname], [KundenNachname], [KundenStraße], [KundenHausnummer], [KundenPLZ], [KundenOrt], [KundenTel]) VALUES (20, N'Maria', N'Haselnuss', N'Haselnussweg', N'73        ', N'45634', N'Haselnussstadt', N'+55 4984 08494')
SET IDENTITY_INSERT [dbo].[tb_Kunden] OFF
SET IDENTITY_INSERT [dbo].[tb_Lager] ON 

INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (2, 55, 464, 581, 1)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (3, 465, 1, 126, 2)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (4, 23, 23, 56, 3)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (5, 67, 43, 456, 4)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (6, 23, 489, 52, 5)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (8, 2, 30, 40, 1)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (9, 51, 21, 3, 3)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (10, 22, 14, 23, 2)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (11, 58, 11, 45, 4)
INSERT [dbo].[tb_Lager] ([LagerID], [Spielzeug], [Nahrung], [Medikamente], [TierheimID]) VALUES (12, 117, 78, 95, 1)
SET IDENTITY_INSERT [dbo].[tb_Lager] OFF
SET IDENTITY_INSERT [dbo].[tb_Mitarbeiter] ON 

INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (1, N'Anja', N'Wolf', N'Bahnhofstraße', N'87        ', N'43548', N'Osnabrück', N'Tierpfleger', N'Vollzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (3, N'Tabea', N'Pieper', N'Opernplatz', N'89        ', N'54556', N'Gießen', N'Tierpfleger', N'Vollzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (4, N'Yevgeniya', N'Pszczola', N'Bienenweg', N'7         ', N'96656', N'München', N'Tierpfleger', N'Vollzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (5, N'Anna', N'Pfeifer', N'Pfeiferstraße', N'89        ', N'34896', N'Pfeiferstadt', N'Praktikant', N'Teilzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (6, N'Hubert', N'Apfel', N'Apfelstraße', N'65        ', N'34892', N'Apfelhausen', N'Praktikant', N'Teilzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (7, N'Hannes', N'Gurke', N'Gurkenweg', N'888       ', N'86432', N'Gurkenstadt', N'Tierpfleger', N'Vollzeit', 2)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (8, N'Berta', N'Baum', N'Baumschulenweg', N'896       ', N'16835', N'Baumhausen', N'Tierpfleger', N'Teilzeit', 2)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (9, N'Gabi', N'Tomate', N'Tomatenweg', N'8         ', N'81621', N'Tomatenstadt', N'Praktikant', N'Teilzeit', 2)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (10, N'Susanne', N'Nudel', N'Nudelstraße', N'19        ', N'94687', N'Nudelstadt', N'Tierpfleger', N'Vollzeit', 3)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (12, N'Heinrich', N'Karotte', N'Karottenweg', N'87        ', N'49846', N'Karottenhausen', N'Tierpfleger', N'Vollzeit', 3)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (13, N'Claudia', N'Gabel', N'Gabelungsweg', N'7         ', N'79653', N'Gabelstadt', N'Tierpfleger', N'Vollzeit', 4)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (14, N'Karl', N'Löffel', N'Löffelstraße', N'09        ', N'46898', N'Löffelhausen', N'Tierpfleger', N'Vollzeit', 5)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (15, N'Jan', N'Messer', N'Messerweg', N'92K       ', N'49865', N'Messerstadt', N'Sekretär', N'Vollzeit', 3)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (16, N'Beate', N'Fuchs', N'Fuchsenweg', N'8L        ', N'48965', N'Fuchsstadt', N'Manager', N'Vollzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (17, N'Maria', N'Hilf', N'Himmelweg', N'87        ', N'54986', N'Himmelstadt', N'Geschäftsführer', N'Vollzeit', 2)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (18, N'Claus', N'Santa', N'Nordpolstraße', N'1         ', N'99999', N'Winterstadt', N'Motivator', N'Teilzeit', 5)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (19, N'Ulla', N'Blume', N'Blumenstraße', N'78        ', N'46843', N'Blumenstadt', N'Reinigungskraft', N'Vollzeit', 1)
INSERT [dbo].[tb_Mitarbeiter] ([MitarbeiterID], [MitarbeiterVorname], [MitarbeiterNachname], [MitarbeiterStraße], [MitarbeiterHausnummer], [MitarbeiterPLZ], [MitarbeiterOrt], [Beruf_Position], [Anstellungsverhältnis], [TierheimID]) VALUES (20, N'Cinderella', N'Aschenputtel', N'Aschenweg', N'89        ', N'45351', N'Märchenstadt', N'Reinigungskraft', N'Teilzeit', 4)
SET IDENTITY_INSERT [dbo].[tb_Mitarbeiter] OFF
SET IDENTITY_INSERT [dbo].[tb_Tier] ON 

INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (1, N'Ben', 4, CAST(N'2020-12-04' AS Date), NULL, 1, 1, 1, N'Liebt rotes Spielzeug')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (2, N'Tim', 6, CAST(N'2020-11-05' AS Date), NULL, 1, 1, 1, N'Frisst nur Hafer')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (4, N'Susi', 3, CAST(N'2020-05-03' AS Date), NULL, 1, 1, 1, N'Versteht sich nicht mit Männchen')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (5, N'Kati', 3, CAST(N'2020-04-04' AS Date), NULL, 1, 1, 1, N'Braucht viel Liebe')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (6, N'Horst', 10, CAST(N'2020-05-03' AS Date), NULL, 4, 1, 1, N'Beißt, wenn man ihn zu schnell anfassen möchte')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (8, N'Zoja', 0, CAST(N'2020-01-05' AS Date), NULL, 2, 1, 1, N'Hat 3 Beine')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (9, N'Alex', 0, CAST(N'2020-12-07' AS Date), NULL, 1, 1, 1, N'Würde für Leckerlies alles tun')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (10, N'Jojo', 3, CAST(N'2020-05-17' AS Date), CAST(N'2020-06-17' AS Date), 2, 3, 1, N'Ist geimpft und entwurmt')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (11, N'Pelutti', 2, CAST(N'2019-04-06' AS Date), NULL, 5, 3, 2, N'Keine Auffälligkeiten')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (12, N'Syllemann', 9, CAST(N'2018-09-20' AS Date), NULL, 12, 2, 3, N'Ist ein Elefant')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (13, N'Sveni', 1, CAST(N'2019-05-26' AS Date), CAST(N'2019-06-30' AS Date), 3, 2, 2, N'Hat ein schweres Trauma')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (14, N'Mayerchen', 6, CAST(N'2020-06-09' AS Date), NULL, 6, 1, 2, NULL)
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (15, N'Tobi', 5, CAST(N'2020-01-02' AS Date), NULL, 1, 3, 1, N'blind')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (16, N'Luna', 15, CAST(N'2018-06-03' AS Date), NULL, 4, 3, 2, N'hustet')
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (17, N'Hanna', 7, CAST(N'2019-06-03' AS Date), CAST(N'2020-01-03' AS Date), 2, 2, 1, NULL)
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (18, N'Ole', 2, CAST(N'2020-04-07' AS Date), NULL, 6, 2, 1, NULL)
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (19, N'Lisa', 8, CAST(N'2020-03-01' AS Date), CAST(N'2020-07-02' AS Date), 6, 3, 1, NULL)
INSERT [dbo].[tb_Tier] ([TierID], [TierName], [TierAlter], [DatumAnkunft], [DatumAbgabe], [TierKategorieID], [GesundheitID], [GrößeID], [Bemerkung]) VALUES (20, N'Erik', 12, CAST(N'2020-03-12' AS Date), NULL, 9, 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[tb_Tier] OFF
SET IDENTITY_INSERT [dbo].[tb_Tierheim] ON 

INSERT [dbo].[tb_Tierheim] ([TierheimID], [TierheimName], [TierheimStraße], [TierheimHausnummer], [TierheimPLZ], [TierheimOrt], [TierheimTel], [TierheimEmail]) VALUES (1, N'Marienkäfer e.V.', N'Marienstraße', N'67        ', N'75885', N'Marienhausen', N'+59 04949849', N'info@marienkäfer.de')
INSERT [dbo].[tb_Tierheim] ([TierheimID], [TierheimName], [TierheimStraße], [TierheimHausnummer], [TierheimPLZ], [TierheimOrt], [TierheimTel], [TierheimEmail]) VALUES (2, N'Maulwurd e.V.', N'Maulwurfweg', N'1         ', N'75862', N'Maulwurfstadt', N'+6325 5 656546', N'info@maulwurf.de')
INSERT [dbo].[tb_Tierheim] ([TierheimID], [TierheimName], [TierheimStraße], [TierheimHausnummer], [TierheimPLZ], [TierheimOrt], [TierheimTel], [TierheimEmail]) VALUES (3, N'Wuff e.V.', N'Hundestraße', N'7         ', N'56849', N'Hundestadt', N'+32 54646 465', N'info@wuff.de')
INSERT [dbo].[tb_Tierheim] ([TierheimID], [TierheimName], [TierheimStraße], [TierheimHausnummer], [TierheimPLZ], [TierheimOrt], [TierheimTel], [TierheimEmail]) VALUES (4, N'Miau e.V.', N'Katzenweg', N'789       ', N'89652', N'Katzenstadt', N'+46 54646 498', N'info@miau.de')
INSERT [dbo].[tb_Tierheim] ([TierheimID], [TierheimName], [TierheimStraße], [TierheimHausnummer], [TierheimPLZ], [TierheimOrt], [TierheimTel], [TierheimEmail]) VALUES (5, N'Fisch e.V.', N'Wasserweg', N'89        ', N'48946', N'Wasserstadt', N'+21 49841 816', N'info@fisch.de')
SET IDENTITY_INSERT [dbo].[tb_Tierheim] OFF
SET IDENTITY_INSERT [dbo].[tb_TierKategorie] ON 

INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (1, N'Hund')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (2, N'Katze')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (3, N'Maus')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (4, N'Pferd')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (5, N'Kaninchen')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (6, N'Hamster')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (7, N'Meerschweinchen')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (8, N'Vogel')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (9, N'Schildkröte')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (10, N'Reptilie')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (11, N'Fische')
INSERT [dbo].[tb_TierKategorie] ([TierKategorieID], [TierArt]) VALUES (12, N'Sonstiges')
SET IDENTITY_INSERT [dbo].[tb_TierKategorie] OFF
SET IDENTITY_INSERT [dbo].[tb_VerknüpfungKundenTierheim] ON 

INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (1, 1, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (2, 2, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (3, 1, 2)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (4, 1, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (5, 1, 4)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (6, 1, 5)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (7, 2, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (8, 2, 4)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (9, 3, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (10, 3, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (11, 4, 5)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (14, 6, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (15, 7, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (16, 7, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (17, 8, 5)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (18, 8, 4)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (19, 9, 2)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (20, 9, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (21, 10, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (22, 12, 4)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (23, 13, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (24, 13, 4)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (25, 14, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (26, 15, 5)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (27, 16, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (28, 17, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (29, 17, 2)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (30, 18, 2)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (31, 18, 5)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (32, 19, 1)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (33, 19, 2)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (34, 20, 3)
INSERT [dbo].[tb_VerknüpfungKundenTierheim] ([KundenTierheimID], [KundenID], [TierheimID]) VALUES (35, 20, 2)
SET IDENTITY_INSERT [dbo].[tb_VerknüpfungKundenTierheim] OFF
SET IDENTITY_INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ON 

INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (1, 1, 1, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (5, 1, 3, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (6, 1, 4, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (8, 1, 5, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (9, 1, 6, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (11, 2, 1, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (12, 2, 3, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (13, 2, 4, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (15, 4, 1, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (16, 4, 3, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (17, 4, 5, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (18, 4, 6, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (19, 5, 1, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (20, 5, 3, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (21, 5, 6, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (22, 6, 1, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (23, 6, 5, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (26, 8, 1, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (27, 8, 3, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (28, 8, 4, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (29, 9, 7, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (30, 9, 8, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (31, 9, 9, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (32, 10, 7, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (33, 10, 9, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (34, 11, 8, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (35, 11, 7, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (36, 12, 7, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (37, 13, 8, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (38, 14, 10, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (40, 14, 12, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (41, 15, 10, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (42, 16, 10, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (43, 17, 10, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (44, 17, 12, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (45, 18, 13, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (46, 19, 13, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (47, 20, 14, N'aktiv')
INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] ([MitarbeiterTierID], [TierID], [MitarbeiterID], [Status]) VALUES (48, 19, 12, N'aktiv')
SET IDENTITY_INSERT [dbo].[tb_VerknüpfungMitarbeiterTier] OFF
/****** Object:  Index [IX_Untersuchung]    Script Date: 10.12.2020 14:03:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Untersuchung] ON [dbo].[tb_Gesundheit]
(
	[GesundheitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tiergröße]    Script Date: 10.12.2020 14:03:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Tiergröße] ON [dbo].[tb_Größe]
(
	[GrößeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TierArt]    Script Date: 10.12.2020 14:03:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TierArt] ON [dbo].[tb_TierKategorie]
(
	[TierKategorieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_VerknüpfungMitarbeiterTier]    Script Date: 10.12.2020 14:03:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_VerknüpfungMitarbeiterTier] ON [dbo].[tb_VerknüpfungMitarbeiterTier]
(
	[MitarbeiterID] ASC,
	[TierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_Lager] ADD  CONSTRAINT [DF_tb_Lager_Spielzeug]  DEFAULT ((0)) FOR [Spielzeug]
GO
ALTER TABLE [dbo].[tb_Lager] ADD  CONSTRAINT [DF_tb_Lager_Nahrung]  DEFAULT ((0)) FOR [Nahrung]
GO
ALTER TABLE [dbo].[tb_Lager] ADD  CONSTRAINT [DF_tb_Lager_Medikamente]  DEFAULT ((0)) FOR [Medikamente]
GO
ALTER TABLE [dbo].[tb_Tier] ADD  CONSTRAINT [DF_tb_Tier_TierAlter]  DEFAULT ((0)) FOR [TierAlter]
GO
ALTER TABLE [dbo].[tb_Tier] ADD  CONSTRAINT [DF_tb_Tier_DatumAnkunft]  DEFAULT (getdate()) FOR [DatumAnkunft]
GO
ALTER TABLE [dbo].[tb_Tier] ADD  CONSTRAINT [DF_tb_Tier_GesundheitID]  DEFAULT ((1)) FOR [GesundheitID]
GO
ALTER TABLE [dbo].[tb_VerknüpfungMitarbeiterTier] ADD  CONSTRAINT [DF_tb_VerknüpfungMitarbeiterTier_Status_1]  DEFAULT ('aktiv') FOR [Status]
GO
ALTER TABLE [dbo].[tb_Lager]  WITH CHECK ADD  CONSTRAINT [FK_tb_Lager_tb_Tierheim] FOREIGN KEY([TierheimID])
REFERENCES [dbo].[tb_Tierheim] ([TierheimID])
GO
ALTER TABLE [dbo].[tb_Lager] CHECK CONSTRAINT [FK_tb_Lager_tb_Tierheim]
GO
ALTER TABLE [dbo].[tb_Mitarbeiter]  WITH CHECK ADD  CONSTRAINT [FK_tb_Mitarbeiter_tb_Tierheim] FOREIGN KEY([TierheimID])
REFERENCES [dbo].[tb_Tierheim] ([TierheimID])
GO
ALTER TABLE [dbo].[tb_Mitarbeiter] CHECK CONSTRAINT [FK_tb_Mitarbeiter_tb_Tierheim]
GO
ALTER TABLE [dbo].[tb_Tier]  WITH CHECK ADD  CONSTRAINT [FK_tb_Tier_tb_Gesundheit] FOREIGN KEY([GesundheitID])
REFERENCES [dbo].[tb_Gesundheit] ([GesundheitsID])
GO
ALTER TABLE [dbo].[tb_Tier] CHECK CONSTRAINT [FK_tb_Tier_tb_Gesundheit]
GO
ALTER TABLE [dbo].[tb_Tier]  WITH CHECK ADD  CONSTRAINT [FK_tb_Tier_tb_Größe] FOREIGN KEY([GrößeID])
REFERENCES [dbo].[tb_Größe] ([GrößeID])
GO
ALTER TABLE [dbo].[tb_Tier] CHECK CONSTRAINT [FK_tb_Tier_tb_Größe]
GO
ALTER TABLE [dbo].[tb_Tier]  WITH CHECK ADD  CONSTRAINT [FK_tb_Tier_tb_TierKategorie] FOREIGN KEY([TierKategorieID])
REFERENCES [dbo].[tb_TierKategorie] ([TierKategorieID])
GO
ALTER TABLE [dbo].[tb_Tier] CHECK CONSTRAINT [FK_tb_Tier_tb_TierKategorie]
GO
ALTER TABLE [dbo].[tb_VerknüpfungKundenTierheim]  WITH CHECK ADD  CONSTRAINT [FK_tb_VerknüpfungKundenTierheim_tb_Kunden1] FOREIGN KEY([KundenID])
REFERENCES [dbo].[tb_Kunden] ([KundenID])
GO
ALTER TABLE [dbo].[tb_VerknüpfungKundenTierheim] CHECK CONSTRAINT [FK_tb_VerknüpfungKundenTierheim_tb_Kunden1]
GO
ALTER TABLE [dbo].[tb_VerknüpfungKundenTierheim]  WITH CHECK ADD  CONSTRAINT [FK_tb_VerknüpfungKundenTierheim_tb_Tierheim] FOREIGN KEY([TierheimID])
REFERENCES [dbo].[tb_Tierheim] ([TierheimID])
GO
ALTER TABLE [dbo].[tb_VerknüpfungKundenTierheim] CHECK CONSTRAINT [FK_tb_VerknüpfungKundenTierheim_tb_Tierheim]
GO
ALTER TABLE [dbo].[tb_VerknüpfungMitarbeiterTier]  WITH CHECK ADD  CONSTRAINT [FK_tb_VerknüpfungMitarbeiterTier_tb_Mitarbeiter] FOREIGN KEY([MitarbeiterID])
REFERENCES [dbo].[tb_Mitarbeiter] ([MitarbeiterID])
GO
ALTER TABLE [dbo].[tb_VerknüpfungMitarbeiterTier] CHECK CONSTRAINT [FK_tb_VerknüpfungMitarbeiterTier_tb_Mitarbeiter]
GO
ALTER TABLE [dbo].[tb_VerknüpfungMitarbeiterTier]  WITH CHECK ADD  CONSTRAINT [FK_tb_VerknüpfungMitarbeiterTier_tb_Tier] FOREIGN KEY([TierID])
REFERENCES [dbo].[tb_Tier] ([TierID])
GO
ALTER TABLE [dbo].[tb_VerknüpfungMitarbeiterTier] CHECK CONSTRAINT [FK_tb_VerknüpfungMitarbeiterTier_tb_Tier]
GO
ALTER TABLE [dbo].[tb_Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_PLZ] CHECK  (([KundenPLZ] like '[0-9][0-9][0-9][0-9][0-9]' OR [KundenPLZ] IS NULL))
GO
ALTER TABLE [dbo].[tb_Kunden] CHECK CONSTRAINT [CK_Kunden_PLZ]
GO
ALTER TABLE [dbo].[tb_Lager]  WITH CHECK ADD  CONSTRAINT [CK_Lager_MedikamenteNichtNegativ] CHECK  (([Medikamente]>=(0)))
GO
ALTER TABLE [dbo].[tb_Lager] CHECK CONSTRAINT [CK_Lager_MedikamenteNichtNegativ]
GO
ALTER TABLE [dbo].[tb_Lager]  WITH CHECK ADD  CONSTRAINT [CK_Lager_NahrungNichtNegativ] CHECK  (([Nahrung]>=(0)))
GO
ALTER TABLE [dbo].[tb_Lager] CHECK CONSTRAINT [CK_Lager_NahrungNichtNegativ]
GO
ALTER TABLE [dbo].[tb_Lager]  WITH CHECK ADD  CONSTRAINT [CK_Lager_SpielzeugNichtNegativ] CHECK  (([Spielzeug]>=(0)))
GO
ALTER TABLE [dbo].[tb_Lager] CHECK CONSTRAINT [CK_Lager_SpielzeugNichtNegativ]
GO
ALTER TABLE [dbo].[tb_Mitarbeiter]  WITH CHECK ADD  CONSTRAINT [CK_Mitarbeiter_PLZ] CHECK  (([MitarbeiterPLZ] like '[0-9][0-9][0-9][0-9][0-9]' OR [MitarbeiterPLZ] IS NULL))
GO
ALTER TABLE [dbo].[tb_Mitarbeiter] CHECK CONSTRAINT [CK_Mitarbeiter_PLZ]
GO
ALTER TABLE [dbo].[tb_Tier]  WITH CHECK ADD  CONSTRAINT [CK_Tier_Abgabe] CHECK  (([DatumAbgabe]>=[DatumAnkunft]))
GO
ALTER TABLE [dbo].[tb_Tier] CHECK CONSTRAINT [CK_Tier_Abgabe]
GO
ALTER TABLE [dbo].[tb_Tier]  WITH CHECK ADD  CONSTRAINT [CK_Tier_Ankunft] CHECK  (([DatumAnkunft]<=getdate()))
GO
ALTER TABLE [dbo].[tb_Tier] CHECK CONSTRAINT [CK_Tier_Ankunft]
GO
ALTER TABLE [dbo].[tb_Tierheim]  WITH CHECK ADD  CONSTRAINT [CK_Tierheim_PLZ] CHECK  (([TierheimPLZ] like '[0-9][0-9][0-9][0-9][0-9]' OR [TierheimPLZ] IS NULL))
GO
ALTER TABLE [dbo].[tb_Tierheim] CHECK CONSTRAINT [CK_Tierheim_PLZ]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddVerknüpfungMitarbeiterTier]    Script Date: 10.12.2020 14:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	die Prozedur soll Eingangsparameter prüfen 
-- und Daten in Tabelle 'Projektzuordnung' hinzufügen
-- =============================================
CREATE   PROCEDURE [dbo].[sp_AddVerknüpfungMitarbeiterTier]
	@MitarbeiterID smallint,
	@TierID int,
	-----
	@Erfolg bit OUTPUT, -- geklappt oder nicht
	@Feedback VARCHAR(MAX) OUTPUT -- Fehlermeldungen etc.
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @CheckResult AS int;		
	-------------------------------------------------------------------	

	BEGIN TRY

	SET @Erfolg = 1;
	SET @Feedback ='Alles OK!';

	-- Überprüfung, ob Mitarbeiter Tierpfleger ist
	SET @CheckResult = [dbo].[sf_IstMitarbeiterTierpfleger](@MitarbeiterID);
	IF @CheckResult IS NULL
		THROW 50001, 'MitarbeiterID ist falsch, bitte korrigieren!', 1;
	IF @CheckResult = 0
		THROW 50002, 'Mitarbeiter ist kein Tierpfleger. Wählen sie bitte einen anderen Mitarbeiter aus', 1;

	INSERT INTO [dbo].[tb_VerknüpfungMitarbeiterTier] (MitarbeiterID, TierID)
										VALUES (@MitarbeiterID, @TierID);

	END TRY

	
	BEGIN CATCH
		SET @Erfolg = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			'Fehler Nr. ' 
			+ CONVERT(varchar, ERROR_NUMBER()) 
			+ ' ' 
			+ ERROR_MESSAGE();
	END CATCH;    
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_AddVerknüpfungMitarbeiterTier] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[tr_StatusUPDATE]    Script Date: 10.12.2020 14:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   TRIGGER [dbo].[tr_StatusUPDATE]  
   ON [dbo].[tb_Tier] 
   FOR UPDATE

AS 
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @GefundeneTierID int;
	DECLARE @GefundenesDatumAbgabe date;

	
	SET @GefundeneTierID =
	(SELECT TierID
	FROM INSERTED)

	SET @GefundenesDatumAbgabe =
	(SELECT DatumAbgabe
	FROM INSERTED)
	
	IF @GefundenesDatumAbgabe IS NOT NULL
		BEGIN
			UPDATE tb_VerknüpfungMitarbeiterTier
			SET Status = 'inaktiv'
			WHERE TierID = @GefundeneTierID
		END
	ELSE 
		BEGIN
			UPDATE tb_VerknüpfungMitarbeiterTier
			SET Status = 'aktiv'
			WHERE TierID = @GefundeneTierID
		END

END
GO
ALTER TABLE [dbo].[tb_Tier] ENABLE TRIGGER [tr_StatusUPDATE]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Tierheim"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Mitarbeiter"
            Begin Extent = 
               Top = 6
               Left = 284
               Bottom = 136
               Right = 504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierheim'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierheim'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[19] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Tier"
            Begin Extent = 
               Top = 10
               Left = 722
               Bottom = 223
               Right = 889
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Gesundheit"
            Begin Extent = 
               Top = 102
               Left = 131
               Bottom = 198
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Größe"
            Begin Extent = 
               Top = 223
               Left = 199
               Bottom = 319
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_TierKategorie"
            Begin Extent = 
               Top = 2
               Left = 341
               Bottom = 98
               Right = 510
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Mitarbeiter"
            Begin Extent = 
               Top = 143
               Left = 910
               Bottom = 369
               Right = 1137
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_VerknüpfungMitarbeiterTier"
            Begin Extent = 
               Top = 29
               Left = 1160
               Bottom = 142
               Right = 1337
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Tierheim"
            Begin Extent = 
               Top = 236
               Left = 586
               Bottom = 366
               Right =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflege'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 794
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflege'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflege'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[21] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Tier"
            Begin Extent = 
               Top = 16
               Left = 647
               Bottom = 146
               Right = 816
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Gesundheit"
            Begin Extent = 
               Top = 116
               Left = 249
               Bottom = 212
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Größe"
            Begin Extent = 
               Top = 243
               Left = 282
               Bottom = 339
               Right = 449
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_TierKategorie"
            Begin Extent = 
               Top = 13
               Left = 70
               Bottom = 109
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_VerknüpfungMitarbeiterTier"
            Begin Extent = 
               Top = 0
               Left = 1135
               Bottom = 113
               Right = 1312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Mitarbeiter"
            Begin Extent = 
               Top = 179
               Left = 880
               Bottom = 309
               Right = 1100
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Tierheim"
            Begin Extent = 
               Top = 242
               Left = 599
               Bottom = 372
               Right =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflegeErweiterung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 807
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflegeErweiterung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflegeErweiterung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[24] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Tierheim"
            Begin Extent = 
               Top = 134
               Left = 508
               Bottom = 264
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Mitarbeiter"
            Begin Extent = 
               Top = 75
               Left = 1068
               Bottom = 205
               Right = 1288
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Tier"
            Begin Extent = 
               Top = 6
               Left = 284
               Bottom = 136
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_VerknüpfungMitarbeiterTier"
            Begin Extent = 
               Top = 13
               Left = 784
               Bottom = 126
               Right = 961
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_TierKategorie"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Co' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflegeErweiterungZWEI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'lumn = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflegeErweiterungZWEI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MitarbeiterTierPflegeErweiterungZWEI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[16] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Tier"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 297
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2040
         Table = 1170
         Output = 1710
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3465
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Tier2020'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Tier2020'
GO
USE [master]
GO
ALTER DATABASE [Tierheim_Abschlussprojekt] SET  READ_WRITE 
GO
