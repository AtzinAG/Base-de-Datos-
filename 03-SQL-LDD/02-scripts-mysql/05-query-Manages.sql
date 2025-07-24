CREATE DATABASE Manages;


USE Manages; 


#Crear tabla Employee
CREATE TABLE Employee(
IdEmployee INT NOT NULL auto_increment,
SSN INT NOT NULL,
FirstName  VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
NameEmployee VARCHAR(20) NOT NULL,
Salary  VARCHAR(20) NOT NULL,
Birthdate VARCHAR(20),
AddressEmploye VARCHAR(20) NOT NULL,
Sex VARCHAR(20),
Deparment VARCHAR(20) NOT NULL,
Jefe VARCHAR(20) NOT NULL,
CONSTRAINT pk_Employee
PRIMARY KEY (IdEmployee)
);


#Crear tabla Department
CREATE TABLE Deparment(
IdDeparment INT NOT NULL auto_increment,
NumeroDepto VARCHAR(20) NOT NULL,
NameDpto VARCHAR(20) NOT NULL,
Manager VARCHAR(20) NOT NULL,
StartDate VARCHAR(20) NOT NULL,
CONSTRAINT pk_Deparment
PRIMARY KEY (IdDeparment)
);


#Crear tabla Location
CREATE TABLE LocationDpto(
LocationDpto VARCHAR(20) NOT NULL,
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

#Crear tabla Dependent
CREATE TABLE Dependentt(
IdEmployee INT NOT NULL auto_increment,
NameDependent VARCHAR(20) NOT NULL,
Sex VARCHAR(20) NOT NULL,
Birthdate VARCHAR(20) NOT NULL,
RelationShip VARCHAR(20),
CONSTRAINT fk_Dependent_Employee
FOREIGN KEY (IdEmployee)
REFERENCES Employee(IdEmployee)
);


#Crear tabla Project
CREATE TABLE Project(
IdProject INT NOT NULL auto_increment,
IdDeparment INT NOT NULL,
NameProject VARCHAR(20) NOT NULL,
NumberProject VARCHAR(20) NOT NULL,
LocationProject VARCHAR(20),
CONSTRAINT pk_Project
PRIMARY KEY (IdProject),
CONSTRAINT fk_Deparment_Project
FOREIGN KEY (IdDeparment)
REFERENCES Deparment(IdDeparment)
);



#Crear tabla Works_On
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