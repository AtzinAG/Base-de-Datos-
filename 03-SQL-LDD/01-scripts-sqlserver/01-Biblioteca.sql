--Crear la base de datos empresa2
CREATE DATABASE Biblioteca;
Go


USE Biblioteca;
Go

CREATE TABLE Libro(
numLibro INT NOT NULL identity(1,1),
numIsbn INT NOT NULL,
Titulo NVARCHAR(50) NOT NULL,
Autor NVARCHAR(20) NOT NULL,
Cantidad INT NOT NULL,
CONSTRAINT pk_Libro
PRIMARY KEY (numLibro)
);
Go

CREATE TABLE Lector(
numLector INT NOT NULL identity(1,1),
NumMem INT NOT NULL,
Nombre NVARCHAR(20) NOT NULL,
ApellidoPaterno NVARCHAR(20),
ApellidoMaterno NVARCHAR(20),
CONSTRAINT pk_Lector
PRIMARY KEY (numLector)
);
GO

CREATE TABLE Presta(
NumLector INT NOT NULL,
NumLibro INT NOT NULL,
CONSTRAINT fk_Lector_Presta
FOREIGN KEY (NumLector)
REFERENCES Lector(numLector),
CONSTRAINT fk_Libro_Presta
FOREIGN KEY (NumLibro)
REFERENCES Libro(numLibro)
);
GO
