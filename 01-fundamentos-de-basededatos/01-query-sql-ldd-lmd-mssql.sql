--SQL-LDD 
--crea una base de datos 
CREATE DATABASE bdpruebag1;

--cambiar de bd 
USE bdpruebag1;
--crear una tabla
CREATE TABLE categoria(
idcategoria int not null identity(1,1),
categorianombre nvarchar(20) not null,
constraint pk_categoria
primary key(idcategoria)

);
CREATE TABLE producto(
idproducto int not null,
nombreproducto varchar (20) not null,
descirpcion varchar(100) null,
existencia int not null, 
precio money not null,
idcategoria int not null,
constraint pk_producto 
primary key(idproducto),
constraint fk_producto_categoria
foreign key(idcategoria)
references categoria(idcategoria)
);
--SQL --LMD
--Instertar en la tabla categria
insert into categoria (categorianombre)
values ('Vinos y licores');
insert into categoria (categorianombre)
values('carnes frias'),
('Linea blanca '), 
('lacteos'); 

update categoria 
set categorianombre = 'Carnes re-frias'
where idcategoria = 2;

select * from categoria; 
select categorianombre from categoria;

