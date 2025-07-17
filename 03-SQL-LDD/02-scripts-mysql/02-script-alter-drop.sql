#crear base de datos empresapatito
CREATE DATABASE empresapatito;


#Usar la base de datos
USE empresapatito;


#Crear una tabla empleados 
CREATE TABLE empleados(
Idempleado int not null,
Nombre VARCHAR(100) NOT NULL,
Puesto VARCHAR(50),
FechaIngreso date,
Salario decimal(10,2), 
CONSTRAINT pk_empleados
PRIMARY KEY(Idempleado)
);


#Agregar una columna en la tabla empleados
ALTER TABLE empleados
ADD COLUMN CorreoElectronico VARCHAR(100);

SELECT * FROM empleados;

#modificar el tipo de dato de un campo
ALTER TABLE empleados
MODIFY COLUMN Salario decimal(12,2) not null;


#Renombrar un campo
ALTER TABLE empleados 
RENAME COLUMN CorreoElectronico to Email;

#crear tabla departamentos 
CREATE TABLE departamentos(
IdDepartamento int not null auto_increment primary key,
NombreDepto varchar(100)
);


#Agregar un campo a la tabla empleados,
#para que sea una foreign key
ALTER TABLE empleados
ADD COLUMN IdDepartamento int not null;


#Agregar llave foranea
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_departamento
FOREIGN KEY (IdDepartamento)
REFERENCES departamentos(IdDepartamento)


#eliminar la primary key de empleados
ALTER TABLE empleados
DROP PRIMARY KEY;


#Eliminar la froign key de la tabla empleados 
ALTER TABLE empleados
DROP FOREIGN KEY fk_empleados_departamento;

#Eliminar el auto increment 
ALTER TABLE departamentos
MODIFY COLUMN IdDepartamento INT NOT NULL;

#dpto
ALTER TABLE departamentos 
DROP primary key;


ALTER TABLE empleados
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);



CREATE TABLE Categoria(
id int NOT NULL primary key DEFAULT -1,
Nombre varchar(20),
Estatus char(1) DEFAULT 'a'
);


INSERT INTO Categoria
VALUES (1, 'Carnes', 'D');

SELECT * FROM Categoria;

INSERT INTO Categoria
VALUES (DEFAULT, 'Carnes', DEFAULT);

DROP TABLE Categoria;

#eliminar la columna email
ALTER TABLE empleados
DROP COLUMN Email;

ALTER TABLE empleados
ADD CONSTRAINT pk_empleados
PRIMARY KEY (Idempleado);


ALTER TABLE departamentos
ADD CONSTRAINT pk_departamentos
PRIMARY KEY (IdDepartamento);


#Eliminar tablas 
DROP TABLE Empleados;


DROP TABLE departamentos;

DROP TABLE Categoria;


#Eliminar la bd 

DROP DATABASE empresapatito;
