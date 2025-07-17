--Crear la base de datos 
CREATE DATABASE RentaVehiculo;
GO

USE RentaVehiculo;
GO

--Crear la tabla clientes
CREATE TABLE Clientes(
IdCliente INT NOT NULL identity(1,1),
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno NVARCHAR(20) NOT NULL,
ApellidoMaterno NVARCHAR(20) NOT NULL,
CURP NVARCHAR(18),
Telefono NVARCHAR(12),
Calle NVARCHAR(20),
NumCalle NVARCHAR(20),
Ciudad NVARCHAR(20),
CONSTRAINT pk_Clientes
PRIMARY KEY (IdCliente)
);
GO

--Crear la tabla Sucursal
CREATE TABLE Sucursal(
IdSucursal INT NOT NULL identity(1,1),
NombreSucursal NVARCHAR(20) NOT NULL,
Ubicacion NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Sucursal
PRIMARY KEY (IdSucursal)
);

--Crear la tabla Vehiculo
CREATE TABLE Vehiculo(
IdVehiculo INT NOT NULL identity(1,1),
IdSucursal INT NOT NULL,
Marca NVARCHAR(20) NOT NULL,
Anio NVARCHAR(20) NOT NULL,
Modelo NVARCHAR(20) NOT NULL,
Placa NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Vehiculo
PRIMARY KEY (IdVehiculo),
CONSTRAINT fk_Sucursal_Vehiculo
FOREIGN KEY (IdSucursal)
REFERENCES Sucursal(IdSucursal)
);
GO

--Crear la tabla Renta
CREATE TABLE Renta(
IdCliente INT NOT NULL,
IdVehiculo INT NOT NULL,
NumDiasRentados INT NOT NULL,
FechaInicio DATE NOT NULL,
FechaTermino DATE,
CONSTRAINT fk_Cliente_Renta
FOREIGN KEY (IdCliente)
REFERENCES Clientes(IdCliente),
CONSTRAINT fk_Vehiculo_Renta
FOREIGN KEY (IdVehiculo)
REFERENCES Vehiculo(IdVehiculo )
);