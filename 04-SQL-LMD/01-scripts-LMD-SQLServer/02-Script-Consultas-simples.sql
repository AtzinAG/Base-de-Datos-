

USE NORTHWND;

--Seleccionar todos los clientes 
SELECT * FROM Customers;

--Seleccionar todos los clientes pero solamente mostrando 
--la clave, el nombre del cliente, ciudad y pais(Proyeccion)

SELECT CustomerID, CompanyName, City, Country
FROM Customers;

--Alias de columna
SELECT CustomerID AS NumeroCliente, CompanyName AS 'Nombre Cliente' , City Ciudad, Country AS [Ciudad Chida]
FROM Customers;


--Campos calculados
--Seleccionar las ordenes de compra mostrando los productos, la cantidad
--vendida, precio de venta, el descuento y el total

SELECT ProductID AS [Nombre producto], UnitPrice AS [Precio],
  Quantity AS [Cantidad], Discount AS [Descuento],
  (UnitPrice * Quantity  ) AS [Importe sin descuento] ,
  (UnitPrice * Quantity * (1 - Discount) ) AS [Importe] 
FROM [Order Details];

--Seleccionar las ordenes de compra, mostrando el cliente al que se le
--envio, el empleado que la realizo, la fecha de la orden, el transportista,
--y la fecha de la orden hay que dividirla en año, en mes, dia, trimestre

SELECT OrderID AS [Numero de orden],
OrderDate AS [Fecha de Orden],
CustomerID AS [Cliente], EmployeeID AS [Empleado],
ShipVia AS [Transportista],
YEAR (OrderDate) AS [Año de la compra],
MONTH (OrderDate) AS [Mes de la compra],
DAY (OrderDate) AS [Dia de la compra]
FROM Orders;




