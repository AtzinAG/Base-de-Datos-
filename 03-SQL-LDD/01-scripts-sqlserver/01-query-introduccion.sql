-- Lenguaje SQL -LDD (create, alter, drop)

--Crear la base de datos empresa
CREATE DATABASE empresa;
Go

--Utiliazar la bd creada
USE empresa;
Go

--Crear la tabla empleados 
CREATE TABLE Empleados (
IdEmpleado int not null,
Nombre varchar(100) not null,
Puesto varchar(50) not null,
FechaIngreso date,
Salario money not null,
CONSTRAINT pk_empleados
PRIMARY KEY (IdEmpleado)
);
GO

CREATE TABLE Productos(
Productoid int primary key,
NombreProducto nvarchar(50) not null,
Existencia int not null,
PrecioUnitario money not null,

);
GO

CREATE TABLE Productos2(
ProductoId int not null identity(1,1),
NombreProducto nvarchar(50) not null,
Existencia int not null,
Precio money not null,
CONSTRAINT pk_productos2
PRIMARY KEY (ProductoId),
CONSTRAINT unique_nombreProducto
UNIQUE(NombreProducto),
CONSTRAINT chk_existencia
CHECK (Existencia>0 AND Existencia<=1000),
CONSTRAINT chk_precio
CHECK (Precio>0.0)
);
GO

--Insertar un producto en productos sin identity
INSERT INTO Productos (Productoid, NombreProducto, Existencia, PrecioUnitario)
VALUES (1, 'Burritos de Frijoles', 65, 20.99);
GO

INSERT INTO Productos (Productoid, NombreProducto, Existencia, PrecioUnitario)
VALUES (2, 'Burritos de Frijoles', 65, 20.99);
GO

SELECT * FROM Productos;
GO


--Insertar en la tabla productos2
INSERT INTO Productos2 (NombreProducto, Existencia, Precio)
VALUES ('Burritos Chorizo Verde', 100, 21.0);
GO

INSERT INTO Productos2 (NombreProducto, Existencia, Precio)
VALUES ('Burritos Chorizo Grueso', 450, 459.12);
GO

SELECT * FROM Productos2;
GO