USE [master]
GO
/****** Object:  Database [GamingHouse]    Script Date: 18/10/2016 16:59:28 ******/
CREATE DATABASE [GamingHouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GamingHouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GamingHouse.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GamingHouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GamingHouse_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GamingHouse] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GamingHouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GamingHouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GamingHouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GamingHouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GamingHouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GamingHouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [GamingHouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GamingHouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GamingHouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GamingHouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GamingHouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GamingHouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GamingHouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GamingHouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GamingHouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GamingHouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GamingHouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GamingHouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GamingHouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GamingHouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GamingHouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GamingHouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GamingHouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GamingHouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GamingHouse] SET  MULTI_USER 
GO
ALTER DATABASE [GamingHouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GamingHouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GamingHouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GamingHouse] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GamingHouse] SET DELAYED_DURABILITY = DISABLED 
GO
USE [GamingHouse]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargo](
	[idCargo] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [varchar](35) NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[RG] [varchar](9) NULL,
	[CPF] [varchar](13) NULL,
	[Nascimento] [date] NULL,
	[Login] [varchar](35) NULL,
	[Senha] [varchar](35) NOT NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Clinete] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estoque]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estoque](
	[idEstoque] [int] IDENTITY(1,1) NOT NULL,
	[Entrada] [int] NOT NULL,
	[Fornecedor_id] [int] NULL,
	[Produto_id] [int] NULL,
 CONSTRAINT [PK_Estoque] PRIMARY KEY CLUSTERED 
(
	[idEstoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[idFornecedor] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](35) NULL,
	[CNPJ] [varchar](13) NOT NULL,
 CONSTRAINT [PK_Fornecedor] PRIMARY KEY CLUSTERED 
(
	[idFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[idFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[RG] [varchar](9) NULL,
	[CPF] [varchar](13) NULL,
	[Nascimento] [date] NULL,
	[Login] [varchar](35) NULL,
	[Senha] [varchar](35) NULL,
	[Cargo_id] [int] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[idFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[idProduto] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Valor] [numeric](6, 2) NULL,
	[Quantidade] [int] NULL,
	[Tipo] [int] NULL,
	[Estoque_id] [int] NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 18/10/2016 16:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[idVenda] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [numeric](12, 2) NULL,
	[Quantidade] [int] NULL,
	[Cliente_id] [int] NOT NULL,
	[Produto_id] [int] NOT NULL,
 CONSTRAINT [PK_Venda] PRIMARY KEY CLUSTERED 
(
	[idVenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([idCargo], [Cargo]) VALUES (1, N'ADM')
INSERT [dbo].[Cargo] ([idCargo], [Cargo]) VALUES (2, N'Funcionário')
INSERT [dbo].[Cargo] ([idCargo], [Cargo]) VALUES (3, N'Cliente')
SET IDENTITY_INSERT [dbo].[Cargo] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idCliente], [Nome], [RG], [CPF], [Nascimento], [Login], [Senha], [Email]) VALUES (6, N'Teste', N'111111111', N'111111111', CAST(N'1999-11-11' AS Date), N'Test', N'test', N'teste@testando.test')
INSERT [dbo].[Cliente] ([idCliente], [Nome], [RG], [CPF], [Nascimento], [Login], [Senha], [Email]) VALUES (7, N'Thales', N'381010101', N'1010101010111', CAST(N'1996-02-13' AS Date), N'Thales', N'123', N'thalesriparipa@ripa.com')
INSERT [dbo].[Cliente] ([idCliente], [Nome], [RG], [CPF], [Nascimento], [Login], [Senha], [Email]) VALUES (10, N'Thales', N'38242837', N'46132070885', CAST(N'1996-02-13' AS Date), N'thalesripa', N'123456', N'thalesripa@hotmail.com')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Estoque] ON 

INSERT [dbo].[Estoque] ([idEstoque], [Entrada], [Fornecedor_id], [Produto_id]) VALUES (1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Estoque] OFF
SET IDENTITY_INSERT [dbo].[Fornecedor] ON 

INSERT [dbo].[Fornecedor] ([idFornecedor], [Nome], [CNPJ]) VALUES (1, N'STEAM', N'1234567891011')
SET IDENTITY_INSERT [dbo].[Fornecedor] OFF
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([idFuncionario], [Nome], [RG], [CPF], [Nascimento], [Login], [Senha], [Cargo_id], [Email]) VALUES (5, N'Administrador', N'', N'', CAST(N'1900-01-01' AS Date), N'Admin', N'admin', 1, N'admin@adminmail.com')
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([idProduto], [Nome], [Valor], [Quantidade], [Tipo], [Estoque_id]) VALUES (2, N'CS:GO', CAST(50.00 AS Numeric(6, 2)), 10, 1, 1)
INSERT [dbo].[Produto] ([idProduto], [Nome], [Valor], [Quantidade], [Tipo], [Estoque_id]) VALUES (3, N'OVERWATCH', CAST(120.00 AS Numeric(6, 2)), 15, 1, 1)
INSERT [dbo].[Produto] ([idProduto], [Nome], [Valor], [Quantidade], [Tipo], [Estoque_id]) VALUES (4, N'LEAGUE OF LEGENDS', CAST(29.90 AS Numeric(6, 2)), 5, 1, 1)
INSERT [dbo].[Produto] ([idProduto], [Nome], [Valor], [Quantidade], [Tipo], [Estoque_id]) VALUES (5, N'BATTLEFIELD', CAST(80.00 AS Numeric(6, 2)), 10, 1, 1)
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Venda] ON 

INSERT [dbo].[Venda] ([idVenda], [Valor], [Quantidade], [Cliente_id], [Produto_id]) VALUES (5, CAST(150.00 AS Numeric(12, 2)), 3, 6, 2)
INSERT [dbo].[Venda] ([idVenda], [Valor], [Quantidade], [Cliente_id], [Produto_id]) VALUES (6, CAST(50.00 AS Numeric(12, 2)), 1, 6, 2)
INSERT [dbo].[Venda] ([idVenda], [Valor], [Quantidade], [Cliente_id], [Produto_id]) VALUES (7, CAST(240.00 AS Numeric(12, 2)), 2, 6, 3)
SET IDENTITY_INSERT [dbo].[Venda] OFF
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_Fornecedor] FOREIGN KEY([Fornecedor_id])
REFERENCES [dbo].[Fornecedor] ([idFornecedor])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_Fornecedor]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_Produto] FOREIGN KEY([Produto_id])
REFERENCES [dbo].[Produto] ([idProduto])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_Produto]
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Cargo] FOREIGN KEY([Cargo_id])
REFERENCES [dbo].[Cargo] ([idCargo])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Cargo]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Estoque] FOREIGN KEY([Estoque_id])
REFERENCES [dbo].[Estoque] ([idEstoque])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Estoque]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([Cliente_id])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Produto] FOREIGN KEY([Produto_id])
REFERENCES [dbo].[Produto] ([idProduto])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Produto]
GO
USE [master]
GO
ALTER DATABASE [GamingHouse] SET  READ_WRITE 
GO
