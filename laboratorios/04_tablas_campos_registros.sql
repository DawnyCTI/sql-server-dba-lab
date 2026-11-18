CREATE DATABASE  PracticaModulo1;
GO

USE PracticaModulo1;
GO

CREATE TABLE Clientes (
	ClienteId INT PRIMARY KEY,
	Nombre VARCHAR(50),
	Ciudad VARCHAR(50),
	Edad INT
);

INSERT INTO Clientes (ClienteId, Nombre, Ciudad, Edad) VALUES
(1, 'Juan Perez', 'Santo Domingo', 30),
(2, 'Maria Lopez', 'Santiago', 25),
(3, 'Carlos Sanchez', 'La vega', 40),
(4, 'Ana Martinez', 'Azua', 35);

SELECT * FROM Clientes;