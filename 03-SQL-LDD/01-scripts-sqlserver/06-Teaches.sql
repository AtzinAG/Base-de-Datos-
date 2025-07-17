--Crear la base de datos Teaches

CREATE DATABASE Teaches;
GO

USE Teaches;
GO

--Crear la tabla Instructor
CREATE TABLE Instructor(
IdInstructor INT NOT NULL identity(1,1),
SSN NVARCHAR(20) NOT NULL,
FName NVARCHAR(20),
LName NVARCHAR(20),
CONSTRAINT pk_Instructor
PRIMARY KEY (IdInstructor)
);
GO

--Crear la tabla Class
CREATE TABLE Class(
IdClass INT NOT NULL identity(1,1),
YearC NVARCHAR(20),
Term NVARCHAR(20),
Section NVARCHAR(20),
CONSTRAINT pk_Class
PRIMARY KEY (IdClass,YearC,Term,Section)
);

--Crear la tabla Teahes
CREATE TABLE Teaches(
IdInstructor INT NOT NULL,
IdClass INT NOT NULL,
YearC NVARCHAR(20),
Term NVARCHAR(20),
Section NVARCHAR(20),
CONSTRAINT fk_Instructor_Teaches
FOREIGN KEY (IdInstructor)
REFERENCES Instructor(IdInstructor),
CONSTRAINT fk_Class_Teaches
FOREIGN KEY (IdClass,YearC,Term,Section)
REFERENCES Class(IdClass,YearC,Term,Section)
);
