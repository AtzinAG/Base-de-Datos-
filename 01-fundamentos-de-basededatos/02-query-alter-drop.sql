--crear base de datos empresapatito
CREATE DATABASE empresapatito;
GO

--Usar la base de datos
USE empresapatito;
GO

--Crear una tabla empleados 
CREATE TABLE empleados(
Idempleado int not null,
Nombre VARCHAR(100) NOT NULL,
Puesto VARCHAR(50),
FechaIngreso date,
Salario decimal(10,2), 
CONSTRAINT pk_empleados
PRIMARY KEY(Idempleado)
);
GO

--Agregar una columna en la tabla empleados
ALTER TABLE empleados
ADD CorreoElectronico VARCHAR(100);
GO
SELECT * FROM empleados;

--modificar el tipo de dato de un campo
ALTER TABLE empleados
ALTER COLUMN Salario money not null;
GO

--Renombrar un campo
EXEC sp_rename 'empleados.CorreoElectronico',
               'Email', 'COLUMN';
GO

--crear tabla departamentos 
CREATE TABLE departamentos(
IdDepartamento int not null identity(1,1) primary key,
NombreDepto varchar(100)
);
GO

--Agregar un campo a la tabla empleados,
--para que sea una foreign key
ALTER TABLE empleados
ADD IdDepartamento int not null;
GO

--Agregar llave foranea
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_departamento
FOREIGN KEY (IdDepartamento)
REFERENCES departamentos(IdDepartamento)
GO

--eliminar la primary key de empleados
ALTER TABLE empleados
DROP CONSTRAINT pk_empleados;
GO

--Eliminar la froign key de la tabla empleados 
ALTER TABLE empleados
DROP CONSTRAINT fk_empleados_departamento;
GO

--dpto
ALTER TABLE departamentos 
DROP  PK__departam__787A433DE6D34E6C;
GO

ALTER TABLE empleados
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);
GO



CREATE TABLE Categoria(
id int NOT NULL primary key DEFAULT -1,
Nombre varchar(20),
Estatus char(1) DEFAULT 'a'
);
GO

INSERT INTO Categoria
VALUES (1, 'Carnes', 'D');

SELECT * FROM Categoria;

INSERT INTO Categoria
VALUES (DEFAULT, 'Carnes', DEFAULT);

DROP TABLE Categoria;

--eliminar la columna email
ALTER TABLE empleados
DROP COLUMN Email;

ALTER TABLE empleados
ADD CONSTRAINT pk_empleados
PRIMARY KEY (Idempleado);
GO

ALTER TABLE departamentos
ADD CONSTRAINT pk_departamentos
PRIMARY KEY (IdDepartamento);
GO

--Eliminar tablas 
DROP TABLE Empleados;
GO

DROP TABLE departamentos;
GO
DROP TABLE Categoria;
GO

--Eliminar la bd 
USE MASTER;
go
DROP DATABASE empresapatito;
GO