
USE PracticaModulo1;
GO

-- DDL: crear una tabla de prueba
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Precio DECIMAL(10,2)
);
GO

-- DDL: agregar una columna
ALTER TABLE Productos
ADD Stock INT;
GO

-- DML: insertar registros
INSERT INTO Productos
(ProductoID, Nombre, Precio, Stock)
VALUES
(1, 'Laptop', 35000, 10),
(2, 'Mouse', 850, 25),
(3, 'Teclado', 1500, 15);

-- DML: consultar
SELECT * FROM Productos;

-- TCL: iniciar una transacción
BEGIN TRANSACTION;

-- DML: modificar un precio
UPDATE Productos
SET Precio = 30000
WHERE ProductoID = 1;

-- Consultar el cambio temporal
SELECT * FROM Productos;

-- TCL: deshacer el cambio
ROLLBACK TRANSACTION;

-- Comprobar el precio original
SELECT * FROM Productos;
