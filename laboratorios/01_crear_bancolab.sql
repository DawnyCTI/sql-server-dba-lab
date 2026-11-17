/* BancoLab - Laboratorio educativo SQL Server 2022/2025.
   Solo datos ficticios. Ejecutar en instancia local de desarrollo. */
USE master;
GO
IF DB_ID(N'BancoLab') IS NULL
    CREATE DATABASE BancoLab;
GO
USE BancoLab;
GO
IF OBJECT_ID(N'dbo.Clientes', N'U') IS NULL
CREATE TABLE dbo.Clientes (
 ClienteID INT IDENTITY(1,1) PRIMARY KEY,
 Nombre NVARCHAR(100) NOT NULL,
 Ciudad NVARCHAR(60) NOT NULL,
 Correo NVARCHAR(150) UNIQUE,
 FechaRegistro DATE NOT NULL DEFAULT CONVERT(date,GETDATE())
);
GO
IF OBJECT_ID(N'dbo.Cuentas', N'U') IS NULL
CREATE TABLE dbo.Cuentas (
 CuentaID INT IDENTITY(1,1) PRIMARY KEY,
 ClienteID INT NOT NULL,
 TipoCuenta NVARCHAR(20) NOT NULL CHECK (TipoCuenta IN (N'Ahorros',N'Corriente')),
 Saldo DECIMAL(12,2) NOT NULL DEFAULT 0 CHECK (Saldo >= 0),
 Estado NVARCHAR(15) NOT NULL DEFAULT N'Activa' CHECK (Estado IN (N'Activa',N'Bloqueada')),
 CONSTRAINT FK_Cuentas_Clientes FOREIGN KEY (ClienteID) REFERENCES dbo.Clientes(ClienteID)
);
GO
IF OBJECT_ID(N'dbo.Movimientos', N'U') IS NULL
CREATE TABLE dbo.Movimientos (
 MovimientoID INT IDENTITY(1,1) PRIMARY KEY,
 CuentaID INT NOT NULL,
 Tipo NVARCHAR(10) NOT NULL CHECK (Tipo IN (N'Deposito',N'Retiro')),
 Monto DECIMAL(12,2) NOT NULL CHECK (Monto > 0),
 Fecha DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
 CONSTRAINT FK_Movimientos_Cuentas FOREIGN KEY (CuentaID) REFERENCES dbo.Cuentas(CuentaID)
);
GO
IF NOT EXISTS (SELECT 1 FROM dbo.Clientes)
BEGIN
 INSERT INTO dbo.Clientes (Nombre,Ciudad,Correo) VALUES
 (N'Ana Pérez',N'Santo Domingo',N'ana@ejemplo.test'),
 (N'Luis Gómez',N'Santiago',N'luis@ejemplo.test'),
 (N'María Rodríguez',N'Santo Domingo',N'maria@ejemplo.test'),
 (N'Carlos Núñez',N'La Vega',N'carlos@ejemplo.test');
END;
GO
IF NOT EXISTS (SELECT 1 FROM dbo.Cuentas)
BEGIN
 INSERT INTO dbo.Cuentas (ClienteID,TipoCuenta,Saldo,Estado)
 SELECT ClienteID,N'Ahorros',CASE Nombre WHEN N'Ana Pérez' THEN 15000 WHEN N'Luis Gómez' THEN 8000 WHEN N'María Rodríguez' THEN 23000 ELSE 500 END,N'Activa'
 FROM dbo.Clientes;
END;
GO
IF NOT EXISTS (SELECT 1 FROM dbo.Movimientos)
BEGIN
 INSERT INTO dbo.Movimientos (CuentaID,Tipo,Monto)
 SELECT CuentaID,N'Deposito',1000 FROM dbo.Cuentas;
END;
GO
SELECT @@VERSION AS VersionMotor;
SELECT name,state_desc,recovery_model_desc FROM sys.databases WHERE name=N'BancoLab';
SELECT * FROM dbo.Clientes;
SELECT * FROM dbo.Cuentas;
GO
