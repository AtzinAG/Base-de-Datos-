--Crear la base de datos empresa2
CREATE DATABASE Manages;
Go

USE Manages; 
Go

--Crear tabla Employee
CREATE TABLE Employee(
IdEmployee INT NOT NULL identity(1,1),
SSN INT NOT NULL,
FirstName  NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
NameEmployee NVARCHAR(20) NOT NULL,
Salary  NVARCHAR(20) NOT NULL,
Birthdate NVARCHAR(20),
AddressEmploye NVARCHAR(20) NOT NULL,
Sex NVARCHAR(20),
Deparment NVARCHAR(20) NOT NULL,
Jefe NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Employee
PRIMARY KEY (IdEmployee)
);
GO


--Crear tabla Department
CREATE TABLE Deparment(
IdDeparment INT NOT NULL identity(1,1),
NumeroDepto NVARCHAR(20) NOT NULL,
NameDpto NVARCHAR(20) NOT NULL,
Manager NVARCHAR(20) NOT NULL,
StartDate NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Deparment
PRIMARY KEY (IdDeparment)
);
GO

--Crear tabla Location
CREATE TABLE LocationDpto(
LocationDpto NVARCHAR(20) NOT NULL,
IdDepartment INT NOT NULL,
IdEmployee INT NOT NULL,
CONSTRAINT pk_LocationDpto
PRIMARY KEY (LocationDpto),
CONSTRAINT fk_Deparment_LocationDpto
FOREIGN KEY (IdDepartment)
REFERENCES Deparment(IdDeparment),
CONSTRAINT fk_Department_Employee
FOREIGN KEY (IdEmployee)
REFERENCES Employee(IdEmployee)
);

--Crear tabla Dependent
CREATE TABLE Dependentt(
IdEmployee INT NOT NULL identity(1,1),
NameDependent NVARCHAR(20) NOT NULL,
Sex NVARCHAR(20) NOT NULL,
Birthdate NVARCHAR(20) NOT NULL,
RelationShip NVARCHAR(20),
CONSTRAINT fk_Dependent_Employee
FOREIGN KEY (IdEmployee)
REFERENCES Employee(IdEmployee)
);


--Crear tabla Project
CREATE TABLE Project(
IdProject INT NOT NULL identity(1,1),
IdDeparment INT NOT NULL,
NameProject NVARCHAR(20) NOT NULL,
NumberProject NVARCHAR(20) NOT NULL,
LocationProject NVARCHAR(20),
CONSTRAINT pk_Project
PRIMARY KEY (IdProject),
CONSTRAINT fk_Deparment_Project
FOREIGN KEY (IdDeparment)
REFERENCES Deparment(IdDeparment)
);
GO


--Crear tabla Works_On
CREATE TABLE Works_On(
IdEmployee INT NOT NULL,
IdProject INT NOT NULL,
HoursWorksOn INT NOT NULL,
CONSTRAINT fk_Employee_WorksOn
FOREIGN KEY (IdEmployee)
REFERENCES Employee(IdEmployee),
CONSTRAINT fk_Project_WorksOn
FOREIGN KEY (IdProject)
REFERENCES Project(IdProject)
);