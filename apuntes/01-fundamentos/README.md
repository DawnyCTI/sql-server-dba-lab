# Módulo 01 — Fundamentos de bases de datos y SQL

**Estado:** Aprobado · **Nota final:** 20/20 (100 %) · **Fecha:** 18 de noviembre de 2026.

## Qué aprendí

1. Una base de datos organiza la información para almacenarla, consultarla y actualizarla.
2. El modelo relacional organiza datos en tablas vinculadas; NoSQL abarca modelos documentales, clave-valor, grafos y otros.
3. Una tabla contiene columnas (campos) y filas (registros); un valor corresponde a una celda.
4. SQL es un lenguaje para trabajar con datos; Microsoft SQL Server es un sistema gestor que ejecuta Transact-SQL (T-SQL).
5. Los comandos se agrupan didácticamente en DDL, DML, DCL y TCL.

## Conceptos clave

| Grupo | Propósito | Ejemplos |
|---|---|---|
| DDL | Definir estructuras | CREATE, ALTER, DROP |
| DML | Manipular registros | INSERT, UPDATE, DELETE |
| DQL (a veces parte de DML) | Consultar | SELECT |
| DCL | Controlar permisos | GRANT, REVOKE |
| TCL | Controlar transacciones | BEGIN TRANSACTION, COMMIT, ROLLBACK |

**Integridad referencial:** una clave primaria identifica registros y una clave foránea permite comprobar relaciones entre tablas. La clave foránea no garantiza por sí sola que todos los datos sean correctos.

**COMMIT vs. ROLLBACK:** COMMIT confirma cambios de una transacción y ROLLBACK deshace los cambios pendientes. Bloqueos y aislamiento dependen de las operaciones y la configuración.

## Ejemplo SQL

```sql
USE PracticaModulo1;
GO

SELECT Nombre, Ciudad
FROM dbo.Clientes;
```

La consulta devuelve el nombre y la ciudad de los clientes de la tabla.

## Laboratorios

- [Sesión 3 — Tablas, campos y registros](../../laboratorios/04_tablas_campos_registros.sql)
- [Sesión 4 — Versión y edición de SQL Server](../../laboratorios/05_version_sql_server.sql)
- [Sesión 5 — DDL, DML y TCL](../../laboratorios/06_ddl_dml_dcl_tcl.sql)

**Entorno local reportado:** SQL Server 2025 Express (64-bit), versión principal 17.0, administrado con SSMS.

## Evaluación final

- Parte A: **8/8** — definiciones, tablas y clasificación de comandos.
- Parte B: **6/6** — explicar por qué relacionar clientes y cuentas mediante identificadores.
- Parte C: **6/6** — escribir una consulta SELECT de nombre y ciudad.
- **Total: 20/20.**

Esta nota corresponde a la evaluación de mentoría y no a una certificación oficial del curso.

## Dudas y puntos para reforzar

- Practicar DCL con usuarios de prueba y permisos.
- Evitar ejecutar scripts CREATE/INSERT repetidos sin comprobar que los objetos y datos ya existen.
- Continuar con instancias, conexiones y administración de SQL Server.

## Material de referencia

Diapositivas del curso *Máster en SQL Server*, páginas 4–49, y prácticas propias del repositorio. No se reproduce contenido privado del curso.
