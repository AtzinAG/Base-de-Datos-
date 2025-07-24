
#Crear la base de datos 
CREATE DATABASE Doctor;


USE Doctor;


#Crear la tabla Doctores
CREATE TABLE Doctor(
IdDoctor INT NOT NULL auto_increment,
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno VARCHAR(20) NOT NULL,
ApellidoMaterno VARCHAR(20) NOT NULL,
CONSTRAINT pk_Doctor
PRIMARY KEY (IdDoctor)
);

#Crear la tabla Pacientes
CREATE TABLE Pacientes(
IdPaciente INT NOT NULL auto_increment,
Nombre VARCHAR(20) NOT NULL,
ApellidoPaterno VARCHAR(20) NOT NULL,
ApellidoMaterno VARCHAR(20) NOT NULL,
CONSTRAINT pk_Paciente
PRIMARY KEY (IdPaciente)
);


#Crear la tabla Atencion
CREATE TABLE Atencion(
IdDoctor INT NOT NULL,
IdPaciente INT NOT NULL,
FechaDiagnostico  DATE,
CONSTRAINT fk_Doctor_Atencion
FOREIGN KEY (IdDoctor)
REFERENCES Doctor(IdDoctor),
CONSTRAINT fk_Pacientes_Atencion
FOREIGN KEY (IdPaciente)
REFERENCES Pacientes(IdPaciente)
);
