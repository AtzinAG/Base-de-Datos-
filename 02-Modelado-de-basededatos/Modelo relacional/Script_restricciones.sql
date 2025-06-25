--Crear base de Datos 
CREATE DATABASE restriccionesbdg1;

--utilizar la base de datos
USE restriccionesbdg1;


--Crear la tabla categoria
CREATE TABLE categoria(
categoriaid int,
nombre nvarchar(30)
);

insert into categoria
values (1,  'Carnes Frias');

SELECT * FROM categoria;

insert into categoria
values (1,  'Vinos y Licores');

SELECT * FROM categoria;

INSERT INTO categoria
VALUES (null, 'Ropa');

SELECT * FROM categoria;

drop table categoria;

CREATE TABLE categoria(
    categoriaid int not null,
	nombre nvarchar(30),
	constraint pk_categoria
	primary key (categoriaid)
);

INSERT INTO categoria
values (1,  'Carnes Frias');

SELECT * FROM categoria;

INSERT INTO categoria
values (2,  'Vinos y Licores');


INSERT INTO categoria
VALUES (null, 'Ropa');
SELECT * FROM categoria;

drop table categoria;

CREATE TABLE categoria(
    categoriaid int not null,
	nombre nvarchar(30) not null,
	constraint pk_categoria
	primary key (categoriaid),
	constraint unique_nombre
	unique(nombre)
);
INSERT INTO categoria
values (1,  'Carnes Frias');

INSERT INTO categoria
values (2,  'Vinos y Licores');

SELECT * FROM categoria;

drop table categoria;

CREATE TABLE categoria(
    categoriaid int not null,
	nombre nvarchar(30) not null,
	constraint pk_categoria
	primary key (categoriaid),
	constraint unique_nombre
	unique(nombre)
);

drop table producto;
CREATE TABLE producto(
     productoid int not null,
	 nombreprod nvarchar(20) not null,
	 precio money not null,
	 existencia numeric(10,2) not null,
	 categoria int, 
	 constraint pk_producto
	 primary key(productoid),
	 constraint unique_nombreprod
	 unique(nombreprod),
	 constraint chk_precio
	 check(precio>0 and precio<=4000),
	 constraint chk_existencia
	 check(existencia>=0),
	 constraint fk_producto_categoria
	 foreign key (categoria)
	 references categoria(categoriaid)
	 
);
INSERT INTO categoria
values (1,  'Carnes Frias');

INSERT INTO categoria
values (2,  'Vinos y Licores');

INSERT INTO categoria
values (8,  'Ropa china');

INSERT INTO producto
values(1, 'Tonayan', 4000, 4, 2);

INSERT INTO producto
values(2, 'Tonayan2', 1250.6, 4, 2);

INSERT INTO producto
values(3, 'Bucañas', 200, 8, 2);

INSERT INTO producto
values(4, 'Calzon Chino', 6.3, 890, 8);


SELECT * FROM categoria; 
SELECT * FROM producto;
SELECT *
FROM producto AS p
INNER JOIN categoria as c
ON c.categoriaid = p.categoria;
;
