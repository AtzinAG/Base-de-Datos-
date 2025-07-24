CREATE DATABASE Teaches;


USE Teaches;


#Crear la tabla Instructor
CREATE TABLE Instructor(
IdInstructor INT NOT NULL auto_increment,
SSN VARCHAR(20) NOT NULL,
FName VARCHAR(20),
LName VARCHAR(20),
CONSTRAINT pk_Instructor
PRIMARY KEY (IdInstructor)
);


#Crear la tabla Class
CREATE TABLE Class(
IdClass INT NOT NULL auto_increment,
YearC VARCHAR(20),
Term VARCHAR(20),
Section VARCHAR(20),
CONSTRAINT pk_Class
PRIMARY KEY (IdClass,YearC,Term,Section)
);

#Crear la tabla Teahes
CREATE TABLE Teaches(
IdInstructor INT NOT NULL,
IdClass INT NOT NULL,
YearC VARCHAR(20),
Term VARCHAR(20),
Section VARCHAR(20),
CONSTRAINT fk_Instructor_Teaches
FOREIGN KEY (IdInstructor)
REFERENCES Instructor(IdInstructor),
CONSTRAINT fk_Class_Teaches
FOREIGN KEY (IdClass,YearC,Term,Section)
REFERENCES Class(IdClass,YearC,Term,Section)
);
