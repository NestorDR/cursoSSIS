USE [CursoSSIS]
GO

/****** Object:  Table [dbo].[Agregaciones]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Agregaciones](
	[Club] [varchar](100) NULL,
	[Liga] [varchar](100) NULL,
	[AñoNacimiento] [int] NULL,
	[Nacionalidad] [varchar](100) NOT NULL,
	[PiePreferido] [varchar](50) NOT NULL,
	[MaxValorEuropa] [float] NULL,
	[MinValorEuropa] [float] NULL,
	[AvgValorEuropa] [float] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[AleatoriosAbsolutos]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AleatoriosAbsolutos](
	[ID] [int] NULL,
	[Nombre] [varchar](150) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[AleatoriosAbsolutosNoElegidos]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AleatoriosAbsolutosNoElegidos](
	[ID] [int] NULL,
	[Nombre] [varchar](150) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[AleatoriosRelativos]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AleatoriosRelativos](
	[ID] [int] NULL,
	[Nombre] [varchar](150) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[AleatoriosRelativosNoElegidos]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AleatoriosRelativosNoElegidos](
	[ID] [int] NULL,
	[Nombre] [varchar](150) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Contadores]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contadores](
	[Contador] [int] NOT NULL,
	[Hora] [time](7) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CopiedFIFA]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CopiedFIFA](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[Club] [varchar](100) NULL,
	[Liga] [varchar](100) NULL,
	[FechaNacimiento] [date] NOT NULL,
	[AlturaCM] [int] NOT NULL,
	[PesoKG] [int] NOT NULL,
	[Nacionalidad] [varchar](100) NOT NULL,
	[ValorEuropa] [float] NOT NULL,
	[PiePreferido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CopiedFIFA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DemoDestino]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DemoDestino](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](15) NULL,
	[Monto] [float] NULL,
	[FechaHoraCreacion] [datetime] NULL,
 CONSTRAINT [PK_DemoDestino] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DemoOrigen]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DemoOrigen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](15) NULL,
	[Monto] [float] NULL,
	[FechaHoraCreacion] [datetime] NULL,
 CONSTRAINT [PK_DemoOrigen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Documentos]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Documentos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ruta] [varchar](200) NULL,
	[Binario] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[EdadJugadores]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EdadJugadores](
	[ID] [int] NULL,
	[NombreCompleto] [varchar](150) NULL,
	[Edad] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[EdadNacimientoJugadores]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EdadNacimientoJugadores](
	[ID] [int] NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[FechaNacimiento] [date] NULL,
	[Edad] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FIFAMerged]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FIFAMerged](
	[ID] [int] NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[FechaNacimiento] [date] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FilesInFolder]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FilesInFolder](
	[FileName] [varchar](500) NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[JugadoresConValor]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JugadoresConValor](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PesoLibras] [float] NULL,
	[ValorEuropaPromedioMensual] [float] NULL,
 CONSTRAINT [PK_JugadoresConValor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[JugadoresPorNacionalidad]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JugadoresPorNacionalidad](
	[Nacionalidad] [varchar](100) NOT NULL,
	[CantidadJugadores] [int] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[JugadoresSinValor]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JugadoresSinValor](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ValorEuropaEnLetras] [varchar](10) NOT NULL,
 CONSTRAINT [PK_JugadoresSinValor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[LogEjecucion]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LogEjecucion](
	[PaqueteID] [uniqueidentifier] NULL,
	[PaqueteNombre] [varchar](100) NULL,
	[FechaHora] [smalldatetime] NULL,
	[PC] [varchar](100) NULL,
	[CantidadRegistros] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Mayores1990]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mayores1990](
	[ID] [int] NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[FechaNacimiento] [date] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Menores1990]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Menores1990](
	[ID] [int] NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[FechaNacimiento] [date] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NombresSeparados]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NombresSeparados](
	[NombreSeparado] [varchar](50) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NombresUno]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NombresUno](
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Promedios]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Promedios](
	[PiePreferido] [varchar](50) NOT NULL,
	[PesoKGPromedio] [float] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ResultExportFIFA]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ResultExportFIFA](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[Club] [varchar](100) NULL,
	[Liga] [varchar](100) NULL,
	[FechaNacimiento] [date] NOT NULL,
	[AlturaCM] [int] NOT NULL,
	[PesoKG] [int] NOT NULL,
	[Nacionalidad] [varchar](100) NOT NULL,
	[ValorEuropa] [float] NOT NULL,
	[PiePreferido] [varchar](50) NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SamplingPlusImportColumn]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SamplingPlusImportColumn](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[RutaArchivo] [varchar](200) NULL,
	[ContenidoArchivo] [varbinary](max) NULL,
	[FechaHoraCreacion] [datetime] NULL,
 CONSTRAINT [PK_SamplingPlusImportColumn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dw].[FIFA]    Script Date: 07/05/2020 12:27:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER TABLE [dbo].[DemoDestino] ADD  CONSTRAINT [DF_DemoDestino_FechaHoraCreacion]  DEFAULT (getdate()) FOR [FechaHoraCreacion]
GO

ALTER TABLE [dbo].[DemoOrigen] ADD  CONSTRAINT [DF_DemoOrigen_FechaHoraCreacion]  DEFAULT (getdate()) FOR [FechaHoraCreacion]
GO

ALTER TABLE [dbo].[LogEjecucion] ADD  DEFAULT (getdate()) FOR [FechaHora]
GO
