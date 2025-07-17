
--Crear la base de datos 
CREATE DATABASE Doctor;
GO 

USE Doctor;
GO

--Crear la tabla Doctores
CREATE TABLE Doctor(
IdDoctor INT NOT NULL identity(1,1),
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno NVARCHAR(20) NOT NULL,
ApellidoMaterno NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Doctor
PRIMARY KEY (IdDoctor)
);

--Crear la tabla Pacientes
CREATE TABLE Pacientes(
IdPaciente INT NOT NULL identity(1,1),
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno NVARCHAR(20) NOT NULL,
ApellidoMaterno NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Paciente
PRIMARY KEY (IdPaciente)
);
GO

--Crear la tabla Atencion
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
GO


