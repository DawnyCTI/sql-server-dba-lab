
-- Módulo 1 - Sesión 4
-- Identificación de SQL Server

SELECT @@VERSION AS VersionSQLServer;

SELECT
    SERVERPROPERTY('ProductVersion') AS Version,
    SERVERPROPERTY('Edition') AS Edicion,
    SERVERPROPERTY('ProductLevel') AS NivelProducto;
