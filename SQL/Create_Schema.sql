-- Crear tabla en esquema DBO
CREATE TABLE dbo.dwFIFA (
	ID int IDENTITY(1,1) NOT NULL,
	IDKey int NULL,
	Nombre varchar(150) NULL,
	FechaInicio date NULL,
	FechaFin date NULL
) ON [PRIMARY]
GO

-- Crear tabla nuevo esquema con autorización para entidad de seguridad DBO
CREATE SCHEMA dw AUTHORIZATION dbo
GO

-- Cambiar tabla de esquema DBO a DW (DataWarehouse)
ALTER SCHEMA dw TRANSFER dbo.dwFIFA

-- Renombrar tabla en esquema DW (note que en nombre destino no se repite prefijo del esquema: dw.)
EXEC sp_rename 'dw.dwFIFA', 'FIFA'
GO

-- Valor predeterminado para columna [FechaInicio]
ALTER TABLE [dw].[FIFA] ADD  CONSTRAINT [DF__dwFIFA__FechaIni__078C1F06]  DEFAULT (getdate()) FOR [FechaInicio]
GO
