USE [master]
GO
/****** Object:  Database [GamingHouse]    Script Date: 15/10/2016 17:11:11 ******/
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
/****** Object:  Table [dbo].[Cargo]    Script Date: 15/10/2016 17:11:11 ******/
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
/****** Object:  Table [dbo].[Cidade]    Script Date: 15/10/2016 17:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cidade](
	[idCidade] [int] IDENTITY(1,1) NOT NULL,
	[Cidade] [varchar](35) NOT NULL,
	[Estado_id] [int] NULL,
 CONSTRAINT [PK_Cidade] PRIMARY KEY CLUSTERED 
(
	[idCidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/10/2016 17:11:11 ******/
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
	[Senha] [varchar](35) NULL,
	[Endereco_id] [int] NULL,
	[Venda_id] [int] NULL,
 CONSTRAINT [PK_Clinete] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 15/10/2016 17:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Endereco](
	[idEndereco] [int] IDENTITY(1,1) NOT NULL,
	[Rua] [varchar](50) NOT NULL,
	[Numero] [int] NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[Cidade_id] [int] NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[idEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 15/10/2016 17:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](35) NULL,
	[UF] [varchar](2) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estoque]    Script Date: 15/10/2016 17:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estoque](
	[idEstoque] [int] IDENTITY(1,1) NOT NULL,
	[Entrada] [int] NOT NULL,
	[Fornecedor_id] [int] NULL,
 CONSTRAINT [PK_Estoque] PRIMARY KEY CLUSTERED 
(
	[idEstoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 15/10/2016 17:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[idFornecedor] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Funcionario]    Script Date: 15/10/2016 17:11:11 ******/
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
	[Endereco_id] [int] NULL,
	[Venda_id] [int] NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[idFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 15/10/2016 17:11:11 ******/
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
/****** Object:  Table [dbo].[Venda]    Script Date: 15/10/2016 17:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[idVenda] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [numeric](12, 2) NULL,
	[Quantidade] [int] NULL,
	[Produto_id] [int] NULL,
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
SET IDENTITY_INSERT [dbo].[Cidade] ON 

INSERT [dbo].[Cidade] ([idCidade], [Cidade], [Estado_id]) VALUES (1, N'Assis', 26)
SET IDENTITY_INSERT [dbo].[Cidade] OFF
SET IDENTITY_INSERT [dbo].[Estado] ON 

INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (1, N'Acre', N'AC')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (2, N'Alagoas', N'AL')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (3, N'Amazonas', N'AM')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (4, N'Amapá', N'AP')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (5, N'Bahia', N'BA')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (6, N'Ceará', N'CE')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (7, N'Distrito Federal', N'DF')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (8, N'Espírito Santo', N'ES')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (9, N'Goiás', N'GO')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (10, N'Maranhão', N'MA')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (11, N'Minas Gerais', N'MG')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (12, N'Mato Grosso do Sul', N'MS')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (13, N'Mato Grosso', N'MT')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (14, N'Pará', N'PA')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (15, N'Paraíba', N'PB')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (16, N'Pernambuco', N'PE')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (17, N'Piauí', N'PI')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (18, N'Paraná', N'PR')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (19, N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (20, N'Rio Grande do Norte', N'RN')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (21, N'Rondônia', N'RO')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (22, N'Roraima', N'RR')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (23, N'Rio Grande do Sul', N'RS')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (24, N'Santa Catarina', N'SC')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (25, N'Sergipe', N'SE')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (26, N'São Paulo', N'SP')
INSERT [dbo].[Estado] ([idEstado], [Estado], [UF]) VALUES (27, N'Tocantins', N'TO')
SET IDENTITY_INSERT [dbo].[Estado] OFF
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [FK_Cidade_Estado] FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [FK_Cidade_Estado]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Endereco] FOREIGN KEY([Endereco_id])
REFERENCES [dbo].[Endereco] ([idEndereco])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Endereco]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Venda] FOREIGN KEY([Venda_id])
REFERENCES [dbo].[Venda] ([idVenda])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Venda]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Cidade] FOREIGN KEY([Cidade_id])
REFERENCES [dbo].[Cidade] ([idCidade])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_Cidade]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_Fornecedor] FOREIGN KEY([Fornecedor_id])
REFERENCES [dbo].[Fornecedor] ([idFornecedor])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_Fornecedor]
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Cargo] FOREIGN KEY([Cargo_id])
REFERENCES [dbo].[Cargo] ([idCargo])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Cargo]
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Endereco] FOREIGN KEY([Endereco_id])
REFERENCES [dbo].[Endereco] ([idEndereco])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Endereco]
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Venda] FOREIGN KEY([Venda_id])
REFERENCES [dbo].[Venda] ([idVenda])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Venda]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Estoque] FOREIGN KEY([Estoque_id])
REFERENCES [dbo].[Estoque] ([idEstoque])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Estoque]
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
