--Consultas avanzadas BDEJEMPLO
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

 --Listasr todos los pedidos, mostrando el numero de pedido,
 --su importe y el nombre y limite de credito del cliente 
 SELECT * FROM Pedidos;
 SELECT * FROM Clientes;

 SELECT P.Num_Pedido, P.Importe, c.Empresa, c.Limite_Credito, p.Cliente
 FROM Pedidos AS p
 INNER JOIN Clientes AS c
 ON c.Num_Cli = p.Cliente