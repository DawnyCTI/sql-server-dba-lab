# Semana 1: Fundamentos e instalación

## Objetivo
Comprender la diferencia entre motor SQL Server, instancia, SSMS, base de datos, tabla, fila y columna.

## Teoría (responde con tus palabras)
1. ¿Qué es una base de datos relacional?
2. ¿Qué hace el motor SQL Server y qué hace SSMS?
3. ¿Qué es una instancia?
4. ¿Qué diferencia hay entre una tabla y una base de datos?
5. ¿Para qué sirven PRIMARY KEY y FOREIGN KEY?

## Laboratorio
1. Instala SQL Server Developer para pruebas y SSMS.
2. Conéctate a la instancia local con autenticación de Windows.
3. Ejecuta scripts/01_crear_bancolab.sql una sola vez.
4. Ubica BancoLab y sus tres tablas en Object Explorer.
5. Ejecuta SELECT * FROM dbo.Clientes; usando la base BancoLab.
6. Ejecuta scripts/03_dba_verificaciones.sql y registra estado y modelo de recuperación.

## Evidencias
- Captura del árbol de tablas en SSMS.
- Consulta que devuelva los cuatro clientes ficticios.
- Versión del motor y estado de la base.

## Mini-reto
Sin mirar el ejemplo, escribe una consulta que muestre Nombre y Ciudad de todos los clientes.
Explica por qué una cuenta no puede referenciar a un ClienteID inexistente.

## Criterio de aprobación
Explicar correctamente 4 de 5 conceptos, crear la base y ejecutar las consultas sin errores.
