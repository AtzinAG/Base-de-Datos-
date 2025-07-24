CREATE DATABASE ControlPedidos;

USE ControlPedidos;

CREATE TABLE Cliente(
Num_Cli INT NOT  NULL identity(1,1),
Empresa NVARCHAR(20) NOT NULL,
Rep_Cli INT, 
Limite_Credito MONEY,
CONSTRAINT pk_Cliente
PRIMARY KEY (Num_Cli),
CONSTRAINT chk_LimiteCredito
CHECK (Limite_Credito > 0 AND Limite_Credito < 40000)
);
ALTER TABLE Cliente
ADD CONSTRAINT fk_Cliente_Representante
FOREIGN KEY (Rep_Cli)
REFERENCES Representantes(Num_Empl);


CREATE TABLE Representantes(
Num_Empl INT NOT NULL identity(1,1),
Nombre NVARCHAR(16) NOT NULL,
Edad INT,
OficinaRep INT,
Puesto NVARCHAR(13),
Fecha_Contrato DATE NOT NULL,
Jefe INT,
Cuota MONEY, 
Ventas MONEY NOT NULL,
CONSTRAINT pk_Representantes
PRIMARY KEY (Num_Empl),
CONSTRAINT fk_Representantes
FOREIGN KEY (Jefe)
REFERENCES Representantes(Num_Empl)
);
ALTER TABLE Representantes
ADD CONSTRAINT chk_Edad
CHECK (Edad>=18)

ALTER TABLE Representantes
ADD CONSTRAINT fk_Representantes_Oficinas
FOREIGN KEY (OficinaRep)
REFERENCES Oficinas(Oficina);

CREATE TABLE Oficinas (
Oficina INT NOT NULL identity(1,1),
Ciudad NVARCHAR(15) NOT NULL,
Region NVARCHAR(10) NOT NULL,
Jef INT,
Objetivo MONEY,
Ventas MONEY NOT NULL,
CONSTRAINT pk_Oficinas
PRIMARY KEY (Oficina),
CONSTRAINT fk_Oficinas_Representantes
FOREIGN KEY (Jef)
REFERENCES Representantes(Num_Empl),
CONSTRAINT chk_Ventas
CHECK (Ventas>=0)
);
GO

CREATE TABLE Productos(
Id_Fab CHAR(3) NOT NULL,
Id_Producto CHAR(5) NOT NULL,
Descripcion NVARCHAR(20) NOT NULL,
Precio MONEY NOT NULL,
Stock INT NOT NULL,
CONSTRAINT pk_Productos
PRIMARY KEY (Id_Fab, Id_Producto),
CONSTRAINT Unique_Descripcion
UNIQUE (Descripcion),
CONSTRAINT chk_Stock
CHECK (Stock > 0)
);
GO

CREATE TABLE Pedidos(
Num_Pedido INT NOT NULL identity(1,1),
Fecha_pedido DATE NOT NULL,
Cliente INT NOT NULL,
Rep INT,
Fab CHAR(3) NOT NULL,
Producto CHAR(5) NOT NULL,
Cantidad INT NOT NULL,
Importe MONEY NOT NULL,
CONSTRAINT pk_Pedidos
PRIMARY KEY (Num_Pedido),
CONSTRAINT fk_Pedidos_Clientes
FOREIGN KEY (Cliente)
REFERENCES Cliente(Num_Cli),
CONSTRAINT fk_Pedidos_Represetantes
FOREIGN KEY (Rep)
REFERENCES Representantes(Num_Empl),
CONSTRAINT fk_Pedidos_Productos
FOREIGN KEY (Fab, Producto)
REFERENCES Productos(Id_Fab, Id_Producto),
CONSTRAINT chk_Cantidad
CHECK (Cantidad>=0)
);



