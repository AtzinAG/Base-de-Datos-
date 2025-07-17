--Crear la base de datos Airport
CREATE DATABASE Airport;
GO

USE Airport;
GO

CREATE TABLE Airport(
IdAirport INT NOT NULL identity(1,1),
City NVARCHAR(20),
StateAirport NVARCHAR(20),
NameAirport NVARCHAR(20),
CONSTRAINT pk_Airport
PRIMARY KEY (IdAirport)
);

-- Crear la tabla Aiplane_type
CREATE TABLE Aiplane_type (
 TypeName NVARCHAR(20) NOT NULL,
 Company NVARCHAR(20),
 MaxSeats NVARCHAR(20),
 CONSTRAINT pk_AirplaneType
 PRIMARY KEY (TypeName)
 );

 -- Crear la tabla Can_land
CREATE TABLE Can_land (
TypeName NVARCHAR(20) NOT NULL,
IdAirport INT NOT NULL,
CONSTRAINT fk_AirplaneCode_CanLand
FOREIGN KEY (TypeName)
REFERENCES Aiplane_type(TypeName),
CONSTRAINT fk_Airport_CanLand
FOREIGN KEY (IdAirport)
REFERENCES Airport(IdAirport)
);

 -- Crear la tabla Airplane
CREATE TABLE Airplane (
IdAirplane INT NOT NULL identity(1,1),
Total_no_of_seats NVARCHAR(20) NOT NULL,
TypeName NVARCHAR(20),
CONSTRAINT pk_Airplane
PRIMARY KEY (IdAirplane),
CONSTRAINT fk_AirplaneType_Airplane
FOREIGN KEY (TypeName)
REFERENCES Aiplane_type(TypeName)
);


-- Crear la tabla Flight
CREATE TABLE Flight(
IdFlight INT NOT NULL identity(1,1),
Airline NVARCHAR(20) NOT NULL,
Weekdays NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Flight
PRIMARY KEY (IdFlight)
);


-- Crear la tabla FlightLeg
CREATE TABLE FlightLeg (
    LegNo INT NOT NULL,
	IdFlight INT NOT NULL,
    Departure_AirportID INT NOT NULL,
    Arrival_AirportID INT NOT NULL,
    Scheduled_Dep_Time INT,
    Scheduled_Arr_Time INT,

    CONSTRAINT pk_FlightLeg 
	PRIMARY KEY (LegNo),

	--
   CONSTRAINT fk_FlightLeg_Flight 
   FOREIGN KEY (IdFlight)
    REFERENCES Flight(IdFlight),


    CONSTRAINT fk_FlightLeg_Dep_Airport 
	FOREIGN KEY (Departure_AirportID)
    REFERENCES Airport(IdAirport),

    CONSTRAINT fk_FlightLeg_Arr_Airport 
	FOREIGN KEY (Arrival_AirportID)
        REFERENCES Airport(IdAirport)
);



-- Crear la tabla LegInstance
CREATE TABLE  LegInstance(
LegNo INT NOT NULL,
Departure_AirportID INT NOT NULL,
 Arrival_AirportID INT NOT NULL,	
 IdFlight INT NOT NULL,
 AirportDeports NVARCHAR(20) NOT NULL,
 DepTime NVARCHAR(20) NOT NULL,
 ArrivalAirportID INT NOT NULL,
 ArrTime NVARCHAR(20) NOT NULL,
 Total_no_of_seats NVARCHAR(20) NOT NULL,
 IdAirplane INT NOT NULL ,
 CONSTRAINT fk_FlightLeg_LegInstance
 FOREIGN KEY (LegNo)
 REFERENCES FlightLeg(LegNo),
 CONSTRAINT fk_FlightLeg_LegInstance 
 FOREIGN KEY (Departure_AirportID)
 REFERENCES Airport(IdAirport),
 CONSTRAINT fk_FlightLeg_LegInstance 
 FOREIGN KEY (Arrival_AirportID)
 REFERENCES Airport(IdAirport),
 CONSTRAINT fk_Flight_LegInstance 
 FOREIGN KEY (IdFlight)
 REFERENCES Flight(IdFlight),
 CONSTRAINT fk_Airport_LegInstance 
 FOREIGN KEY (DepTime)
 REFERENCES Airport(IdAirport),
CONSTRAINT fk_Airport_LegInstance 
 FOREIGN KEY (ArrivalAirportID)
 REFERENCES Airport(IdAirport),
 CONSTRAINT fk_Airport_LegInstance 
 FOREIGN KEY ( ArrTime)
 REFERENCES Airport(IdAirport),
 CONSTRAINT fk_Airplane_LegInstance
 FOREIGN KEY (Total_no_of_seats)
 REFERENCES Airplane(Total_no_of_seats),
 CONSTRAINT fk_Airplane_LegInstance
 FOREIGN KEY (IdAirplane)
 REFERENCES Airplane(IdAirplane)
);

-- Crear la tabla Seat
CREATE TABLE  Seat(
DateSeat DATE NOT NULL,
LegNo INT NOT NULL,
DepartureAirport INT NOT NULL,
ArrivalAirportID INT NOT NULL,
IdFlight INT NOT NULL,
IdAirplane INT NOT NULL ,
SeatNo NVARCHAR(20),
CONSTRAINT fk_FlightLeg_LegInstance
 FOREIGN KEY (LegNo)
 REFERENCES FlightLeg(LegNo),
  CONSTRAINT fk_FlightLeg_LegInstance 
 FOREIGN KEY (Departure_AirportID)
 REFERENCES Airport(IdAirport),
 CONSTRAINT fk_Airplane_LegInstance
 FOREIGN KEY (IdAirplane)
 REFERENCES Airplane(IdAirplane),
  CONSTRAINT fk_Flight_LegInstance 
 FOREIGN KEY (IdFlight)
 REFERENCES Flight(IdFlight),
);