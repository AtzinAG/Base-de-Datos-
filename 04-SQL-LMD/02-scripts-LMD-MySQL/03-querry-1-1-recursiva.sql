
CREATE DATABASE ejercicio1999;

USE ejercicio1999;


CREATE TABLE Empleado(
Empleadoid INT NOT NULL auto_increment,
Nombre NVARCHAR(15) NOT NULL,
Apellido1 NVARCHAR(15) NOT NULL,
Apellido2 NVARCHAR(15),
Direccion NVARCHAR(50) NOT NULL,
Salario DECIMAL(10,2) NOT NULL,
Jef INT,
Departamento INT NOT NULL,
CONSTRAINT pk_Empleado
PRIMARY KEY (Empleadoid),
CONSTRAINT chk_Salario
CHECK (Salario between 200 AND 50000),
CONSTRAINT fk_Empleado_Jef
FOREIGN KEY (Jef)
REFERENCES Empleado(Empleadoid)
ON DELETE NO ACTION
ON UPDATE NO ACTION
);


CREATE TABLE Departamento(
DeptoId INT NOT NULL auto_increment,
NombreDepto NVARCHAR(20) NOT NULL,
Estatus CHAR(2) NOT NULL,
Administrador INT NOT NULL,
CONSTRAINT pk_Departamento
PRIMARY KEY (DeptoId),
CONSTRAINT unique_nombreDepto
UNIQUE(NombreDepto),
CONSTRAINT chk_estatus
CHECK(Estatus IN ('SI', 'NO')),
CONSTRAINT fk_empleado_Depto
FOREIGN KEY (Administrador)
REFERENCES Empleado(Empleadoid)
);


ALTER TABLE Empleado
ADD CONSTRAINT fk_empleado_Depto1
FOREIGN KEY (Departamento)
REFERENCES Departamento(DeptoId);


CREATE TABLE Ubicacion(
UbicacionId INT NOT NULL auto_increment,
Ubicacion NVARCHAR(15) NOT NULL,
DeptoId INT NOT NULL,
CONSTRAINT pk_Ubicacion
PRIMARY KEY (UbicacionId),
CONSTRAINT unique_depto
UNIQUE(DeptoId),
CONSTRAINT fk_Ubicacion_Depto
FOREIGN KEY (DeptoId )
REFERENCES Departamento(DeptoId)
);

