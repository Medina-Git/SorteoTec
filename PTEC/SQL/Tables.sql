USE [Tec]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/04/2023 02:34:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellido1] [varchar](50) NULL,
	[apellido2] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
	[categoria] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comercial]    Script Date: 27/04/2023 02:34:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comercial](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellido1] [varchar](50) NULL,
	[apellido2] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
	[comision] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 27/04/2023 02:34:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[id] [int] NULL,
	[cantidad] [decimal](8, 2) NULL,
	[fecha] [date] NULL,
	[id_cliente] [int] NULL,
	[id_comercial] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (1, N'Aarón', N'Rivero', N'Gómez', N'Almería', 100)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (2, N'Adela', N'Salas', N'Díaz', N'Granada', 200)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (3, N'Adolfo', N'Rubio', N'Flores', N'Sevilla', NULL)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (4, N'Adrián', N'Suárez', NULL, N'Jaén', 300)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (5, N'Marcos', N'Loyola', N'Méndez', N'Almería', 200)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (6, N'María', N'Santana', N'Moreno', N'Cádiz', 100)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (7, N'Pilar', N'Ruiz', NULL, N'Sevilla', 300)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (8, N'Pepe', N'Ruiz', N'Santana', N'Huelva', 200)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (9, N'Guillermo', N'López', N'Gómez', N'Granada', 225)
INSERT [dbo].[Cliente] ([id], [nombre], [apellido1], [apellido2], [ciudad], [categoria]) VALUES (10, N'Daniel', N'Santana', N'Loyola', N'Sevilla', 125)
GO
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (1, N'Daniel', N'Sáez', N'Vega', NULL, 0.15)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (2, N'Juan', N'Gómez', N'López', NULL, 0.13)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (3, N'Diego', N'Flores', N'Salas', NULL, 0.11)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (4, N'Marta', N'Herrera', N'Gil', NULL, 0.14)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (5, N'Antonio', N'Carretero', N'Ortega', NULL, 0.12)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (6, N'Manuel', N'Domínguez', N'Hernández', NULL, 0.13)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (7, N'Antonio', N'Vega', N'Hernández', NULL, 0.11)
INSERT [dbo].[comercial] ([id], [nombre], [apellido1], [apellido2], [ciudad], [comision]) VALUES (8, N'Alfredo', N'Ruiz', N'Flores', NULL, 0.05)
GO
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (1, CAST(150.50 AS Decimal(8, 2)), CAST(N'2017-10-05' AS Date), 5, 2)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (2, CAST(270.65 AS Decimal(8, 2)), CAST(N'2016-09-10' AS Date), 1, 5)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (3, CAST(65.26 AS Decimal(8, 2)), CAST(N'2017-10-05' AS Date), 2, 1)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (4, CAST(110.50 AS Decimal(8, 2)), CAST(N'2016-08-17' AS Date), 8, 3)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (5, CAST(948.50 AS Decimal(8, 2)), CAST(N'2017-09-10' AS Date), 5, 2)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (6, CAST(2400.60 AS Decimal(8, 2)), CAST(N'2016-07-27' AS Date), 7, 1)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (7, CAST(5760.00 AS Decimal(8, 2)), CAST(N'2015-09-10' AS Date), 2, 1)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (8, CAST(1983.43 AS Decimal(8, 2)), CAST(N'2017-10-10' AS Date), 4, 6)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (9, CAST(2480.40 AS Decimal(8, 2)), CAST(N'2016-10-10' AS Date), 8, 3)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (10, CAST(250.45 AS Decimal(8, 2)), CAST(N'2015-06-27' AS Date), 8, 2)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (11, CAST(75.29 AS Decimal(8, 2)), CAST(N'2016-08-17' AS Date), 3, 7)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (12, CAST(3045.60 AS Decimal(8, 2)), CAST(N'2017-04-25' AS Date), 2, 1)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (13, CAST(545.75 AS Decimal(8, 2)), CAST(N'2019-01-25' AS Date), 6, 1)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (14, CAST(145.82 AS Decimal(8, 2)), CAST(N'2017-02-02' AS Date), 6, 1)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (15, CAST(370.85 AS Decimal(8, 2)), CAST(N'2019-03-11' AS Date), 1, 5)
INSERT [dbo].[Pedido] ([id], [cantidad], [fecha], [id_cliente], [id_comercial]) VALUES (16, CAST(2389.23 AS Decimal(8, 2)), CAST(N'2019-03-11' AS Date), 1, 5)
GO
