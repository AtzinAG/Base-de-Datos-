#Crear la base de datos 
CREATE DATABASE RentaVehiculo;


USE RentaVehiculo;


#Crear la tabla clientes
CREATE TABLE Clientes(
IdCliente INT NOT NULL auto_increment,
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno NVARCHAR(20) NOT NULL,
ApellidoMaterno NVARCHAR(20) NOT NULL,
CURP VARCHAR(18),
Telefono VARCHAR(12),
Calle VARCHAR(20),
NumCalle VARCHAR(20),
Ciudad VARCHAR(20),
CONSTRAINT pk_Clientes
PRIMARY KEY (IdCliente)
);


#Crear la tabla Sucursal
CREATE TABLE Sucursal(
IdSucursal INT NOT NULL auto_increment,
NombreSucursal VARCHAR(20) NOT NULL,
Ubicacion VARCHAR(20) NOT NULL,
CONSTRAINT pk_Sucursal
PRIMARY KEY (IdSucursal)
);

#Crear la tabla Vehiculo
CREATE TABLE Vehiculo(
IdVehiculo INT NOT NULL auto_increment,
IdSucursal INT NOT NULL,
Marca VARCHAR(20) NOT NULL,
Anio VARCHAR(20) NOT NULL,
Modelo VARCHAR(20) NOT NULL,
Placa VARCHAR(20) NOT NULL,
CONSTRAINT pk_Vehiculo
PRIMARY KEY (IdVehiculo),
CONSTRAINT fk_Sucursal_Vehiculo
FOREIGN KEY (IdSucursal)
REFERENCES Sucursal(IdSucursal)
);

#Crear la tabla Renta
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