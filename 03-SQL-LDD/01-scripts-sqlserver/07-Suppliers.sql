--Crear la base de datos Suppliers
CREATE DATABASE Suppliers;
GO

USE Suppliers;
GO

--Crear la tabla Suppliers
CREATE TABLE Suppliers(
IdSupplier INT NOT NULL identity(1,1),
CompanyName NVARCHAR(20) NOT NULL,
AddressSupplier NVARCHAR(20) NOT NULL,
Fax NVARCHAR(20),
City NVARCHAR(20),
Region NVARCHAR(20),
HomePage NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Suppliers
PRIMARY KEY (IdSupplier)
);

--Crear la tabla Contact-Suppliers
CREATE TABLE Contact_Suppliers(
IdContact INT NOT NULL identity(1,1),
IdSupplier INT NOT NULL,
FullName NVARCHAR(20)
CONSTRAINT pk_ContactSuppliers
PRIMARY KEY (IdContact),
CONSTRAINT fk_Suppliers_ContactSup
FOREIGN KEY (IdSupplier)
REFERENCES Suppliers(IdSupplier)
);

--Crear la tabla Categories
CREATE TABLE Categories(
IdCategory INT NOT NULL identity(1,1),
CategoryName NVARCHAR(20) NOT NULL,
DescriptionCat NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Categories
PRIMARY KEY (IdCategory),
);

--Crear la tabla Products
CREATE TABLE Products(
IdProduct INT NOT NULL identity(1,1),
ProductName NVARCHAR(20) NOT NULL,
UnitPrice NVARCHAR(20) NOT NULL,
UnitsInStock INT NOT NULL,
QuantityFerUnit NVARCHAR(20) NOT NULL,
IdSuppliers INT NOT NULL,
IdCategory INT NOT NULL,
CONSTRAINT pk_Products
PRIMARY KEY (IdProduct),
CONSTRAINT fk_Suppliers_Products
FOREIGN KEY (IdSuppliers)
REFERENCES Suppliers(IdSupplier),
CONSTRAINT fk_Category_Products
FOREIGN KEY (IdCategory)
REFERENCES Categories(IdCategory),
);
GO

--Crear la tabla Costumers
CREATE TABLE Costumers(
IdCostumer INT NOT NULL identity(1,1),
CompanyName NVARCHAR(20) NOT NULL,
City NVARCHAR(20),
Region NVARCHAR(20),
Phone NVARCHAR(20),
CONSTRAINT pk_Costumers
PRIMARY KEY (IdCostumer)
);

--Crear la tabla Contact_Costumers
CREATE TABLE Contact_Costumers(
IdContact INT NOT NULL identity(1,1),
IdCostumer INT NOT NULL,
FullName NVARCHAR(20) NOT NULL,
CONSTRAINT pk_ContactCostumers
PRIMARY KEY (IdContact),
CONSTRAINT fk_Costumers_ContactCostumers
FOREIGN KEY (IdCostumer)
REFERENCES Costumers(IdCostumer)
);

--Crear la tabla Employee
CREATE TABLE Employee(
IdEmployee INT NOT NULL identity(1,1),
FistName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
Birthdate DATE,
Repart_to INT,
CONSTRAINT pk_Employee
PRIMARY KEY (IdEmployee)
);


--Recursiva
ALTER TABLE Employee
ADD CONSTRAINT fk_Employee_RepartTo
FOREIGN KEY (Repart_to)
REFERENCES Employee(IdEmployee);
GO

--Crear la tabla Orders
CREATE TABLE Orders(
IdOrder INT NOT NULL identity(1,1),
Code NVARCHAR(20) NOT NULL,
OrderDate NVARCHAR(20) NOT NULL,
RequeredDate NVARCHAR(20),
IdEmployee INT NOT NULL,
IdCostumers INT NOT NULL,
CONSTRAINT pk_Order
PRIMARY KEY (IdOrder),
CONSTRAINT fk_Employye_Orders
FOREIGN KEY (IdEmployee)
REFERENCES Employee(IdEmployee),
CONSTRAINT fk_Costumers_Order
FOREIGN KEY (IdCostumers)
REFERENCES Costumers(IdCostumer)
);


--Crear la tabla Details
CREATE TABLE Details(
IdProduct INT NOT NULL,
IdOrder INT NOT NULL,
UnitPrice NVARCHAR(20) NOT NULL,
Quantity NVARCHAR(20) NOT NULL,
Discount NVARCHAR(20),
CONSTRAINT fk_Product_Detail
FOREIGN KEY (IdProduct)
REFERENCES Products(IdProduct),
CONSTRAINT fk_Order_Detail
FOREIGN KEY (IdOrder)
REFERENCES Orders(IdOrder)
);


--Crear la tabla Shippers
CREATE TABLE Shippers(
IdShippers INT NOT NULL identity(1,1),
CompanyName NVARCHAR(20) NOT NULL,
CONSTRAINT pk_Shippers
PRIMARY KEY (IdShippers)
);

--Crear la tabla PhoneShippers
CREATE TABLE PhoneShippers(
IdPhoneShipper INT NOT NULL identity(1,1),
IdShippers INT NOT NULL,
Phone NVARCHAR(15),
CONSTRAINT pk_PhoneShippers
PRIMARY KEY (IdPhoneShipper),
CONSTRAINT fk_Shippers_Phone
FOREIGN KEY (IdShippers)
REFERENCES Shippers(IdShippers)
);