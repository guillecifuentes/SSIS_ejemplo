USE [Venta]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] NOT NULL,
	[NombreCategoria] [varchar](30) NOT NULL,
	[idRubro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[idFactura] [int] NOT NULL,
	[VentaAsociada] [decimal](8, 2) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[nºFactura] [int] NOT NULL,
	[IdLocal] [int] NULL,
	[IdVersion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factura_Detalle]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura_Detalle](
	[Id_Factura_Detalle] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdFactura] [int] NOT NULL,
	[PrecioSinImporte] [decimal](8, 2) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_id_Factura_Detalle] PRIMARY KEY CLUSTERED 
(
	[Id_Factura_Detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Familia]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Familia](
	[idFamilia] [int] NOT NULL,
	[NombreFamilia] [varchar](30) NOT NULL,
	[idCategoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Local]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Local](
	[IdLocal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[IdLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcesoCargaIncremental]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcesoCargaIncremental](
	[IdProceso] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoProceso] [int] NULL,
	[IdLocal] [int] NULL,
	[Fecha] [datetime] NULL,
	[Cargar] [char](1) NULL,
	[Cargadoencubo] [char](1) NULL,
 CONSTRAINT [PK_ProcesoCargaIncremental] PRIMARY KEY CLUSTERED 
(
	[IdProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] NOT NULL,
	[NombreProducto] [varchar](30) NOT NULL,
	[idSubFamilia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rubro]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rubro](
	[idRubro] [int] NOT NULL,
	[NombreRubro] [varchar](30) NOT NULL,
	[idSeccion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seccion]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seccion](
	[idSeccion] [int] NOT NULL,
	[NombreSeccion] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubFamilia]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubFamilia](
	[idSubFamilia] [int] NOT NULL,
	[NombreSubFamilia] [varchar](30) NOT NULL,
	[idFamilia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSubFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Version]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Version](
	[IdVersion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Version] PRIMARY KEY CLUSTERED 
(
	[IdVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categoria] ([idCategoria], [NombreCategoria], [idRubro]) VALUES (1, N'yogurt', 1)
INSERT [dbo].[Categoria] ([idCategoria], [NombreCategoria], [idRubro]) VALUES (2, N'queso', 1)
INSERT [dbo].[Categoria] ([idCategoria], [NombreCategoria], [idRubro]) VALUES (3, N'cuaderno', 4)
INSERT [dbo].[Categoria] ([idCategoria], [NombreCategoria], [idRubro]) VALUES (4, N'agenda', 3)
INSERT [dbo].[Categoria] ([idCategoria], [NombreCategoria], [idRubro]) VALUES (5, N'gaseosa', 2)
INSERT [dbo].[Factura] ([idFactura], [VentaAsociada], [fecha], [nºFactura], [IdLocal], [IdVersion]) VALUES (1, CAST(101.00 AS Decimal(8, 2)), CAST(N'2008-08-03 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[Factura] ([idFactura], [VentaAsociada], [fecha], [nºFactura], [IdLocal], [IdVersion]) VALUES (2, CAST(102.00 AS Decimal(8, 2)), CAST(N'2008-08-03 00:00:00.000' AS DateTime), 2, 2, 1)
INSERT [dbo].[Factura] ([idFactura], [VentaAsociada], [fecha], [nºFactura], [IdLocal], [IdVersion]) VALUES (3, CAST(103.00 AS Decimal(8, 2)), CAST(N'2008-08-03 00:00:00.000' AS DateTime), 3, 3, 1)
INSERT [dbo].[Factura] ([idFactura], [VentaAsociada], [fecha], [nºFactura], [IdLocal], [IdVersion]) VALUES (4, CAST(104.00 AS Decimal(8, 2)), CAST(N'2008-08-03 00:00:00.000' AS DateTime), 4, 4, 1)
INSERT [dbo].[Factura] ([idFactura], [VentaAsociada], [fecha], [nºFactura], [IdLocal], [IdVersion]) VALUES (5, CAST(45.00 AS Decimal(8, 2)), CAST(N'2008-08-15 00:00:00.000' AS DateTime), 4, 2, 1)
INSERT [dbo].[Factura_Detalle] ([Id_Factura_Detalle], [IdProducto], [IdFactura], [PrecioSinImporte], [Cantidad]) VALUES (1, 1, 1, CAST(8.20 AS Decimal(8, 2)), 10)
INSERT [dbo].[Factura_Detalle] ([Id_Factura_Detalle], [IdProducto], [IdFactura], [PrecioSinImporte], [Cantidad]) VALUES (2, 2, 2, CAST(10.20 AS Decimal(8, 2)), 20)
INSERT [dbo].[Factura_Detalle] ([Id_Factura_Detalle], [IdProducto], [IdFactura], [PrecioSinImporte], [Cantidad]) VALUES (3, 3, 3, CAST(11.30 AS Decimal(8, 2)), 30)
INSERT [dbo].[Factura_Detalle] ([Id_Factura_Detalle], [IdProducto], [IdFactura], [PrecioSinImporte], [Cantidad]) VALUES (4, 4, 4, CAST(13.20 AS Decimal(8, 2)), 2)
INSERT [dbo].[Factura_Detalle] ([Id_Factura_Detalle], [IdProducto], [IdFactura], [PrecioSinImporte], [Cantidad]) VALUES (5, 4, 5, CAST(45.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Familia] ([idFamilia], [NombreFamilia], [idCategoria]) VALUES (1, N'Gloria', 1)
INSERT [dbo].[Familia] ([idFamilia], [NombreFamilia], [idCategoria]) VALUES (2, N'Laive', 1)
INSERT [dbo].[Familia] ([idFamilia], [NombreFamilia], [idCategoria]) VALUES (3, N'Loro', 3)
INSERT [dbo].[Familia] ([idFamilia], [NombreFamilia], [idCategoria]) VALUES (4, N'KR', 5)
SET IDENTITY_INSERT [dbo].[Local] ON 

INSERT [dbo].[Local] ([IdLocal], [Nombre]) VALUES (1, N'PLAZA VEA SAN BORJA')
INSERT [dbo].[Local] ([IdLocal], [Nombre]) VALUES (2, N'PLAZA VEA JOCKEY')
INSERT [dbo].[Local] ([IdLocal], [Nombre]) VALUES (3, N'VIVANDA BENAVIDES')
INSERT [dbo].[Local] ([IdLocal], [Nombre]) VALUES (4, N'VIVANDA JAVIER PRADO')
SET IDENTITY_INSERT [dbo].[Local] OFF
SET IDENTITY_INSERT [dbo].[ProcesoCargaIncremental] ON 

INSERT [dbo].[ProcesoCargaIncremental] ([IdProceso], [IdTipoProceso], [IdLocal], [Fecha], [Cargar], [Cargadoencubo]) VALUES (25, 1, 1, CAST(N'2008-08-03 13:30:19.217' AS DateTime), N'T', N'P')
INSERT [dbo].[ProcesoCargaIncremental] ([IdProceso], [IdTipoProceso], [IdLocal], [Fecha], [Cargar], [Cargadoencubo]) VALUES (26, 1, 2, CAST(N'2008-08-03 13:30:19.217' AS DateTime), N'T', N'P')
INSERT [dbo].[ProcesoCargaIncremental] ([IdProceso], [IdTipoProceso], [IdLocal], [Fecha], [Cargar], [Cargadoencubo]) VALUES (27, 1, 3, CAST(N'2008-08-03 13:30:19.217' AS DateTime), N'T', N'P')
INSERT [dbo].[ProcesoCargaIncremental] ([IdProceso], [IdTipoProceso], [IdLocal], [Fecha], [Cargar], [Cargadoencubo]) VALUES (28, 1, 4, CAST(N'2008-08-03 13:30:19.217' AS DateTime), N'T', N'P')
SET IDENTITY_INSERT [dbo].[ProcesoCargaIncremental] OFF
INSERT [dbo].[Producto] ([idProducto], [NombreProducto], [idSubFamilia]) VALUES (1, N'Gloria hierro y calcio', 1)
INSERT [dbo].[Producto] ([idProducto], [NombreProducto], [idSubFamilia]) VALUES (2, N'Jamonada de 13 tajadas', 2)
INSERT [dbo].[Producto] ([idProducto], [NombreProducto], [idSubFamilia]) VALUES (3, N'Mini Lorito ', 3)
INSERT [dbo].[Producto] ([idProducto], [NombreProducto], [idSubFamilia]) VALUES (4, N'Cifrut Piña Granadilla', 4)
INSERT [dbo].[Rubro] ([idRubro], [NombreRubro], [idSeccion]) VALUES (1, N'Lacteos', 4)
INSERT [dbo].[Rubro] ([idRubro], [NombreRubro], [idSeccion]) VALUES (2, N'Bebidas', 4)
INSERT [dbo].[Rubro] ([idRubro], [NombreRubro], [idSeccion]) VALUES (3, N'Oficina', 3)
INSERT [dbo].[Rubro] ([idRubro], [NombreRubro], [idSeccion]) VALUES (4, N'Escolares', 3)
INSERT [dbo].[Seccion] ([idSeccion], [NombreSeccion]) VALUES (1, N'Golosinas')
INSERT [dbo].[Seccion] ([idSeccion], [NombreSeccion]) VALUES (2, N'Higiene')
INSERT [dbo].[Seccion] ([idSeccion], [NombreSeccion]) VALUES (3, N'Utiles')
INSERT [dbo].[Seccion] ([idSeccion], [NombreSeccion]) VALUES (4, N'Comestibles')
INSERT [dbo].[SubFamilia] ([idSubFamilia], [NombreSubFamilia], [idFamilia]) VALUES (1, N'Gloria 5 años', 1)
INSERT [dbo].[SubFamilia] ([idSubFamilia], [NombreSubFamilia], [idFamilia]) VALUES (2, N'Jamonada de pollo', 2)
INSERT [dbo].[SubFamilia] ([idSubFamilia], [NombreSubFamilia], [idFamilia]) VALUES (3, N'Lorito Triple Raya', 3)
INSERT [dbo].[SubFamilia] ([idSubFamilia], [NombreSubFamilia], [idFamilia]) VALUES (4, N'Cifrut', 4)
SET IDENTITY_INSERT [dbo].[Version] ON 

INSERT [dbo].[Version] ([IdVersion], [Nombre]) VALUES (1, N'REAL')
INSERT [dbo].[Version] ([IdVersion], [Nombre]) VALUES (2, N'PRESUPUESTO')
SET IDENTITY_INSERT [dbo].[Version] OFF
ALTER TABLE [dbo].[Categoria]  WITH CHECK ADD  CONSTRAINT [FK_Categoria] FOREIGN KEY([idRubro])
REFERENCES [dbo].[Rubro] ([idRubro])
GO
ALTER TABLE [dbo].[Categoria] CHECK CONSTRAINT [FK_Categoria]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Local] FOREIGN KEY([IdLocal])
REFERENCES [dbo].[Local] ([IdLocal])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Local]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Version] FOREIGN KEY([IdVersion])
REFERENCES [dbo].[Version] ([IdVersion])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Version]
GO
ALTER TABLE [dbo].[Factura_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_id_Factura] FOREIGN KEY([IdFactura])
REFERENCES [dbo].[Factura] ([idFactura])
GO
ALTER TABLE [dbo].[Factura_Detalle] CHECK CONSTRAINT [FK_id_Factura]
GO
ALTER TABLE [dbo].[Factura_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_id_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Factura_Detalle] CHECK CONSTRAINT [FK_id_Producto]
GO
ALTER TABLE [dbo].[Familia]  WITH CHECK ADD  CONSTRAINT [FK_Familia] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Familia] CHECK CONSTRAINT [FK_Familia]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto] FOREIGN KEY([idSubFamilia])
REFERENCES [dbo].[SubFamilia] ([idSubFamilia])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto]
GO
ALTER TABLE [dbo].[Rubro]  WITH CHECK ADD  CONSTRAINT [FK_Rubro] FOREIGN KEY([idSeccion])
REFERENCES [dbo].[Seccion] ([idSeccion])
GO
ALTER TABLE [dbo].[Rubro] CHECK CONSTRAINT [FK_Rubro]
GO
ALTER TABLE [dbo].[SubFamilia]  WITH CHECK ADD  CONSTRAINT [FK_SubFamilia] FOREIGN KEY([idFamilia])
REFERENCES [dbo].[Familia] ([idFamilia])
GO
ALTER TABLE [dbo].[SubFamilia] CHECK CONSTRAINT [FK_SubFamilia]
GO
/****** Object:  StoredProcedure [dbo].[CargaDeProcesoCargaIncremental]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[CargaDeProcesoCargaIncremental]
@IdTipoProceso int
As
Begin
	declare @fecha datetime
	declare @Cant int
	set @fecha = getdate()
	

	Select  @Cant=count(IdProceso) from  ProcesoCargaIncremental
	where convert(varchar,Fecha,103)=convert(varchar,@Fecha,103)

	If @Cant=0
		Begin
			Insert Into  ProcesoCargaIncremental
			(IdTipoProceso, IdLocal, Fecha, Cargar, Cargadoencubo)
			select @IdTipoProceso as IdTipoProceso,IdLocal, @Fecha,'P','P'
			from dbo.Local 
		End
End 

GO
/****** Object:  StoredProcedure [dbo].[CargaIncrementalProductos]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[CargaIncrementalProductos]
as
Begin

declare @Tabla as Table
(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[IdSubFamilia] [int] NULL,
	[IdFamilia] [int] NULL,
	[IdCategoria] [int] NULL,
	[IdRubro] [int] NULL,
	[IdSeccion] [int] NULL,
	[NombreProducto] [varchar](50) NULL,
	[NombreSubFamilia] [varchar](50) NULL,
	[NombreFamilia] [varchar](50) NULL,
	[NombreCategoria] [varchar](50) NULL,
	[NombreRubro] [varchar](50) NULL,
	[NombreSeccion] [varchar](50) NULL
	
)
Insert Into @Tabla
(	 NombreSeccion, NombreCategoria, NombreFamilia, NombreSubFamilia, NombreProducto, 
                      NombreRubro,  idSeccion, idRubro, idCategoria, idFamilia, idSubFamilia, idProducto
)
SELECT     Seccion.NombreSeccion, Categoria.NombreCategoria, Familia.NombreFamilia, SubFamilia.NombreSubFamilia, Producto.NombreProducto, 
                      Rubro.NombreRubro, Seccion.idSeccion, Rubro.idRubro, Categoria.idCategoria, Familia.idFamilia, SubFamilia.idSubFamilia, Producto.idProducto
FROM         Categoria INNER JOIN
                      Familia ON Categoria.idCategoria = Familia.idCategoria INNER JOIN
                      Rubro ON Categoria.idRubro = Rubro.idRubro INNER JOIN
                      Seccion ON Rubro.idSeccion = Seccion.idSeccion INNER JOIN
                      SubFamilia ON Familia.idFamilia = SubFamilia.idFamilia INNER JOIN
                      Producto ON SubFamilia.idSubFamilia = Producto.idSubFamilia

	Insert Into  VentasDM.dbo.Dim_Producto(IdProducto, IdSubFamilia, IdFamilia, IdCategoria, IdRubro, IdSeccion, NombreProducto, NombreSubFamilia, NombreFamilia, 
                      NombreCategoria, NombreRubro, NombreSeccion)
	select 
	IdProducto, IdSubFamilia, IdFamilia, IdCategoria, IdRubro, IdSeccion, NombreProducto, NombreSubFamilia, NombreFamilia, 
                      NombreCategoria, NombreRubro, NombreSeccion
	from 
  (Select DSPT.IdProducto, DSPT.IdSubFamilia, DSPT.IdFamilia, DSPT.IdCategoria, DSPT.IdRubro, DSPT.IdSeccion, DSPT.NombreProducto, DSPT.NombreSubFamilia, DSPT.NombreFamilia, 
             DSPT.NombreCategoria, DSPT.NombreRubro, DSPT.NombreSeccion ,DMPT.IdProducto as IdProductoDM
	From  @Tabla DSPT
	left join  VentasDM.dbo.Dim_Producto DMPT 
	on DMPT.IdProducto = DSPT.IdProducto) as Tabla
	where IdProductoDM is null

End
GO
/****** Object:  StoredProcedure [dbo].[Usp_SelPendientesCarga]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_SelPendientesCarga]
@IdTipoProceso int
as
begin
	select IdLocal,CONVERT(varchar(10),Fecha,103) Fecha,IdProceso
		From ProcesoCargaIncremental
    where Cargar = 'P'
end

GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdProcesoCargaIncremental]    Script Date: 26/05/2017 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_UpdProcesoCargaIncremental]
@IdProceso int,
@Estado varchar(1)

as

begin
	Update 	dbo.ProcesoCargaIncremental
		set Cargar = @Estado
	where IdProceso = @IdProceso
end	
GO
