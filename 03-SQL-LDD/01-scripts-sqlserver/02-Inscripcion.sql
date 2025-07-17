--Crear la base de datos 
CREATE DATABASE Inscribirse;
GO

USE Inscribirse;
GO

--Crear la tabla Estudiante
CREATE TABLE Estudiante(
IdEstudiante  INT NOT NULL identity(1,1),
Matricula NVARCHAR(20) NOT NULL,
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno NVARCHAR(20) NOT NULL,
ApellidoMaterno NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Estudiante
PRIMARY KEY (IdEstudiante)
);
GO

--Crear la tabla Curso
CREATE TABLE Curso(
IdCurso INT NOT NULL identity(1,1),
CodigoCurso INT NOT NULL,
NombreCurso NVARCHAR(20) NOT NULL
CONSTRAINT pk_Curso
PRIMARY KEY (IdCurso)
);

--Crear la tabla Inscripcion
CREATE TABLE Inscripcion(
IdCurso INT NOT NULL,
IdEstudiante INT NOT NULL,
FechaInscripcion DATE NOT NULL,
CONSTRAINT fk_Curso_Inscripcion
FOREIGN KEY (IdCurso)
REFERENCES Curso(IdCurso),
CONSTRAINT fk_Estudiante_Inscripcion
FOREIGN KEY (IdEstudiante)
REFERENCES Estudiante(IdEstudiante)
);
GO