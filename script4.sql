USE [Bar]
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento5]    Script Date: 20/10/2018 1:58:49 ******/
DROP PROCEDURE [dbo].[Miprocedimiento5]
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento4]    Script Date: 20/10/2018 1:58:49 ******/
DROP PROCEDURE [dbo].[Miprocedimiento4]
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento3]    Script Date: 20/10/2018 1:58:49 ******/
DROP PROCEDURE [dbo].[Miprocedimiento3]
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento2]    Script Date: 20/10/2018 1:58:49 ******/
DROP PROCEDURE [dbo].[Miprocedimiento2]
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento]    Script Date: 20/10/2018 1:58:49 ******/
DROP PROCEDURE [dbo].[Miprocedimiento]
GO
/****** Object:  Table [dbo].[MenuDeComida]    Script Date: 20/10/2018 1:58:49 ******/
DROP TABLE [dbo].[MenuDeComida]
GO
/****** Object:  Table [dbo].[MenuDeBebidas]    Script Date: 20/10/2018 1:58:49 ******/
DROP TABLE [dbo].[MenuDeBebidas]
GO
/****** Object:  Table [dbo].[Informacion]    Script Date: 20/10/2018 1:58:49 ******/
DROP TABLE [dbo].[Informacion]
GO
/****** Object:  Table [dbo].[Botana]    Script Date: 20/10/2018 1:58:49 ******/
DROP TABLE [dbo].[Botana]
GO
/****** Object:  Table [dbo].[BebidasGeneral]    Script Date: 20/10/2018 1:58:49 ******/
DROP TABLE [dbo].[BebidasGeneral]
GO
/****** Object:  Table [dbo].[BebidasAlcoholicas]    Script Date: 20/10/2018 1:58:49 ******/
DROP TABLE [dbo].[BebidasAlcoholicas]
GO
/****** Object:  UserDefinedFunction [dbo].[Propna]    Script Date: 20/10/2018 1:58:49 ******/
DROP FUNCTION [dbo].[Propna]
GO
/****** Object:  UserDefinedFunction [dbo].[Propina]    Script Date: 20/10/2018 1:58:49 ******/
DROP FUNCTION [dbo].[Propina]
GO
USE [master]
GO
/****** Object:  Database [Bar]    Script Date: 20/10/2018 1:58:49 ******/
DROP DATABASE [Bar]
GO
/****** Object:  Database [Bar]    Script Date: 20/10/2018 1:58:49 ******/
CREATE DATABASE [Bar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Bar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Bar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Bar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Bar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bar] SET  MULTI_USER 
GO
ALTER DATABASE [Bar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bar] SET QUERY_STORE = OFF
GO
USE [Bar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Bar]
GO
/****** Object:  UserDefinedFunction [dbo].[Propina]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Propina] (@CostoXplatillo int) returns int as begin 
	declare @resultado int
	set @resultado = (@CostoXplatillo*.10)
	return @resultado
end
GO
/****** Object:  UserDefinedFunction [dbo].[Propna]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Propna] (@CostoXplatillo int) returns int as begin 
	declare @resultado int
	set @resultado = (@CostoXplatillo*.10)
	return @resultado
end
GO
/****** Object:  Table [dbo].[BebidasAlcoholicas]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BebidasAlcoholicas](
	[id_BebidasAlcoholicas] [int] NOT NULL,
	[Costo] [money] NOT NULL,
	[TipoDeBebida] [text] NOT NULL,
 CONSTRAINT [PK_BebidasAlcoholicas] PRIMARY KEY CLUSTERED 
(
	[id_BebidasAlcoholicas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BebidasGeneral]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BebidasGeneral](
	[id_BebidasGeneral] [int] IDENTITY(2,1) NOT NULL,
	[HorarioDeLaBebidas] [date] NOT NULL,
	[TipoDeBebida] [text] NULL,
 CONSTRAINT [PK_Bebidas general] PRIMARY KEY CLUSTERED 
(
	[id_BebidasGeneral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Botana]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Botana](
	[id_Botana] [int] NOT NULL,
	[NombreDeLaBotana] [text] NOT NULL,
	[Costo] [money] NOT NULL,
 CONSTRAINT [PK_Botana] PRIMARY KEY CLUSTERED 
(
	[id_Botana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion](
	[id_Informacion] [int] NOT NULL,
	[NombreEmpleados] [text] NOT NULL,
	[NombreClientes] [text] NOT NULL,
	[SillasXmesa] [int] NOT NULL,
	[MesasDisponibles] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuDeBebidas]    Script Date: 20/10/2018 1:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuDeBebidas](
	[id_MenuDeBebidas] [int] NOT NULL,
	[MenuDeBebidas] [text] NOT NULL,
	[Costo] [money] NOT NULL,
	[id_BebidasAlcoholicas] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuDeComida]    Script Date: 20/10/2018 1:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuDeComida](
	[id_MenuDeComida] [int] NOT NULL,
	[FotoDePlatillo] [image] NULL,
	[NombreComida] [text] NOT NULL,
	[CostoXplatillo] [money] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (1, 56.0000, N'Cerveza Light')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (2, 30.0000, N'Mojito Cubano')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (3, 60.0000, N'Margarita')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (4, 45.0000, N'Piña Colada')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (5, 45.0000, N'Agua de valencia')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (6, 45.0000, N'Sex On the beach')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (7, 45.0000, N'Daiquiri de fresa')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (8, 45.0000, N'Tequila Sunrise')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (9, 45.0000, N'Daiquiri')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (10, 45.0000, N'Blue Lagoon')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (11, 45.0000, N'Martini')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (12, 60.0000, N'Cosmopolitan')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (13, 45.0000, N'Cucaracha')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (14, 45.0000, N'Coco Loco')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (15, 45.0000, N'Pantera Rosa')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (16, 45.0000, N'San Francisco')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (17, 45.0000, N'Submarino')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (18, 45.0000, N'Bloddy Mary')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (19, 45.0000, N'Ruso Blanco')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (20, 65.0000, N'Manhattan')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (21, 25.0000, N'michelada')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (22, 25.0000, N'Beso de angel')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (23, 16.0000, N'Brandy Alexander')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (24, 75.0000, N'Zombie')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (25, 39.0000, N'Mai Tai')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (26, 87.0000, N'Ruso Negro')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (27, 57.0000, N'Tom Collins')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (28, 76.0000, N'Vampiro')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (29, 98.0000, N'Paris de noche')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (30, 42.0000, N'Medias de Seda')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (31, 25.0000, N'Sombrero')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (32, 25.0000, N'Paloma')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (33, 16.0000, N'Alfonso XIII')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (34, 75.0000, N'Coconut Tequila')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (35, 39.0000, N'Bull')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (37, 57.0000, N'Bahama Mama')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (38, 76.0000, N'Cerveza de Nieve')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (39, 98.0000, N'Frozen Coconut')
INSERT [dbo].[BebidasAlcoholicas] ([id_BebidasAlcoholicas], [Costo], [TipoDeBebida]) VALUES (40, 42.0000, N'Cocktail Spicy Margarita')
SET IDENTITY_INSERT [dbo].[BebidasGeneral] ON 

INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (2, CAST(N'2018-10-04' AS Date), N'Limonada')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (3, CAST(N'2018-06-04' AS Date), N'Limonada')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (4, CAST(N'2018-05-04' AS Date), N'Mangonada')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (5, CAST(N'2018-01-04' AS Date), N'CocaCola')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (6, CAST(N'2018-02-04' AS Date), N'Pepsi')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (7, CAST(N'2018-07-04' AS Date), N'Manzanita')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (8, CAST(N'2018-11-04' AS Date), N'Dr pepper')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (9, CAST(N'2018-12-04' AS Date), N'red')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (10, CAST(N'2015-04-04' AS Date), N'Limon')
INSERT [dbo].[BebidasGeneral] ([id_BebidasGeneral], [HorarioDeLaBebidas], [TipoDeBebida]) VALUES (11, CAST(N'2013-10-04' AS Date), N'xd')
SET IDENTITY_INSERT [dbo].[BebidasGeneral] OFF
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (1, N'Churrumais', 60.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (2, N'Ruffles', 13.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (3, N'Doritos', 46.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (4, N'Tostitos', 20.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (5, N'Takis', 12.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (6, N'Papirringas', 13.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (7, N'Helado', 60.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (8, N'Esquimal', 65.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (9, N'Tostileo', 55.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (11, N'Emperador', 30.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (12, N'Runners', 8.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (13, N'Packetaxo', 15.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (14, N'Cacahuates', 14.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (15, N'Semillitas', 20.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (16, N'Pizzadog', 21.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (17, N'Fruta', 47.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (18, N'Mamuts', 5.0000)
INSERT [dbo].[Botana] ([id_Botana], [NombreDeLaBotana], [Costo]) VALUES (19, N'Pastel', 45.0000)
INSERT [dbo].[Informacion] ([id_Informacion], [NombreEmpleados], [NombreClientes], [SillasXmesa], [MesasDisponibles]) VALUES (1, N'Juan', N'jose', 4, 4)
INSERT [dbo].[Informacion] ([id_Informacion], [NombreEmpleados], [NombreClientes], [SillasXmesa], [MesasDisponibles]) VALUES (1, N'Juan', N'jose', 4, 4)
INSERT [dbo].[Informacion] ([id_Informacion], [NombreEmpleados], [NombreClientes], [SillasXmesa], [MesasDisponibles]) VALUES (2, N'Jose', N'jose', 3, 4)
INSERT [dbo].[Informacion] ([id_Informacion], [NombreEmpleados], [NombreClientes], [SillasXmesa], [MesasDisponibles]) VALUES (3, N'Lucas', N'Lobos', 2, 4)
INSERT [dbo].[Informacion] ([id_Informacion], [NombreEmpleados], [NombreClientes], [SillasXmesa], [MesasDisponibles]) VALUES (4, N'Andre', N'Gignac', 1, 4)
INSERT [dbo].[MenuDeBebidas] ([id_MenuDeBebidas], [MenuDeBebidas], [Costo], [id_BebidasAlcoholicas]) VALUES (1, N'Agua', 23.0000, 1)
INSERT [dbo].[MenuDeBebidas] ([id_MenuDeBebidas], [MenuDeBebidas], [Costo], [id_BebidasAlcoholicas]) VALUES (2, N'Sodas', 33.0000, 2)
INSERT [dbo].[MenuDeBebidas] ([id_MenuDeBebidas], [MenuDeBebidas], [Costo], [id_BebidasAlcoholicas]) VALUES (3, N'Cerveza', 50.0000, 3)
INSERT [dbo].[MenuDeBebidas] ([id_MenuDeBebidas], [MenuDeBebidas], [Costo], [id_BebidasAlcoholicas]) VALUES (4, N'Vodka', 65.0000, 4)
INSERT [dbo].[MenuDeBebidas] ([id_MenuDeBebidas], [MenuDeBebidas], [Costo], [id_BebidasAlcoholicas]) VALUES (5, N'Ron', 70.0000, 5)
INSERT [dbo].[MenuDeBebidas] ([id_MenuDeBebidas], [MenuDeBebidas], [Costo], [id_BebidasAlcoholicas]) VALUES (6, N'Agua Mineral', 30.0000, 5)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (1, NULL, N'Picadillo', 44.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (2, NULL, N'Hamburgesa', 80.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (3, NULL, N'Buffalo Fries', 130.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (4, NULL, N'Tacos De trompo', 68.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (5, NULL, N'Tacos De pastor', 40.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (7, NULL, N'Chilaquiles', 50.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (8, NULL, N'Costillas', 100.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (9, NULL, N'Carne asada', 70.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (10, NULL, N'Dedos de queso', 54.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (11, NULL, N'Campechana', 50.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (12, NULL, N'Gringa', 55.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (13, NULL, N'Western Bacon', 65.0000)
INSERT [dbo].[MenuDeComida] ([id_MenuDeComida], [FotoDePlatillo], [NombreComida], [CostoXplatillo]) VALUES (14, NULL, N'Tostada Siberia', 20.0000)
/****** Object:  StoredProcedure [dbo].[Miprocedimiento]    Script Date: 20/10/2018 1:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Miprocedimiento](
@letra nvarchar (100)
)
as
begin 
	select *from Botana
	where Costo like '%' + @letra +'%'

end

exec Miprocedimiento @letra ='O'
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento2]    Script Date: 20/10/2018 1:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Miprocedimiento2](
@letra varchar (100)
)
as
begin 
	select *from BebidasAlcoholicas
	where TipoDeBebida like '%' + @letra +'%'

end
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento3]    Script Date: 20/10/2018 1:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Miprocedimiento3](
@letra varchar (100)
)
as
begin 
	select *from BebidasGeneral
	where TipoDeBebida like '%' + @letra +'%'

end

exec Miprocedimiento3 @letra ='X'
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento4]    Script Date: 20/10/2018 1:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Miprocedimiento4](
@letra varchar (100)
)
as
begin 
	select *from MenuDeComida
	where NombreComida like '%' + @letra +'%'

end

exec Miprocedimiento4 @letra ='D'
GO
/****** Object:  StoredProcedure [dbo].[Miprocedimiento5]    Script Date: 20/10/2018 1:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Miprocedimiento5](
@letra varchar (100)
)
as
begin 
	select *from MenuDeBebidas
	where MenuDeBebidas like '%' + @letra +'%'

end

exec Miprocedimiento5 @letra ='P'
GO
USE [master]
GO
ALTER DATABASE [Bar] SET  READ_WRITE 
GO
