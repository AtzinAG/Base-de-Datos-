--Consultas Avanzadas 

--Hallar todos los representantes que o bien:
--a) trabajan en daimiel, Navarra, o Castellon; o bien
--b) No tienen Jefe y estan contratados desde junio de 1988; o 
--c) superan su cuota pero tienen ventas de 600000 o menos 


Select r.Num_Empl AS [Numero Empleado], 
	r.Nombre AS [Nombre Empleado],
	r.Fecha_Contrato AS [Fecha de Contrato],
	r.Cuota AS [Cuota de Ventas],
	r.Ventas AS [Ventas Totales],
	o.Ciudad AS [Ciudad de la Oficina],
	r.Jefe AS [Numero de Jefe]
From Representantes AS r
INNER JOIN Oficinas AS o
ON o.Oficina =r.Oficina_Rep
Where (o.Ciudad in ('Daimiel','Navarra','Castellón')) or
		(Jefe IS NULL and Fecha_Contrato >='1988-06-01') or 
		(r.Ventas> Cuota and r.Ventas<=600000)	
;

--Listar todos los pedidos mostrando el numero de pedido,
--su importe y el nombre y limite de credito del cliente 

SELECT p.Importe, p.Importe,c.Empresa,c.Limite_Credito
FROM Pedidos AS p
INNER JOIN Clientes AS C
ON c.Num_Cli = p.Cliente;


USE BDEJEMPLO2;
GO
--Listar las oficinas con un objetivo superior a 600000,
--mostrando, el nombre de la ciudad y el nombre del representante y su puesto
SELECT o.Ciudad AS [Oficina],
       r.Nombre AS [Representante],
	   r.Puesto AS [Puesto], o.Objetivo AS [Objetivo de Ventas]
FROM Oficinas AS o
INNER JOIN Representantes AS r
ON o.Jef = r.Num_Empl
WHERE o.Objetivo > 600000;

--Listar todos los pedidos mostrando el numero de pedido, el importe, el nombre, 
--y limite de credito del cliente

SELECT pe.Num_Pedido AS [Numero Pedido],
       pe.Importe AS [Importe],
	   c.Empresa AS [Cliente],
	   c.Limite_Credito AS [Limite de Credito]
FROM Pedidos AS pe
INNER JOIN Clientes AS c
ON pe.Cliente = c.Num_Cli;



--Listar cada representante mostrando su nombre, la ciudad
--y la region en que trabajan 

SELECT r.Nombre AS [Nombre del representante],
       o.Ciudad AS [Oficina],
	   o.Region AS [Region]
FROM Representantes AS r
INNER JOIN Oficinas AS o
ON o.Oficina = r.Oficina_Rep

--Listar las oficinas (ciudad), nombres y puestos de sus jefes
SELECT r.Nombre AS [Nombre del representante],
       o.Ciudad AS [Oficina],
	   o.Region AS [Region]
FROM Representantes AS r
INNER JOIN Oficinas AS o
ON o.Jef = r.Num_Empl;

--Listar los pedidos, mostrando el numero de pedido, el importe 
--y la cantidad de cada producto
--Primary compuesta
SELECT pe.Num_Pedido AS [Numero de pedido],
       pe.Importe AS [Importe de pedido], pro.Descripcion AS [Descripcion],
	   pro.Stock AS [Cantidad del producto]
FROM Pedidos AS pe
INNER JOIN  Productos AS pro
ON pe.Producto = pro.Id_producto
   AND pe.Fab = pro.Id_fab;


--Listar los nombre de los empleados y los nombres de sus jefes
SELECT r.Num_Empl AS [Numero de empleado],
       r.Nombre AS [Nombre del empleado],
	   re.Nombre AS [Nombre de jefe]
FROM Representantes AS r
INNER JOIN Representantes AS re
ON r.Num_Empl = re.Jefe

--Listar los pedidos con un importe suuperior a 25000, incluyendo el 
--numero de pedido, importe, nombre del representante que tomo nota nota del pedido
--y el nombre del cliente

SELECT pe.Num_Pedido AS [Numero de pedido],
       pe.Importe,
	   r.Nombre,
	   c.Empresa
FROM Pedidos AS pe
INNER JOIN Representantes AS r
ON pe.Rep = r.Num_Empl
INNER JOIN Clientes AS c
ON c.Num_Cli = pe.Cliente
WHERE pe.Importe > 25000

--Listar los pedidos superiores a 25000 mostrando, el numero de pedido
--el nombre del cliente que lo encargo y el nombre del representante
--asignado al cliente y el importe

SELECT
FROM Pedidos AS p
INNER JOIN Clientes AS c 
ON p.Cliente = c.Num_Cli
INNER JOIN Representantes AS r
ON 