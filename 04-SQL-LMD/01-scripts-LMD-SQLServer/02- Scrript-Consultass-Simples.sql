--Lenguaje SQL-LMD
--Consultas simpleas 

USE NORTHWND;
GO

--Seleccionar todos los clientes 
SELECT * FROM Customers;

--Seleccionar todos los clientes pero solamente mostrando 
--la clave, nombre del ciente, ciudad y el Pais (Proyeccion)

SELECT CustomerID, CompanyName, City, Country
FROM Customers;

-- Alias de columna
SELECT CustomerID AS NumeroCliente, CompanyName AS 'Nombre Cliente', City Ciudad, Country
 AS [Ciudad Chida]
 FROM Customers;

--Campos Calculados!
--Seleccinar las ordenes de compra mostrando productos, la cantidad vendida
--precio de venta, descuento y el total

SELECT ProductID AS [Nombre Producto], UnitPrice AS [Precio],
	Quantity AS [Cantidad], Discount AS [Descuento],
	(UnitPrice * Quantity ) AS [Importe Sin Descuento],
	(UnitPrice * Quantity * (1 - Discount)) AS [Importe]
FROM [Order Details];

--Seleccionar las ordenes de compra,mostrando  el ciente al que se le vendio, 
--el empleado que la realizo, la fecha de la orden, el trasportista
--y la fecha de la orden hay que dividirla en año,mes,dia,trimestre.

SELECT OrderID AS [Numero de Orden],
OrderDate AS [Fecha de Orden],
CustomerID AS [Cliente],
EmployeeID AS [Empleado], 
ShipVia AS [Transportista],
YEAR(OrderDate) AS [Año de la compra],
MONTH (OrderDate) AS [Mes de la compra],
DAY (OrderDate) AS [Dia de la compra]
FROM Orders;

SELECT OrderID AS [Numero de Orden],
OrderDate AS [Fecha de Orden],
CustomerID AS [Cliente],
EmployeeID AS [Empleado], 
ShipVia AS [Transportista],
DATEPART(year, OrderDate) AS [Año de la compra],
DATEPART (mm, OrderDate) AS [Mes de la compra],
DATEPART (d, OrderDate) AS [Dia de la compra],
DATEPART (qq, OrderDate) AS [Trimestre],
DATEPART (week, OrderDate) AS [Semana],
DATEPART (WEEKDAY, OrderDate) AS [Dia Semana],
DATENAME (WEEKDAY, OrderDate) AS [Nombre Dia]
FROM Orders

Order by 9;

--Order by -> Ordenar los datos de forma ascendente y descendente 
--Seleccionar los empleados ordenados por su pais
SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY 2 DESC;

SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) DESC;

SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY [Nombre Completo] DESC;

SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY Country, City;

SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY Country DESC, City;

SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY Country DESC, City DESC;

SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY 2 ASC, 3 DESC;


SELECT CONCAT(TitleOfCourtesy, ' ' , FirstName , ' ' , LastName) AS [Nombre Completo],
Country AS [Pais], City AS [Ciudad]
FROM Employees
ORDER BY 1 ASC, Country DESC, 3 DESC;


--Seleccionar todos los productos que su precio sea mayor a 40.3, 
--(mostrar el numero del producto, nombre del producto, y el precio unitario)

SELECT ProductID AS [Numero de producto],
		ProductName AS [Nombre del Producto],
		UnitPrice AS [Precio]
FROM Products
WHERE UnitPrice > 40.3;

--///////////////////////////////////////////////
SELECT ProductID AS [Numero de producto],
		ProductName AS [Nombre del Producto],
		UnitPrice AS [Precio]
FROM Products
WHERE UnitPrice >= 40.3;

--//////////////////////////////////////////////
SELECT ProductID AS [Numero de producto],
		ProductName AS [Nombre del Producto],
		UnitPrice AS [Precio]
FROM Products
WHERE ProductName = 'Carnarvon Tigers';

--/////////////////////////////////////////////

SELECT ProductID AS [Numero de producto],
		ProductName AS [Nombre del Producto],
		UnitPrice AS [Precio]
FROM Products
WHERE ProductName <>  'Carnarvon Tigers';

--/////////////////////////////////////////////

SELECT ProductID AS [Numero de producto],
		ProductName AS [Nombre del Producto],
		UnitPrice AS [Precio]
FROM Products
WHERE ProductName !='Carnarvon Tigers';

--/////////////////////////////////////////////

--Seleccionar todas las ordenes que sean de brazil - rio de janeiro
--mostrando solo el numero de orden, la fecha de orden, pais de envio, ciudad 
--transportista 

SELECT  OrderID as [Numero de orden],
		OrderDate AS [Fecha de orden],
		ShipCountry AS [Pais de envio],
		ShipCity AS [Ciudad de envio],
		ShipVia AS [Transportitsta]
FROM Orders
WHERE  ShipCity = 'Rio de Janeiro';

--INNER JOIN
SELECT  o.OrderID as [Numero de orden],
		o.OrderDate AS [Fecha de orden],
		o.ShipCountry AS [Pais de envio],
		o.ShipCity AS [Ciudad de envio],
		s.ShipperID AS [Numero de transportista],
		s.CompanyName AS [Transportista]

FROM Orders AS o
INNER JOIN Shippers AS s
ON s.ShipperID = o.ShipVia
WHERE  ShipCity = 'Rio de Janeiro';

--Seleccionar todas las ordenes 
--mostrando lo mismo que la consulta aneterior 
--pero todas aquellas que no tengan region de envio 

SELECT  o.OrderID as [Numero de orden],
		o.OrderDate AS [Fecha de orden],
		o.ShipCountry AS [Pais de envio],
		o.ShipCity AS [Ciudad de envio],
		s.ShipperID AS [Numero de transportista],
		s.CompanyName AS [Transportista]

FROM Orders AS o
INNER JOIN Shippers AS s
ON s.ShipperID = o.ShipVia
WHERE  ShipRegion is not null;

--Seleccionar todas las ordenes enviadas a 
--brazil, alemania y que tengan region, ordenar de forma decendente por el shipcountry 

SELECT  o.OrderID as [Numero de orden],
		o.OrderDate AS [Fecha de orden],
		o.ShipCountry AS [Pais de envio],
		o.ShipCity AS [Ciudad de envio],
		s.ShipperID AS [Numero de transportista],
		s.CompanyName AS [Transportista]

FROM Orders AS o
INNER JOIN Shippers AS s
ON s.ShipperID = o.ShipVia
WHERE  (ShipCountry = 'Mexico' or 
		ShipCountry = 'Germany' or
		ShipCountry = 'Brazil') and
		ShipRegion is not null
		
Order by ShipRegion DESC;




 --Seleccionar todos los paises diferentes de mis clientes 
SELECT Country, City, CompanyName
FROM Customers
WHERE City = 'Buenos Aires'
ORDER BY 1 ASC;


SELECT *
FROM Products;

SELECT DISTINCT CategoryID, SupplierID
FROM Products;

USE BDEJEMPLO2;
GO

--Seleccionar cuantos puestos diferentes tienen 
--los representantes
--Funciones de agregado (Regresan un solo registro, no se puede utilizar un agregado si no existe un )
--Mas comunes son: COUNT (*) Cuentas las filas de una tabla, COUNT(Campo) Cuenta los valores del campo sin los null
--max()obtiene el numero maxinmo, min() minimo, sum() hace una suma, aug()saca e promedio
 SELECT * FROM Representantes;

 SELECT COUNT(DISTINCT Puesto) AS [Numero de puestos]
 FROM Representantes ;


 --Saber el precio minimo de un producto
 SELECT MIN(Precio) AS [Precio minimo]
 FROM Productos;
 --otra forma de verlo
 SELECT * 
 FROM Productos
 ORDER BY Precio ASC;
 
 --Listar las oficinas cuyas ventas estan por debajo del 80% de sus objetivos 
 SELECT Ciudad, Ventas, Objetivo, (.8 *Objetivo) AS [80% del objetivo]
 FROM Oficinas
 WHERE Ventas <(0.8 *Objetivo);

--Seleccionar los primeros 5 registyros de los pedidos 
SELECT TOP 5 Num_Pedido, Fecha_Pedido, Producto, Cantidad, Importe
FROM Pedidos
ORDER BY Importe DESC;

--	TEST DE RANGO (BETWEEN)
--Hallar los pedidos del ultimo trimestre de 1989
SELECT Num_Pedido, Fecha_Pedido, Fab, Producto, Importe
FROM Pedidos
WHERE Fecha_Pedido BETWEEN'1989-10-01' AND '1989-12-31'
ORDER BY Fecha_Pedido DESC;

--Otra forma 
SELECT Num_Pedido, Fecha_Pedido, Fab, Producto, Importe
FROM Pedidos
WHERE Fecha_Pedido >='1989-10-01' AND Fecha_Pedido <= '1989-12-31'
ORDER BY Fecha_Pedido DESC;
 
 --otra forma 
SELECT Num_Pedido, Fecha_Pedido, Fab, Producto, Importe
FROM Pedidos
WHERE datepart(quarter, Fecha_Pedido) = 4
ORDER BY Fecha_Pedido DESC;

--Hallar los pedidos que tienen un importe entre 30,000
--y 39,999.99 
SELECT Num_Pedido, Fecha_Pedido, Fab, Producto, Importe
FROM Pedidos
WHERE Importe BETWEEN 30000 AND 39999.99;

SELECT Num_Pedido, Fecha_Pedido, Fab, Producto, Importe
FROM Pedidos
WHERE Importe >= 30000 AND Importe <= 39999.99;

--Listar los representantes cuyas ventas no se encuentran 
--entre el 80% y el 120% de su cuota 
SELECT Num_Empl, Nombre,Puesto, Ventas, Cuota
FROM Representantes
WHERE  Ventas NOT BETWEEN (0.8* Cuota) AND (1.2 *Cuota);

SELECT Num_Empl, Nombre,Puesto, Ventas, Cuota
FROM Representantes
WHERE  NOT (Ventas >=  (0.8* Cuota) AND Ventas <= (1.2 *Cuota));

--Test de pertenencia a conjuntos (IN)
-- Hallar los pedidos de cuatro represetantes en concreto
SELECT  Num_Pedido, Fecha_Pedido, Importe,Rep 
FROM Pedidos
WHERE REP IN (107, 109, 101, 103);


SELECT  Num_Pedido, Fecha_Pedido, Importe,Rep 
FROM Pedidos
WHERE REP =107 OR
      REP =109 OR
	  REP =101 OR
	  REP =103;


--No ver esos numeros
SELECT  Num_Pedido, Fecha_Pedido, Importe,Rep 
FROM Pedidos
WHERE REP NOT IN (107, 109, 101, 103);

SELECT  Num_Pedido, Fecha_Pedido, Importe,Rep 
FROM Pedidos
WHERE  NOT (REP =107 OR
      REP =109 OR
	  REP =101 OR
	  REP =103);
SELECT * FROM Representantes;

USE BDEJEMPLO2;

--test de encaje de patrones (like )
SELECT *
FROM Clientes
WHERE Empresa LIKE '%A';


SELECT *
FROM Clientes
WHERE Empresa LIKE '[A-D]%';

SELECT *
FROM Clientes
WHERE Empresa LIKE '____';

SELECT *
FROM Clientes
WHERE Empresa LIKE '_organ';

--Muestra los registros de la empresa donde no
--empiezen con ADF
SELECT *
FROM Clientes
WHERE Empresa LIKE '[^ADF]%';

--Hallar todos los representantes que o bien:
--a) Trabajan en daimiel, Navarra, o Castellon; o bien 
--b) no tiene jefe y estan contratados desde junio de 1988; o
--c) superan su cuota pero tienen ventas de 600,000 o menos 

SELECT Oficina_Rep, Puesto, Fecha_Contrato, Jefe, Cuota, ventas
FROM Representantes
WHERE Oficina_Rep in (11,12,22) or 
      (Jefe IS NULL and Fecha_Contrato >='1988-06-01 ') or
	  (Ventas > Cuota and Ventas <= 600000)

--Con join
SELECT r.Num_Empl AS [Numero Empleado],
       r.Nombre AS [Nombre Empleado],
	   r.Fecha_Contrato AS [Fecha de Contrato],
	   r.Cuota AS [Cuota de Ventas],
	   r.Ventas AS [Ventas Totales],
	   o.Ciudad AS [Ciudad de la Oficina],
	   r.Jefe AS [Numero de Jefe]
FROM Representantes AS r
INNER JOIN Oficinas AS o
ON o.Oficina = r.Oficina_Rep
WHERE (o.Ciudad IN ('Daimiel', 'Navarra', 'Castellòn')) OR 
      (Jefe IS NULL AND Fecha_Contrato>='1988-06-01 ' ) OR
	  (r.Ventas>Cuota AND r.Ventas<=600000);

      

SELECT * FROM Oficinas;