USE BancoLab;
GO
-- Filtrar clientes por ciudad
SELECT ClienteID,Nombre,Ciudad FROM dbo.Clientes WHERE Ciudad=N'Santo Domingo';
-- Relacionar cuentas con clientes
SELECT c.Nombre, a.TipoCuenta, a.Saldo
FROM dbo.Clientes AS c
INNER JOIN dbo.Cuentas AS a ON a.ClienteID=c.ClienteID
ORDER BY a.Saldo DESC;
-- Resumen por cliente
SELECT c.Nombre, COUNT(a.CuentaID) AS NumeroCuentas, COALESCE(SUM(a.Saldo),0) AS SaldoTotal
FROM dbo.Clientes c LEFT JOIN dbo.Cuentas a ON a.ClienteID=c.ClienteID
GROUP BY c.ClienteID,c.Nombre;
GO
