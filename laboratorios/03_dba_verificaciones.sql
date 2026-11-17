-- Consultas de solo lectura para aprender sobre administración.
SELECT @@SERVERNAME AS Servidor, @@VERSION AS VersionSQLServer;
SELECT name,state_desc,recovery_model_desc FROM sys.databases WHERE name=N'BancoLab';
USE BancoLab;
GO
SELECT name,type_desc,physical_name,size*8.0/1024 AS TamañoMB FROM sys.database_files;
SELECT name FROM sys.tables ORDER BY name;
GO
-- NOTA: los backups y restore se practicarán después,
-- en rutas válidas y con permisos apropiados de la cuenta del servicio SQL Server.
