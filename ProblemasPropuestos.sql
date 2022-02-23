create database bd1;
go
use bd1;
go
--2 - Crear una tabla (create table - sp_tables - sp_columns - drop table)
--Primer problema:
if object_id('Agenda') is not null
	drop table Agenda;

create table /Agenda
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

create table Agenda
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

create table Agenda
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

exec sp_tables @table_owner = 'dbo';

exec sp_columns Agenda;

drop table Agenda;

drop table Agenda;

--Segundo problema:
if object_id('Libros') is not null
	drop table Libros;

exec sp_tables @table_owner='dbo';

create table Libros
(
	Titulo varchar(20),
	Autor varchar(30),
	Editorial varchar(15)
);

create table Libros
(
	Titulo varchar(20),
	Autor varchar(30),
	Editorial varchar(15)
);

exec sp_tables @table_owner='dbo';

exec sp_columns Libros;

drop table Libros;

drop table Libros;

--3 - Insertar y recuperar registros de una tabla (insert into - select)
--Primer problema:
if object_id('Agenda') is not null
	drop table Agenda;

create table Agenda
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

exec sp_tables @table_owner='dbo';

exec sp_columns Agenda;

insert into Agenda(Apellido,Nombre,Domicilio,Telefono)
	values ('Moreno','Alberto','Colon 123','4234567');
insert into Agenda(Apellido,Nombre,Domicilio,Telefono)
	values('Torres','Juan','Avellaneda 135','4458787');

select * from Agenda;

drop table Agenda;

drop table Agenda;

--Segundo problema:
if object_id('Libros') is not null
	drop table Libros;

create table Libros
(
	Titulo varchar(20),
	Autor varchar(30),
	Editorial varchar(15)
);

exec sp_tables @table_owner='dbo';

exec sp_columns Libros;

insert into Libros (Titulo,Autor,Editorial)
	values ('El aleph','Borges','Planeta');
insert into Libros (Titulo,Autor,Editorial) 
	values ('Martin Fierro','Jose Hernandez','Emece');
insert into Libros (Titulo,Autor,Editorial)
	values ('Aprenda PHP','Mario Molina','Emece');

select * from Libros;

--4 - Tipos de datos básicos
--Primer problema
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Nombre varchar(20),
	Actor varchar(20),
	Duracion int,
	Cantidad int
);

exec sp_columns Peliculas;

insert into Peliculas (Nombre, Actor, Duracion, Cantidad)
	values ('Mision imposible','Tom Cruise',128,3);
insert into Peliculas (Nombre, Actor, Duracion, Cantidad)
	values ('Mision imposible 2','Tom Cruise',130,2);
insert into Peliculas (Nombre, Actor, Duracion, Cantidad)
	values ('Mujer bonita','Julia Roberts',118,3);
insert into Peliculas (Nombre, Actor, Duracion, Cantidad)
	values ('Elsa y Fred','China Zorrilla',110,2);

select * from Peliculas;

--Segundo problema:
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	Nombre varchar(20),
	Documento varchar(8),
	Sexo varchar(1),
	Domicilio varchar(30),
	SueldoBasico float
);

exec sp_columns Empleados;

insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
	values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
	values ('Ana Acosta','24555666','f','Colon 134',650);
insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
	values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select * from Empleados;

--5 - Recuperar algunos campos (select)
--Primer problema:
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Titulo varchar(20),
	Actor varchar(20),
	Duracion int,
	Cantidad int
);

exec sp_columns Peliculas;

insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Mision imposible','Tom Cruise',180,3);
insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Mision imposible 2','Tom Cruise',190,2);
insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Mujer bonita','Julia Roberts',118,3);
insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Elsa y Fred','China Zorrilla',110,2);
	
select Titulo,Actor from Peliculas;

select Titulo,Duracion from Peliculas;

select Titulo,Cantidad from Peliculas;

--Segundo problema:
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados(
	Nombre varchar(20),
	Documento varchar(8), 
	Sexo varchar(1),
	Domicilio varchar(30),
	SueldoBasico float
);

exec sp_columns Empleados;

insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
	values ('Juan Juarez','22333444','m','Sarmiento 123',500);
insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
	values ('Ana Acosta','27888999','f','Colon 134',700);
insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
	values ('Carlos Caseres','31222333','m','Urquiza 479',850);

select * from Empleados;

select Nombre,Documento,Domicilio from Empleados;

select Documento,Sexo,SueldoBasico from Empleados

--6 - Recuperar algunos registros (where)
--Primer problema:
if object_id('Agenda') is not null
	drop table Agenda;

create table Agenda 
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

exec sp_columns Agenda;

insert into Agenda(Apellido,Nombre,Domicilio,Telefono) 
	values ('Acosta', 'Ana', 'Colon 123', '4234567');
insert into Agenda(Apellido,Nombre,Domicilio,Telefono) 
	values ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
insert into Agenda(Apellido,Nombre,Domicilio,Telefono) 
	values ('Lopez', 'Hector', 'Salta 545', '4887788'); 
insert into Agenda(Apellido,Nombre,Domicilio,Telefono) 
	values ('Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into Agenda(Apellido,Nombre,Domicilio,Telefono) 
	values ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

select * from Agenda;

select * from Agenda 
	where Nombre='Marisa';

select Nombre,Domicilio from Agenda
	where Apellido='Lopez';

select Nombre from Agenda
	where Telefono='4545454';

--Segundo problema:
if object_id('Libros') is not null
	drop table Libros;

create table Libros 
(
	Titulo varchar(20),
	Autor varchar(30),
	Editorial varchar(15)
);

exec sp_columns Libros;

insert into Libros(Titulo,Autor,Editorial) 
	values ('El aleph','Borges','Emece');
insert into Libros(Titulo,Autor,Editorial)
	values ('Martin Fierro','Jose Hernandez','Emece');
insert into Libros(Titulo,Autor,Editorial) 
	values ('Martin Fierro','Jose Hernandez','Planeta');
insert into Libros(Titulo,Autor,Editorial) 
	values ('Aprenda PHP','Mario Molina','Siglo XXI');

select * from Libros
	where Autor='Borges';

select Titulo from Libros
	where Editorial='Emece';

select Editorial from Libros
	where Titulo='Martin Fierro';

--7 - Operadores relacionales
--Primer problema:
if object_id('Articulos') is not null
	drop table Articulos;

create table Articulos
(
  Codigo int,
  Nombre varchar(20),
  Descripcion varchar(30),
  Precio float,
  Cantidad int
);

exec sp_columns Articulos;

insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (1,'impresora','Epson Stylus C45',400.80,20);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (2,'impresora','Epson Stylus C85',500,30);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (3,'monitor','Samsung 14',800,10);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (4,'teclado','ingles Biswal',100,50);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (5,'teclado','español Biswal',90,50);

select * from Articulos
	where Nombre='impresora';

select * from Articulos
	where Precio>=400;

select Codigo, Nombre from Articulos
	where Cantidad<30;

select Nombre, Descripcion from Articulos
	where Precio<>100;

--Segundo problema:
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Titulo varchar(20),
	Actor varchar(20),
	Duracion int,
	Cantidad int
);

insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Mision imposible','Tom Cruise',120,3);
insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Mision imposible 2','Tom Cruise',180,4);
insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Mujer bonita','Julia R.',90,1);
insert into Peliculas (Titulo, Actor, Duracion, Cantidad)
	values ('Elsa y Fred','China Zorrilla',80,2);

select * from Peliculas
	where Duracion<=90;

select * from Peliculas
	where Actor<>'Tom Cruise';

select Titulo, Actor, Cantidad from Peliculas
	where Cantidad >2;

--8 - Borrar registros (delete)
--Primer problema:
if object_id('Agenda') is not null
	drop table Agenda;

create table Agenda
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values('Alvarez','Alberto','Colon 123','4234567');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values('Juarez','Juan','Avellaneda 135','4458787');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values('Lopez','Maria','Urquiza 333','4545454');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values('Lopez','Jose','Urquiza 333','4545454');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values('Salas','Susana','Gral. Paz 1234','4123456');

delete from Agenda
	where Nombre='Juan';

delete from Agenda
	where Telefono='4545454';

select * from Agenda;

delete from Agenda;

select * from Agenda;

--Segundo problema:
if object_id('Articulos') is not null
	drop table Articulos;

create table Articulos
(
	Codigo int,
	Nombre varchar(20),
	Descripcion varchar(30),
	Precio float,
	Cantidad int
);

exec sp_columns Articulos;

insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (1,'impresora','Epson Stylus C45',400.80,20);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (2,'impresora','Epson Stylus C85',500,30);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (3,'monitor','Samsung 14',800,10);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (4,'teclado','ingles Biswal',100,50);
insert into Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
	values (5,'teclado','español Biswal',90,50);

delete from Articulos
	where Precio>=500;

select * from Articulos;

delete from Articulos
	where Nombre='impresora';

select * from Articulos;

delete from Articulos
	where Codigo<>4;

select * from Articulos;

--9 - Actualizar registros (update)
--Primer problema:
if object_id('Agenda') is not null
	drop table Agenda;

create table Agenda
(
	Apellido varchar(30),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar(11)
);

insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values ('Acosta','Alberto','Colon 123','4234567');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values ('Juarez','Juan','Avellaneda 135','4458787');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values ('Lopez','Maria','Urquiza 333','4545454');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values ('Lopez','Jose','Urquiza 333','4545454');
insert into Agenda (Apellido,Nombre,Domicilio,Telefono)
	values ('Suarez','Susana','Gral. Paz 1234','4123456');

select * from Agenda;

update Agenda set Nombre='Juan Jose'
	where Nombre='Juan';

select * from Agenda;

update Agenda set Telefono='4445566'
	where Telefono='4545454';

select * from Agenda;

update Agenda set Nombre='Juan Jose'
	where Nombre='Juan';

select * from Agenda;

--Segundo problema:
if object_id('Libros') is not null
	drop table Libros;

create table Libros 
(
	Titulo varchar(30),
	Autor varchar(20),
	Editorial varchar(15),
	Precio float
);

insert into Libros (Titulo, Autor, Editorial, Precio)
	values ('El aleph','Borges','Emece',25.00);
insert into Libros (Titulo, Autor, Editorial, Precio)
	values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into Libros (Titulo, Autor, Editorial, Precio)
	values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into Libros (Titulo, Autor, Editorial, Precio)
	values ('Cervantes y el quijote','Borges','Emece',25);
insert into Libros (Titulo, Autor, Editorial, Precio)
	values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select * from Libros;

update Libros set Autor='Adrian Paenza'
	where Autor='Paenza';

select * from Libros;

update Libros set Autor='Adrian Paenza'
	where Autor='Paenza';

select * from Libros;

update Libros set Precio=27
	where Autor='Mario Molina';

select * from Libros;

update Libros set Editorial='Emece S.A.'
	where Editorial='Emece';

select * from Libros;

--11 - Valores null (is null)
--Primer problema:
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	Codigo int not null,
	Nombre varchar(20) not null,
	Laboratorio varchar(20),
	Precio float,
	Cantidad int not null
);

exec sp_columns Medicamentos;

insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(1,'Sertal gotas',null,null,100); 
insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(2,'Sertal compuesto',null,8.90,150);
insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(3,'Buscapina','Roche',null,200);

select * from Medicamentos;

insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(4,'Bayaspirina','',0,150);

insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(0,'','Bayer',15.60,0);

select * from Medicamentos;

insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(null,'Amoxidal jarabe','Bayer',25,120);

select * from Medicamentos
	where Laboratorio is null;

select * from Medicamentos
	where Laboratorio='';

select * from Medicamentos
	where Precio is null;

select * from Medicamentos
	where Precio=0;

select * from Medicamentos
	where Laboratorio<>'';

select * from Medicamentos
	where Laboratorio is not null;

select * from Medicamentos
	where Precio<>0;

select * from Medicamentos
	where Precio is not null;

--Segundo problema:
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Codigo int not null,
	Titulo varchar(40) not null,
	Actor varchar(20),
	Duracion int
);

exec sp_columns Peliculas;

insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(1,'Mision imposible','Tom Cruise',120);
insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(2,'Harry Potter y la piedra filosofal',null,180);
insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(0,'Mision imposible 2','',150);
insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(4,'','L. Di Caprio',220);
insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select * from Peliculas;

insert into Peliculas (Codigo,Titulo,Actor,Duracion)
	values(null,'Mujer bonita','R. Gere-J. Roberts',190);

select * from Peliculas
	where Actor is null;

update Peliculas set Duracion=120 
	where Duracion is null;

update Peliculas set Actor='Desconocido'
	where Actor='';

select * from Peliculas;

delete from Peliculas
	where Titulo='';

select * from Peliculas;

--12 - Clave primaria
--Primer problema:
if object_id('Libros') is not null
	drop table Libros;

create table Libros
(
	Codigo int not null,
	Titulo varchar(40) not null,
	Autor varchar(20),
	Editorial varchar(15),
	primary key(Codigo)
);

insert into Libros (Codigo,Titulo,Autor,Editorial)
	values (1,'El aleph','Borges','Emece');
insert into Libros (Codigo,Titulo,Autor,Editorial)
	values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into Libros (Codigo,Titulo,Autor,Editorial)
	values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

insert into Libros (Codigo,Titulo,Autor,Editorial)
	values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

insert into Libros (Codigo,Titulo,Autor,Editorial)
	values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

update Libros set Codigo=1
	where Titulo='Martin Fierro';

--Segundo problema:
if object_id('Alumnos') is not null
	drop table Alumnos;

create table Alumnos
(
	Legajo varchar(4) not null,
	Documento varchar(8),
	Nombre varchar(30),
	Domicilio varchar(30),
	primary key(Documento),
	primary key(Legajo)
 );

create table Alumnos
(
	Legajo varchar(4) not null,
	Documento varchar(8),
	Nombre varchar(30),
	Domicilio varchar(30),
	primary key(Documento)
);

exec sp_columns Alumnos;

insert into Alumnos (Legajo,Documento,Nombre,Domicilio)
	values('A233','22345345','Perez Mariana','Colon 234');
insert into Alumnos (Legajo,Documento,Nombre,Domicilio)
	values('A567','23545345','Morales Marcos','Avellaneda 348');

insert into Alumnos (Legajo,Documento,Nombre,Domicilio)
	values('A642','23545345','Gonzalez Analia','Caseros 444');

insert into Alumnos (Legajo,Documento,Nombre,Domicilio)
	values('A685',null,'Miranda Carmen','Uspallata 999');

--13 - Campo con atributo Identity
--Primer problema:
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	Codigo int identity,
	Nombre varchar(20) not null,
	Laboratorio varchar(20),
	Precio float,
	Cantidad int
);

exec sp_columns Medicamentos;

insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Sertal','Roche',5.2,100);
insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Buscapina','Roche',4.10,200);
insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Amoxidal 500','Bayer',15.60,100);

select * from Medicamentos;

insert into Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
	values(4,'Amoxilina 500','Bayer',15.60,100);

update Medicamentos set Codigo=5
	where Nombre='Bayaspirina';

delete from Medicamentos
	where Codigo=3;

insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Amoxilina 500','Bayer',15.60,100);

select * from Medicamentos;

--Segundo problema:
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Codigo int identity,
	Titulo varchar(40),
	Actor varchar(20),
	Duracion int,
	primary key(Codigo)
);

exec sp_columns Peliculas;

insert into Peliculas (Titulo,Actor,Duracion)
	values('Mision imposible','Tom Cruise',120);
insert into Peliculas (Titulo,Actor,Duracion)
	values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into Peliculas (Titulo,Actor,Duracion))
	values('Harry Potter y la camara secreta','Daniel R.',190);
insert into Peliculas (Titulo,Actor,Duracion)
	values('Mision imposible 2','Tom Cruise',120);
insert into Peliculas (Titulo,Actor,Duracion)
	values('La vida es bella','zzz',220);

select * from Peliculas;

update Peliculas set Codigo=7
	where Codigo=4;

delete from Peliculas
	where Titulo='La vida es bella';

insert into Peliculas (Titulo,Actor,Duracion)
	values('Elsa y Fred','China Zorrilla',90);

select * from Peliculas;

--14 - Otras características del atributo Identity
--Primer problema:
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	Codigo int identity(10,1),
	Nombre varchar(20) not null,
	Laboratorio varchar(20),
	Precio float,
	Cantidad int
);

insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Sertal','Roche',5.2,100);
insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Buscapina','Roche',4.10,200);
insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Amoxidal 500','Bayer',15.60,100);

select * from Medicamentos;

insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values(4,'Amoxilina 500','Bayer',15.60,100);

set identity_insert Medicamentos on;

insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values('Amoxilina 500','Bayer',15.60,100);

insert into Medicamentos (Nombre,Laboratorio,Precio,Cantidad)
	values(10,'Amoxilina 500','Bayer',15.60,100);

select ident_seed('Medicamentos');

select ident_incr('Medicamentos');

--Segundo problema:
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Codigo int identity (50,3),
	Titulo varchar(40),
	Actor varchar(20),
	Duracion int
);

insert into Peliculas (Titulo,Actor,Duracion)
	values('Mision imposible','Tom Cruise',120);
insert into Peliculas (Titulo,Actor,Duracion)
	values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into Peliculas (Titulo,Actor,Duracion)
	values('Harry Potter y la camara secreta','Daniel R.',190);

select * from Peliculas;

set identity_insert Peliculas on;

insert into Peliculas (Titulo,Actor,Duracion)
	values(20,'Mision imposible 2','Tom Cruise',120);

insert into Peliculas (Titulo,Actor,Duracion)
	values(80,'La vida es bella','zzz',220);

select ident_seed('Peliculas');

select ident_incr('Peliculas');

insert into Peliculas (Titulo,Actor,Duracion)
	values('Elsa y Fred','China Zorrilla',90);

set identity_insert Peliculas off; 

insert into Peliculas (Titulo,Actor,Duracion)
	values('Elsa y Fred','China Zorrilla',90);
select * from Peliculas;

--15 - Truncate table
--Primer problema:
if object_id('Alumnos') is not null
	drop table Alumnos;

create table Alumnos
(
	Legajo int identity,
	Documento varchar(8),
	Nombre varchar(30),
	Domicilio varchar(30)
);

insert into Alumnos (Documento,Nombre,Domicilio)
	values('22345345','Perez Mariana','Colon 234');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('23545345','Morales Marcos','Avellaneda 348');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('24356345','Gonzalez Analia','Caseros 444');
insert into Alumnos (Documento,Nombre,Domicilio)o)
	values('25666777','Torres Ramiro','Dinamarca 209');

delete from Alumnos;

insert into Alumnos (Documento,Nombre,Domicilio)
	values('22345345','Perez Mariana','Colon 234');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('23545345','Morales Marcos','Avellaneda 348');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('24356345','Gonzalez Analia','Caseros 444');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('25666777','Torres Ramiro','Dinamarca 209');
select * from alumnos;

truncate table Alumnos;

insert into Alumnos (Documento,Nombre,Domicilio)
	values('22345345','Perez Mariana','Colon 234');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('23545345','Morales Marcos','Avellaneda 348');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('24356345','Gonzalez Analia','Caseros 444');
insert into Alumnos (Documento,Nombre,Domicilio)
	values('25666777','Torres Ramiro','Dinamarca 209');
select * from Alumnos;

--Segundo problema:
if object_id('Articulos') is not null
	drop table Articulos;

create table Articulos
(
	Codigo int identity,
	Nombre varchar(20),
	Descripcion varchar(30),
	Precio float
);

insert into Articulos (Nombre, Descripcion, Precio)
	values ('impresora','Epson Stylus C45',400.80);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('impresora','Epson Stylus C85',500);

truncate table Articulos;

insert into Articulos (Nombre, Descripcion, Precio)
	values ('monitor','Samsung 14',800);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('teclado','ingles Biswal',100);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('teclado','español Biswal',90);
select * from Articulos;

delete from Articulos;

insert into Articulos (Nombre, Descripcion, Precio)
	values ('monitor','Samsung 14',800);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('teclado','ingles Biswal',100);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('teclado','español Biswal',90);
select * from Articulos;

--17 - Tipo de dato (texto)
--Primer problema:
if object_id('Autos') is not null
	drop table Autos;

create table Autos
(
	Patente char(6),
	Marca varchar(20),
	Modelo char(4),
	Precio float,
	primary key (Patente)
);

insert into Autos
	values('ACD123','Fiat 128','1970',15000);
insert into Autos
	values('ACG234','Renault 11','1990',40000);
insert into Autos
	values('BCD333','Peugeot 505','1990',80000);
insert into Autos
	values('GCD123','Renault Clio','1990',70000);
insert into Autos
	values('BCC333','Renault Megane','1998',95000);
insert into Autos
	values('BVF543','Fiat 128','1975',20000);

select * from Autos
	where Modelo='1990';

--Segundo problema:
if object_id('Clientes') is not null
	drop table Clientes;

create table Clientes
(
	Documento char(8),
	Apellido varchar(20),
	Nombre varchar(20),
	Domicilio varchar(30),
	Telefono varchar (11)
);

insert into Clientes
	values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into Clientes (Documento,Apellido,Nombre,Domicilio)
	values('2333344','Perez','Ana','Colon 234');
insert into Clientes
	values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into Clientes
	values('2533344','Juarez','Ana','Urquiza 444','4789900');

select * from Clientes
	where Apellido='Perez';

--18 - Tipo de dato (numérico)
--Primer problema:
if object_id('Cuentas') is not null
	drop table Cuentas;

create table Cuentas
(
	Numero int not null,
	Documento char(8),
	Nombre varchar(30),
	Saldo money,
	primary key (Numero)
);

insert into Cuentas(Numero,Documento,Nombre,Saldo)
	values('1234','25666777','Pedro Perez',500000.60);
insert into Cuentas(Numero,Documento,Nombre,Saldo)
	values('2234','27888999','Juan Lopez',-250000);
insert into Cuentas(Numero,Documento,Nombre,Saldo)
	values('3344','27888999','Juan Lopez',4000.50);
insert into Cuentas(Numero,Documento,Nombre,Saldo)
	values('3346','32111222','Susana Molina',1000);

select * from Cuentas
	where Saldo<4000;

select Numero,Saldo from Cuentas
	where Nombre='Juan Lopez';

select * from Cuentas
	where Saldo<0;

select * from Cuentas
	where Numero>=3000;

--Segundo problema:
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	Nombre varchar(30),
	Documento char(8),
	Sexo char(1),
	Domicilio varchar(30),
	SueldoBasico decimal(7,2),--máximo estimado 99999.99
	CantidadHijos tinyint--no superará los 255
);

insert into Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico,CantidadHijos)
	values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico,CantidadHijos)
	values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico,CantidadHijos)
	values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

insert into Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico,CantidadHijos)
	values ('Susana Molina','29000555','f','Salta 876',800.888,3);

insert into Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico,CantidadHijos)
	values ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

select * from Empleados
	where SueldoBasico>=900;

select * from Empleados
	where CantidadHijos>0;

--19 - Tipo de dato (fecha y hora)
if object_id('Alumnos') is not null
	drop table Alumnos;

create table Alumnos
(
	Apellido varchar(30),
	Nombre varchar(30),
	Documento char(8),
	Domicilio varchar(30),
	FechaIngreso datetime,
	FechaNacimiento datetime
);

set dateformat 'dmy';

insert into Alumnos 
	values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

insert into Alumnos 
	values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

insert into Alumnos 
	values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

insert into Alumnos 
	values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select * from Alumnos 
	where FechaIngreso<'1-1-91';

select * from Alumnos 
	where FechaNacimiento is null;

insert into Alumnos 
	values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into Alumnos 
	values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

--20 - Ingresar algunos campos (insert into)
if object_id('Cuentas') is not null
	drop table Cuentas;

create table Cuentas
(
	Numero int identity,
	Documento char(8) not null,
	Nombre varchar(30),
	Saldo money
);

insert into Cuentas
	values (1,'25666777','Juan Perez',2500.50);

insert into Cuentas
	values ('25666777','Juan Perez',2500.50);

insert into Cuentas (Documento,Saldo)
	values ('28999777',-5500);

insert into Cuentas (Numero,Documento,Nombre,Saldo)
	values (5,'28999777','Luis Lopez',34000);

insert into Cuentas (Numero,Documento,Nombre)
	values (3344,'28999777','Luis Lopez',34000);

insert into Cuentas (Nombre, Saldo)
	values ('Luis Lopez',34000);

select * from Libros;

--21 - Valores por defecto (default)
--Primer problema:
if object_id('Visitantes') is not null
	drop table Visitantes;

create table Visitantes
(
	Nombre varchar(30),
	Edad tinyint,
	Sexo char(1) default 'f',
	Domicilio varchar(30),
	Ciudad varchar(20) default 'Cordoba',
	Telefono varchar(11),
	Mail varchar(30) default 'no tiene',
	MontoCompra decimal (6,2)
);

exec sp_columns Visitantes;

insert into Visitantes (Nombre, Domicilio, MontoCompra)
	values ('Susana Molina','Colon 123',59.80);
insert into Visitantes (Nombre, Edad, Ciudad, Mail)
	values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
select *from Visitantes;

insert into Visitantes
	values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

insert into Visitantes default values;

select * from Visitantes;

--Segundo problema:
if object_id('Prestamos') is not null
	drop table Prestamos;

create table Prestamos
(
	Titulo varchar(40) not null,
	Documento char(8) not null,
	FechaPrestamo datetime not null,
	FechaDevolucion datetime,
	Devuelto char(1) default 'n'
);

insert into Prestamos (Titulo,Documento,FechaPrestamo,FechaDevolucion)
	values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
insert into Prestamos (Titulo,Documento,FechaPrestamo)
	values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
insert into Prestamos (Titulo,Documento,FechaPrestamo,FechaDevolucion)
	values ('El aleph','22543987','2006-12-16','2006-08-19');
insert into Prestamos (Titulo,Documento,FechaPrestamo,Devuelto)
	values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

select * from Prestamos;

insert into Prestamos
	values('Manual de historia','32555666','2006-10-25',default,default);

select * from Prestamos;

insert into Prestamos default values;

--22 - Columnas calculadas (operadores aritméticos y de concatenación)
if object_id ('Articulos') is not null
	drop table Articulos;

create table Articulos
(
	Codigo int identity,
	Nombre varchar(20),
	Descripcion varchar(30),
	Precio smallmoney,
	Cantidad tinyint default 0,
	primary key (Codigo)
);

insert into Articulos (Nombre, Descripcion, Precio, Cantidad)
	values ('impresora','Epson Stylus C45',400.80,20);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('impresora','Epson Stylus C85',500);
insert into Articulos (Nombre, Descripcion, Precio)
	values ('monitor','Samsung 14',800);
insert into Articulos (Nombre, Descripcion, Precio, Cantidad)
	values ('teclado','ingles Biswal',100,50);

update Articulos set Precio = Precio + (Precio*0.15);

select * from Articulos;

select Nombre + ',' + Descripcion from Articulos;

update Articulos set Cantidad = Cantidad - 5
	where Nombre = 'teclado';

select * from Articulos;

--23 - Alias
if object_id ('Libros') is not null
	drop table Libros;

create table Libros
(
	Codigo int identity,
	Titulo varchar(40) not null,
	Autor varchar(20) default 'Desconocido',
	Editorial varchar(20),
	Precio decimal(6,2),
	Cantidad tinyint default 0,
	primary key (Codigo)
);

insert into Libros (Titulo,Autor,Editorial,Precio)
	values('El aleph','Borges','Emece',25);
insert into Libros
	values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
	values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select Titulo,Autor,Editorial,Precio,Cantidad, Precio * Cantidad as 'monto total' 
	from Libros;

select Titulo,Autor,Precio,Precio * 0.1 as Descuento, Precio - (Precio * 0.1) as 'precio final'
  from Libros where Editorial='Emece';

select Titulo + '-' + Autor as "Título y autor" from Libros;

--27 - Funciones para el uso de fechas y horas
if object_id ('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	Nombre varchar(30) not null,
	Apellido varchar(20) not null,
	Documento char(8),
	FechaNacimiento datetime,
	FechaIngreso datetime,
	sueldo decimal(6,2),
	primary key(Documento)
);

insert into Empleados 
	values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
insert into Empleados 
	values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
insert into Empleados 
	values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
insert into Empleados 
	values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
insert into Empleados 
	values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

select Nombre + space(1) + upper(Apellido) as Nombre,
	stuff(Documento,1,0,'DNI Nº ') as Documento,
	stuff(Sueldo,1,0,'$ ') as Sueldo 
	from Empleados;

select Documento, stuff(ceiling(Sueldo),1,0,'$ ') from Empleados;

select Nombre,Apellido from Empleados
	where datename(month,FechaNacimiento) = 'october';

select Nombre,Apellido from Empleados
	where datepart(year,FechaIngreso) = 2000;

--28 - Ordenar registros (order by)
if object_id('Visitas') is not null
	drop table Visitas;

create table Visitas 
(
	Numero int identity,
	Nombre varchar(30) default 'Anonimo',
	Mail varchar(50),
	Pais varchar (20),
	Fecha datetime,
	primary key(Numero)
);

insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
insert into Visitas (Nombre,Mail,Pais,Fecha)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

select * from Visitas
	order by Fecha desc;

select Nombre,Pais,datename(month,Fecha) from Visitas
	order by Pais,datename(month,Fecha) desc;

select Nombre,Mail,
	datename(month,Fecha) Mes,
	datename(day,Fecha) Dia,
	datename(hour,Fecha) Hora
	from Visitas
	order by 3,4,5;

select Mail, Pais from Visitas
	where datename(month,Fecha) = 'October'
	order by 2;

--29 - Operadores lógicos ( and - or - not)
--Primer problema:
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	Codigo int identity,
	Nombre varchar(20),
	Laboratorio varchar(20),
	Precio decimal(5,2),
	Cantidad tinyint,
	primary key(Codigo)
);

insert into Medicamentos
	values('Sertal','Roche',5.2,100);
insert into Medicamentos
	values('Buscapina','Roche',4.10,200);
insert into Medicamentos
	values('Amoxidal 500','Bayer',15.60,100);
insert into Medicamentos
	values('Paracetamol 500','Bago',1.90,200);
insert into Medicamentos
	values('Bayaspirina','Bayer',2.10,150); 
insert into Medicamentos
	values('Amoxidal jarabe','Bayer',5.10,250); 

select Codigo,Nombre from Medicamentos where Laboratorio = 'Roche' and Precio<5;

select * from Medicamentos where Laboratorio = 'Roche' or Precio < 5;

select * from Medicamentos where not Laboratorio = 'Bayer' and Cantidad=100;

select * from Medicamentos where Laboratorio = 'Bayer' and not Cantidad=100;

delete from Medicamentos where Laboratorio='Bayer' and Precio > 10;

update Medicamentos set Cantidad = 200 where Laboratorio = 'Roche' and Precio > 5;

delete from Medicamentos where Laboratorio = 'Bayer' or Precio < 3;

--Segundo problema:
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Codigo int identity,
	Titulo varchar(40) not null,
	Actor varchar(20),
	Duracion tinyint,
	primary key (Codigo)
);

insert into Peliculas
	values('Mision imposible','Tom Cruise',120);
insert into Peliculas
	values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into Peliculas
	values('Harry Potter y la camara secreta','Daniel R.',190);
insert into Peliculas
	values('Mision imposible 2','Tom Cruise',120);
insert into Peliculas
	values('Mujer bonita','Richard Gere',120);
insert into Peliculas
	values('Tootsie','D. Hoffman',90);
insert into Peliculas
	values('Un oso rojo','Julio Chavez',100);
insert into Peliculas
	values('Elsa y Fred','China Zorrilla',110);

select * from Peliculas where Actor = 'Tom Cruise' or Actor = 'Richard Gere';

select * from Peliculas where Actor = 'Tom Cruise' and Duracion < 100;

update Peliculas set Duracion = 200 where Actor = 'Daniel R.' and Duracion = 180;

delete from Peliculas where not Actor = 'Tom Cruise' and Duracion <= 100;

--30 - Otros operadores relacionales (is null)
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	Codigo int identity,
	Titulo varchar(40) not null,
	Actor varchar(20),
	Duracion tinyint,
	primary key (Codigo)
);

insert into Peliculas
	values('Mision imposible','Tom Cruise',120);
insert into Peliculas
	values('Harry Potter y la piedra filosofal','Daniel R.',null);
insert into Peliculas
	values('Harry Potter y la camara secreta','Daniel R.',190);
insert into Peliculas
	values('Mision imposible 2','Tom Cruise',120);
insert into Peliculas
	values('Mujer bonita',null,120);
insert into Peliculas
	values('Tootsie','D. Hoffman',90);
insert into Peliculas (Titulo)
	values('Un oso rojo');

select * from Peliculas where Actor is null;

update Peliculas set Duracion = 0 where Duracion is null;

delete from Peliculas where Actor is null and Duracion = 0;

select * from Peliculas;

--31 - Otros operadores relacionales (between)
--Primer problema:
if object_id('Visitas') is not null
	drop table Visitas;

create table Visitas 
(
	Numero int identity,
	Nombre varchar(30) default 'Anonimo',
	Mail varchar(50),
	Pais varchar (20),
	FechaYHora datetime,
	primary key(Numero)
);

insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
insert into Visitas (Nombre,Mail,Pais,FechaYHora)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
insert into Visitas (Nombre,Mail,Pais)
	values ('Federico1','federicogarcia@xaxamail.com','Argentina');

select * from Visitas where FechaYHora between '2006-09-12' and '2006-10-11';

select * from Visitas where Numero between 2 and 5;

--Segundo problema:
if object_id('Autos') is not null
	drop table Autos;

create table Autos
(
	Patente char(6),
	Marca varchar(20),
	Modelo char(4),
	Precio decimal(8,2),
	primary key(Patente)
);

insert into Autos
	values('ACD123','Fiat 128','1970',15000);
insert into Autos
	values('ACG234','Renault 11','1980',40000);
insert into Autos
	values('BCD333','Peugeot 505','1990',80000);
insert into Autos
	values('GCD123','Renault Clio','1995',70000);
insert into Autos
	values('BCC333','Renault Megane','1998',95000);
insert into Autos
	values('BVF543','Fiat 128','1975',20000);

select * from Autos where Modelo between '1970' and '1990' order by Modelo;

select * from Autos where Precio between 50000 and 100000;

--32 - Otros operadores relacionales (in)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	Codigo int identity,
	Nombre varchar(20),
	Laboratorio varchar(20),
	Precio decimal(6,2),
	Cantidad tinyint,
	FechaVencimiento datetime not null,
	primary key(Codigo)
);

insert into Medicamentos
	values('Sertal','Roche',5.2,1,'2015-02-01');
insert into Medicamentos 
	values('Buscapina','Roche',4.10,3,'2016-03-01');
insert into Medicamentos 
	values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
insert into Medicamentos
	values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
insert into Medicamentos 
	values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
insert into Medicamentos 
	values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

select Nombre,Precio from Medicamentos 
	where laboratorio in ('Bayer','Bago');

select * from Medicamentos where Cantidad between 1 and 5;

select * from medicamentos where cantidad in (1,2,3,4,5);

--33 - Búsqueda de patrones (like - not like)
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	Nombre varchar(30),
	Documento char(8),
	Domicilio varchar(30),
	FechaIngreso datetime,
	Seccion varchar(20),
	Sueldo decimal(6,2),
	primary key(Documento)
);

insert into Empleados
	values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into Empleados
	values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into Empleados
	values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into Empleados
	values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into Empleados
	values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
insert into Empleados
	values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into Empleados
	values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

select * from Empleados where Nombre like '%Perez%';

select * from Empleados where Domicilio like 'Co%8%';

select * from Empleados where Documento like '%[02468]';

select * from Empleados
	where Documento like '[^13]%' and Nombre like '%ez';

select Nombre from Empleados where Nombre like '%[yj]%';

select Nombre,Seccion from Empleados where Seccion like '[SG]_______';

select Nombre,Seccion from Empleados where Seccion not like '[SG]%';

select Nombre,Sueldo from Empleados where Sueldo not like '%.00';

select * from Empleados where FechaIngreso like '%1990%';

--34 - Contar registros (count)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	Codigo int identity,
	Nombre varchar(20),
	Laboratorio varchar(20),
	Precio decimal(6,2),
	Cantidad tinyint,
	FechaVencimiento datetime not null,
	NumeroLote int default null,
	primary key(Codigo)
);

insert into Medicamentos
	values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into Medicamentos 
	values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into Medicamentos 
	values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into Medicamentos
	values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into Medicamentos 
	values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into Medicamentos 
	values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

select count(*) from Medicamentos;

select count(Laboratorio) from Medicamentos;

select count(Precio) as 'Con precio', count(Cantidad) as 'Con cantidad'
	from Medicamentos;

select count(Precio) from Medicamentos
	where Laboratorio like 'B%';

select count(NumeroLote) from Medicamentos;

--36 - Funciones de agrupamiento (count - sum - min - max - avg)
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	Nombre varchar(30),
	Documento char(8),
	Domicilio varchar(30),
	Seccion varchar(20),
	Sueldo decimal(6,2),
	CantidadHijos tinyint,
	primary key(Documento)
);

insert into Empleados
	values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
insert into Empleados
	values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
insert into Empleados
	values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
insert into Empleados
	values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
insert into Empleados
	values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
insert into Empleados
	values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
insert into Empleados
	values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
insert into Empleados
	values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
insert into Empleados
	values('Andres Costa','28444555',default,'Secretaria',null,null);

select count(*) from Empleados;

select count(Sueldo) from Empleados where Seccion = 'Secretaria';

select max(Sueldo) as 'Mayor sueldo', min(Sueldo) as 'Menor sueldo'
	from Empleados;

select max(CantidadHijos) from Empleados
	where Nombre like '%Perez%';

select avg(Sueldo) from Empleados;

select avg(Sueldo) from Empleados where Seccion = 'Secretaria';

select avg(CantidadHijos) from Empleados where Seccion = 'Sistemas';

--37 - Agrupar registros (group by)
--Primer problema:
if object_id('Visitantes') is not null
	drop table Visitantes;

create table Visitantes
(
	Nombre varchar(30),
	Edad tinyint,
	Sexo char(1) default 'f',
	Domicilio varchar(30),
	Ciudad varchar(20) default 'Cordoba',
	Telefono varchar(11),
	Mail varchar(30) default 'no tiene',
	MontoCompra decimal (6,2)
);

insert into Visitantes
	values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
insert into Visitantes
	values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
insert into Visitantes
	values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
insert into Visitantes (Nombre,Edad,Sexo,Telefono,Mail)
	values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
insert into Visitantes (Nombre,Ciudad,MontoCompra)
	values ('Alejandra Gonzalez','La Falda',280.50);
insert into Visitantes (Nombre,Edad,Sexo,Ciudad,Mail,MontoCompra)
	values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
insert into Visitantes
	 values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
insert into Visitantes
	values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

select Ciudad, count(*) from Visitantes group by Ciudad;

select Ciudad, count(Telefono) from Visitantes group by Ciudad;

select Sexo, sum(MontoCompra) from Visitantes group by Sexo;

select Sexo,Ciudad, max(MontoCompra) as Mayor, min(MontoCompra) as Menor
	from Visitantes group by Sexo,Ciudad;

select Ciudad, avg(MontoCompra) as 'promedio de compras'
	from Visitantes group by Ciudad;

select Ciudad, count(*) as 'cantidad con mail'
	from Visitantes 
	where Mail is not null and Mail<>'no tiene'
	group by Ciudad;

select Ciudad, count(*) as 'cantidad con mail'
	from Visitantes
	where Mail is not null and Mail<>'no tiene'
	group by all Ciudad;

--Segundo problema:
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	Nombre varchar(30),
	Documento char(8),
	Domicilio varchar(30),
	Seccion varchar(20),
	Sueldo decimal(6,2),
	CantidadHijos tinyint,
	FechaIngreso datetime,
	primary key(Documento)
);

insert into Empleados
	values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10');
insert into Empleados
	values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12');
insert into Empleados
	values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25');
insert into Empleados
	values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25');
insert into Empleados
	values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01');
insert into Empleados
	values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01');
insert into Empleados
	values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01');
insert into Empleados
	values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01');
insert into Empleados
	values('Andres Costa','28444555',default,'Secretaria',null,null,null);

select Seccion, count(*) from Empleados group by Seccion;

select Seccion, avg(CantidadHijos) as 'promedio de hijos'
	from Empleados group by Seccion;

select datepart(year,FechaIngreso), count(*)
	from Empleados group by datepart(year,FechaIngreso);

select Seccion, avg(Sueldo) as 'promedio de sueldo'
	from Empleados
	where CantidadHijos > 0 and CantidadHijos is not null
	group by Seccion;

select Seccion, avg(Sueldo) as 'promedio de sueldo'
	from Empleados
	where CantidadHijos > 0 and CantidadHijos is not null
	group by all Seccion;

--38 - Seleccionar grupos (having)
--Primer problema:
if object_id('Clientes') is not null
	drop table Clientes;

create table Clientes 
(
	Codigo int identity,
	Nombre varchar(30) not null,
	Domicilio varchar(30),
	Ciudad varchar(20),
	Provincia varchar (20),
	Telefono varchar(11),
	primary key(Codigo)
);

insert into Clientes
	values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
insert into Clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
insert into Clientes
	values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
insert into Clientes
	values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
insert into Clientes
	values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
insert into Clientes
	values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
insert into Clientes
	values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
insert into Clientes
	values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
insert into Clientes
	values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
insert into Clientes
	values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

select Ciudad, Provincia, count(*) as Cantidad
	from Clientes group by Ciudad, Provincia;

select Ciudad, Provincia, count(*) as Cantidad
	from Clientes group by Ciudad, Provincia having count(*) > 1;

select Ciudad, count(*) from Clientes
	where Domicilio like '%San Martin%' group by all Ciudad
	having count(*) < 2 and Ciudad <> 'Cordoba';

--Segundo problema:
if object_id('Visitantes') is not null
	drop table Visitantes;

create table Visitantes
(
	Nombre varchar(30),
	Edad tinyint,
	Sexo char(1),
	Domicilio varchar(30),
	Ciudad varchar(20),
	Telefono varchar(11),
	MontoCompra decimal(6,2) not null
);

insert into Visitantes
	values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
insert into Visitantes
	values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
insert into Visitantes
	values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
insert into Visitantes
	values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
insert into Visitantes
	values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
insert into Visitantes
	values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
insert into Visitantes
	values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
insert into Visitantes
	values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
insert into Visitantes
	values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
insert into Visitantes
	values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

select Ciudad,Sexo,sum(MontoCompra) as Total from Visitantes
	group by Ciudad,Sexo having sum(MontoCompra) > 50;

select Ciudad,Sexo,sum(MontoCompra) as 'total' from Visitantes
	where MontoCompra > 50 and Telefono is not null
	group by all Ciudad,Sexo having Ciudad <> 'Cordoba'
	order by Ciudad;

select Ciudad,max(MontoCompra) as Maximo from Visitantes
	where Domicilio is not null and Sexo = 'f'
	group by all Ciudad having max(MontoCompra) > 50;

select Ciudad,Sexo,count(*) as Cantidad,
	sum(MontoCompra) as Total, avg(MontoCompra) as Promedio
	from Visitantes group by Ciudad,Sexo
	having avg(MontoCompra) > 30 order by Total;

--43 - Registros duplicados (distinct)
--Primer problema:
if object_id('Clientes') is not null
	drop table Clientes;

create table Clientes 
(
	Codigo int identity,
	Nombre varchar(30) not null,
	Domicilio varchar(30),
	Ciudad varchar(20),
	Provincia varchar (20),
	primary key(Codigo)
);

insert into Clientes
	values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
insert into Clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
insert into Clientes
	values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
insert into Clientes
	values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
insert into Clientes
	values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
insert into Clientes
	values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
insert into Clientes
	values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
insert into Clientes
	values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
insert into Clientes
	values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
insert into Clientes
	values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

select distinct Provincia from Clientes;

select count(distinct Provincia) as Cantidad from Clientes;

select distinct Ciudad from Clientes;

select count(distinct Ciudad) from Clientes;

select distinct Ciudad from Clientes where Provincia = 'Cordoba';

select Provincia,count(distinct Ciudad) from Clientes group by Provincia;

--Segundo problema:
if object_id('Inmuebles') is not null
	drop table Inmuebles;

create table Inmuebles 
(
	Documento varchar(8) not null,
	Apellido varchar(30),
	Nombre varchar(30),
	Domicilio varchar(20),
	Barrio varchar(20),
	Ciudad varchar(20),
	Tipo char(1),--b=baldio, e: edificado
	Superficie decimal (8,2)
);

insert into Inmuebles
	values ('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100);
insert into Inmuebles
	values ('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200);
insert into Inmuebles
	values ('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250);
insert into Inmuebles
	values ('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200);
insert into Inmuebles
	values ('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300);
insert into Inmuebles
	values ('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200);
insert into Inmuebles
	values ('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500);
insert into Inmuebles
	values ('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350);
insert into Inmuebles
	values ('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150);

select distinct Apellido from Inmuebles;

select distinct Documento from Inmuebles;

select count(distinct Documento) from Inmuebles where Ciudad = 'Cordoba';

select count(Ciudad) from Inmuebles where Domicilio like 'San Martin %';

select distinct Apellido,Nombre from Inmuebles;

select Documento,count(distinct Barrio) as 'cantidad' from Inmuebles
	group by Documento;

--44 - Cláusula top
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados 
(
	Documento varchar(8) not null,
	Nombre varchar(30),
	EstadoCivil char(1),--c=casado, s=soltero,v=viudo
	Seccion varchar(20)
);

insert into Empleados
	values ('22222222','Alberto Lopez','c','Sistemas');
insert into Empleados
	values ('23333333','Beatriz Garcia','c','Administracion');
insert into Empleados
	values ('24444444','Carlos Fuentes','s','Administracion');
insert into Empleados
	values ('25555555','Daniel Garcia','s','Sistemas');
insert into Empleados
	values ('26666666','Ester Juarez','c','Sistemas');
insert into Empleados
	values ('27777777','Fabian Torres','s','Sistemas');
insert into Empleados
	values ('28888888','Gabriela Lopez',null,'Sistemas');
insert into Empleados
	values ('29999999','Hector Garcia',null,'Administracion');

select top 5 * from Empleados;

select top 4 Nombre,Seccion from Empleados order by Seccion;

select top 4 with Ties Nombre,Seccion from Empleados order by Seccion;

select top 4 Nombre,EstadoCivil,Seccion from Empleados
	order by EstadoCivil,Seccion;

select top 4 with Ties Nombre,EstadoCivil,Seccion from Empleados
	order by EstadoCivil,Seccion;

--53 - Eliminar restricciones (alter table - drop)
if object_id('Vehiculos') is not null
	drop table Vehiculos;

create table Vehiculos
(
	Patente char(6) not null,
	Tipo char(1),--'a'=auto, 'm'=moto
	HoraLlegada datetime not null,
	HoraSalida datetime
);

alter table Vehiculos
	add constraint CK_vehiculos_tipo
	check (Tipo in ('a','m'));

alter table Vehiculos
	add constraint DF_vehiculos_tipo
	default 'a' for Tipo;

alter table Vehiculos
	add constraint CK_vehiculos_patente_patron
	check (Patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table Vehiculos
	add constraint PK_vehiculos_patentellegada
	primary key(Patente,HoraLlegada);

insert into Vehiculos 
	values('SDR456','a','2005/10/10 10:10',null);

insert into Vehiculos 
	values('SDR456','m','2005/10/10 10:10',null);

insert into Vehiculos 
	values('SDR456','m','2005/10/10 12:10',null);

insert into Vehiculos 
	values('SDR111','m','2005/10/10 10:10',null);

exec sp_helpconstraint Vehiculos;

alter table Vehiculos
	drop DF_vehiculos_tipo;

exec sp_helpconstraint Vehiculos;

alter table Vehiculos
	drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

--66 - Combinación interna (inner join)
--Primer problema:
if (object_id('Clientes')) is not null
	drop table Clientes;
if (object_id('Provincias')) is not null
	drop table Provincias;

create table Clientes 
(
	Codigo int identity,
	Nombre varchar(30),
	Domicilio varchar(30),
	Ciudad varchar(20),
	CodigoProvincia tinyint not null,
	primary key(Codigo)
);

create table Provincias
(
	Codigo tinyint identity,
	Nombre varchar(20),
	primary key (Codigo)
);

insert into Provincias (Nombre) 
	values('Cordoba');
insert into Provincias (Nombre) 
	values('Santa Fe');
insert into Provincias (Nombre) 
	values('Corrientes');

insert into Clientes 
	values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into Clientes  
	values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into Clientes 
	values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into Clientes 
	values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into Clientes 
	values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
insert into Clientes 
	values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into Clientes 
	values ('Torres Fabiola','Alem 777','Ibera',3);

select c.Nombre,Domicilio,Ciudad,p.Nombre
	from Clientes as c join Provincias as p
	on c.CodigoProvincia = p.Codigo;

select c.Nombre,Domicilio,Ciudad,p.Nombre
	from Clientes as c join Provincias as p
	on c.CodigoProvincia = p.Codigo order by p.Nombre;

select c.Nombre,Domicilio,Ciudad
	from Clientes as c join Provincias as p
	on c.CodigoProvincia = p.Codigo where p.Nombre = 'Santa Fe';

--Segundo problema:
if (object_id('Inscriptos')) is not null
	drop table Inscriptos;
if (object_id('Inasistencias')) is not null
	drop table Inasistencias;

create table Inscriptos
(
	Nombre varchar(30),
	Documento char(8),
	Deporte varchar(15),
	Matricula char(1), --'s'=paga 'n'=impaga
	primary key(Documento,Deporte)
);

create table Inasistencias
(
  Documento char(8),
  Deporte varchar(15),
  Fecha datetime
);

insert into Inscriptos values('Juan Perez','22222222','tenis','s');
insert into Inscriptos values('Maria Lopez','23333333','tenis','s');
insert into Inscriptos values('Agustin Juarez','24444444','tenis','n');
insert into Inscriptos values('Marta Garcia','25555555','natacion','s');
insert into Inscriptos values('Juan Perez','22222222','natacion','s');
insert into Inscriptos values('Maria Lopez','23333333','natacion','n');

insert into Inasistencias values('22222222','tenis','2006-12-01');
insert into Inasistencias values('22222222','tenis','2006-12-08');
insert into Inasistencias values('23333333','tenis','2006-12-01');
insert into Inasistencias values('24444444','tenis','2006-12-08');
insert into Inasistencias values('22222222','natacion','2006-12-02');
insert into Inasistencias values('23333333','natacion','2006-12-02');

select Nombre,insc.Deporte,ina.Fecha
	from Inscriptos as insc join Inasistencias as ina
	on insc.Documento = ina.Documento and insc.Deporte = ina.Deporte
	order by Nombre, insc.Deporte;

select Nombre,insc.Deporte, ina.Fecha
	from Inscriptos as insc join Inasistencias as ina
	on insc.Documento = ina.Documento and insc.Deporte = ina.Deporte
	where insc.Documento = '22222222';

select Nombre,insc.Deporte, ina.Fecha
	from Inscriptos as insc join Inasistencias as ina
	on insc.Documento = ina.Documento and insc.Deporte = ina.Deporte
	where insc.Matricula = 's';

--67 - Combinación externa izquierda (left join)
if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';

--68 - Combinación externa derecha (right join)
if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by ciudad;

--69 - Combinación externa completa (full join)
if (object_id('deportes')) is not null
  drop table deportes;
 if (object_id('inscriptos')) is not null
  drop table inscriptos;
 create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );
 create table inscriptos(
  documento char(8),
  codigodeporte tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );

 insert into deportes values('tenis','Marcelo Roca');
 insert into deportes values('natacion','Marta Torres');
 insert into deportes values('basquet','Luis Garcia');
 insert into deportes values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 

 select documento,d.nombre,matricula
  from inscriptos as i
  join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from deportes as d
  right join inscriptos as i
  on codigodeporte=codigo;

 select nombre
  from deportes as d
  left join inscriptos as i
  on codigodeporte=codigo
  where codigodeporte is null;

 select documento
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo
  where codigo is null;

 select documento,nombre,profesor,matricula
  from inscriptos as i
  full join deportes as d
  on codigodeporte=codigo;

--70 - Combinaciones cruzadas (cross join)
--Primer problema:
if object_id('mujeres') is not null
  drop table mujeres;
 if object_id('varones') is not null
  drop table varones;
 create table mujeres(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );
 create table varones(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );

 insert into mujeres values('Maria Lopez','Colon 123',45);
 insert into mujeres values('Liliana Garcia','Sucre 456',35);
 insert into mujeres values('Susana Lopez','Avellaneda 98',41);

 insert into varones values('Juan Torres','Sarmiento 755',44);
 insert into varones values('Marcelo Oliva','San Martin 874',56);
 insert into varones values('Federico Pereyra','Colon 234',38);
 insert into varones values('Juan Garcia','Peru 333',50);

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad>40 and
  v.edad>40;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad-v.edad between -10 and 10;

--Segundo problema:
if object_id('guardias') is not null
  drop table guardias;
 if object_id('tareas') is not null
  drop table tareas;

 create table guardias(
  documento char(8),
  nombre varchar(30),
  sexo char(1), /* 'f' o 'm' */
  domicilio varchar(30),
  primary key (documento)
 );

 create table tareas(
  codigo tinyint identity,
  domicilio varchar(30),
  descripcion varchar(30),
  horario char(2), /* 'AM' o 'PM'*/
  primary key (codigo)
 );

 insert into guardias values('22333444','Juan Perez','m','Colon 123');
 insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
 insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
 insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
 insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');

 insert into tareas values('Colon 1111','vigilancia exterior','AM');
 insert into tareas values('Urquiza 234','vigilancia exterior','PM');
 insert into tareas values('Peru 345','vigilancia interior','AM');
 insert into tareas values('Avellaneda 890','vigilancia interior','PM');

 select nombre,t.domicilio,descripcion
  from guardias
  cross join tareas as t;

 select nombre,t.domicilio,descripcion
  from guardias as g
  cross join tareas as t
  where (g.sexo='f' and t.descripcion='vigilancia interior') or
  (g.sexo='m' and t.descripcion='vigilancia exterior');

--73 - Combinación de más de dos tablas
if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';

--82 - Unión
if object_id('clientes') is not null
  drop table clientes;
 if object_id('proveedores') is not null
  drop table proveedores;
 if object_id('empleados') is not null
  drop table empleados;

 create table proveedores(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table clientes(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table empleados(
  documento char(8) not null,
  nombre varchar(20),
  apellido varchar(20),
  domicilio varchar(30),
  primary key(documento)
 );

 insert into proveedores values('Bebida cola','Colon 123');
 insert into proveedores values('Carnes Unica','Caseros 222');
 insert into proveedores values('Lacteos Blanca','San Martin 987');
 insert into clientes values('Supermercado Lopez','Avellaneda 34');
 insert into clientes values('Almacen Anita','Colon 987');
 insert into clientes values('Garcia Juan','Sucre 345');
 insert into empleados values('23333333','Federico','Lopez','Colon 987');
 insert into empleados values('28888888','Ana','Marquez','Sucre 333');
 insert into empleados values('30111111','Luis','Perez','Caseros 956');

 select nombre, domicilio from proveedores
  union
  select nombre, domicilio from clientes
   union
   select (apellido+' '+nombre), domicilio from empleados;

 select nombre, domicilio, 'proveedor' as categoria from proveedores
  union
  select nombre, domicilio, 'cliente' from clientes
   union
   select (apellido+' '+nombre), domicilio , 'empleado' from empleados
  order by categoria;

--83 - Agregar y eliminar campos ( alter table - add - drop)
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  fechaingreso datetime
 );
 insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

 alter table empleados
  add sueldo decimal(5,2);

 exec sp_columns empleados;

 alter table empleados
  add codigo int identity;

 alter table empleados
  add documento char(8) not null;

 alter table empleados
  add documento char(8) not null default '00000000';

 exec sp_columns empleados;

 alter table empleados
  drop column sueldo;

 exec sp_columns empleados;

 alter table empleados
  drop column documento;

 alter table empleados
  drop column codigo,fechaingreso;

 exec sp_columns empleados;

--84 - Alterar campos (alter table - alter)
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  legajo int not null,
  documento char(7) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires',
  sueldo decimal(6,2),
  cantidadhijos tinyint default 0,
  primary key(legajo)
 );

 alter table empleados
  alter column nombre varchar(30);

 exec sp_columns empleados;

 alter table empleados
  alter column sueldo decimal(6,2) not null;

 alter table empleados
  alter column documento char(8) not null;

 alter table empleados
  alter column legajo tinyint not null;

 insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
 insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);

 alter table empleados
  alter column nombre varchar(30) not null;

 delete from empleados where nombre is null;
 alter table empleados
  alter column nombre varchar(30) not null;

 alter table empleados
  alter column ciudad varchar(10);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column ciudad varchar(15);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column legajo int identity;

--86 - Campos calculados
if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montototal as precio *cantidad
 );

 insert into articulos values('birome',1.5,100,150);

 insert into articulos values('birome',1.5,100);
 insert into articulos values('cuaderno 12 hojas',4.8,150);
 insert into articulos values('lapices x 12',5,200);

 select * from articulos;

 update articulos set precio=2 where descripcion='birome';
 select * from articulos;

 update articulos set cantidad=200 where descripcion='birome';
 select * from articulos;

 update articulos set montototal=300 where descripcion='birome';

--92 - Subconsultas como expresión
if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );

 insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);

 select documento ,nombre, nota
  from alumnos
  where nota=
   (select nombre,max(nota) from alumnos);

 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

 update alumnos set nota=4
  where nota=
   (select min(nota) from alumnos);

 delete from alumnos
 where nota<
   (select avg(nota) from alumnos);

--93 - Subconsultas con in
if (object_id('ciudades')) is not null
   drop table ciudades;
  if (object_id('clientes')) is not null
   drop table clientes;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,
 );

 insert into ciudades (nombre) values('Cordoba');
 insert into ciudades (nombre) values('Cruz del Eje');
 insert into ciudades (nombre) values('Carlos Paz');
 insert into ciudades (nombre) values('La Falda');
 insert into ciudades (nombre) values('Villa Maria');

 insert into clientes values ('Lopez Marcos','Colon 111',1);
 insert into clientes values ('Lopez Hector','San Martin 222',1);
 insert into clientes values ('Perez Ana','San Martin 333',2);
 insert into clientes values ('Garcia Juan','Rivadavia 444',3);
 insert into clientes values ('Perez Luis','Sarmiento 555',3);
 insert into clientes values ('Gomez Ines','San Martin 666',4);
 insert into clientes values ('Torres Fabiola','Alem 777',5);
 insert into clientes values ('Garcia Luis','Sucre 888',5);

 select nombre
  from ciudades
  where codigo in
   (select codigociudad
     from clientes
     where domicilio like 'San Martin %');

 select distinct ci.nombre
  from ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  where domicilio like 'San Martin%';

 select nombre
  from ciudades
  where codigo not in
   (select codigociudad
     from clientes
     where nombre like 'G%');

 select codigociudad
  from clientes
  where nombre like 'G%';

--94 - Subconsultas any - some - all
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
   (select deporte
    from inscriptos as i
    where numerosocio=2);

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
   (select cuotas
    from inscriptos
    where numerosocio=1);

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
   (select cuotas
    from inscriptos
    where numerosocio=1);

 delete from inscriptos
  where numerosocio=any
   (select numerosocio 
    from inscriptos
    where cuotas=0);

--95 - Subconsultas correlacionadas
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;

--96 - Exists y No Exists
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select nombre
  from socios as s
  where not exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select s.*
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.cuotas=10);

--98 - Subconsulta en lugar de una tabla
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  año char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.año,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;

--99 - Subconsulta (update - delete)
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  matricula char(1),-- 'n' o 's'
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis','s');
 insert into inscriptos values(1,'basquet','s');
 insert into inscriptos values(1,'natacion','s');
 insert into inscriptos values(2,'tenis','s');
 insert into inscriptos values(2,'natacion','s');
 insert into inscriptos values(2,'basquet','n');
 insert into inscriptos values(2,'futbol','n');
 insert into inscriptos values(3,'tenis','s');
 insert into inscriptos values(3,'basquet','s');
 insert into inscriptos values(3,'natacion','n');
 insert into inscriptos values(4,'basquet','n');

 update inscriptos set matricula='s'
  where numerosocio=
   (select numero
     from socios
     where documento='25555555');

 delete from inscriptos
  where numerosocio in
   (select numero
    from socios as s
    join inscriptos
    on numerosocio=numero
    where matricula='n');

--100 - Subconsulta (insert)
if object_id('facturas') is not null
  drop table facturas;
 if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  total decimal(6,2),
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
 );

 insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');
 insert into clientes values('Susana Molina','San Martin 555');

 insert into facturas values(1200,'2007-01-15',1,300);
 insert into facturas values(1201,'2007-01-15',2,550);
 insert into facturas values(1202,'2007-01-15',3,150);
 insert into facturas values(1300,'2007-01-20',1,350);
 insert into facturas values(1310,'2007-01-22',3,100);

 if object_id ('clientespref') is not null
  drop table clientespref;
 create table clientespref(
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into clientespref
  select nombre,domicilio
   from clientes 
   where codigo in 
    (select codigocliente
     from clientes as c
     join facturas as f
     on codigocliente=codigo
     group by codigocliente
     having sum(total)>500);

 select * from clientespref;

--101 - Crear tabla a partir de otra (select - into)
if object_id('empleados')is not null
  drop table empleados;
 if object_id('sucursales')is not null
  drop table sucursales;

 create table sucursales( 
  codigo int identity,
  ciudad varchar(30) not null,
  primary key(codigo)
 ); 

 create table empleados( 
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  codigosucursal int,
  primary key(documento),
  constraint FK_empleados_sucursal
   foreign key (codigosucursal)
   references sucursales(codigo)
   on update cascade
 ); 

 insert into sucursales values('Cordoba');
 insert into sucursales values('Villa Maria');
 insert into sucursales values('Carlos Paz');
 insert into sucursales values('Cruz del Eje');

 insert into empleados values('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1);
 insert into empleados values('23333333','Carlos Caseros','Colon 222','Sistemas',800,1);
 insert into empleados values('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2);
 insert into empleados values('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2);
 insert into empleados values('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3);
 insert into empleados values('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4);
 insert into empleados values('28888888','Luis Lopez','Lules 888','Sistemas',780,4);
 insert into empleados values('29999999','Maria Morales','Marina 999','Contaduria',670,4);

 select documento,nombre,domicilio,seccion,sueldo,ciudad
  from empleados
  join sucursales on codigosucursal=codigo;

 if object_id('secciones') is not null
  drop table secciones;

 select distinct seccion as nombre
  into secciones
  from empleados;

 select *from secciones;

 if object_id('sueldosxseccion') is not null
  drop table sueldosxseccion;

 select seccion, sum(sueldo) as total
  into sueldosxseccion
  from empleados
  group by seccion;

 select *from sueldosxseccion;

 if object_id('maximossueldos') is not null
  drop table maximossueldos;

 select top 3 *
  into maximossueldos
  from empleados
  order by sueldo;

 select *from maximossueldos;

 if object_id('sucursalCordoba') is not null
  drop table sucursalCordoba;

 select nombre,ciudad
  into sucursalCordoba
  from empleados
  join sucursales
  on codigosucursal=codigo
  where ciudad='Cordoba';

 select *from sucursalCordoba;

--103 - Vistas
if object_id('inscriptos') is not null  
  drop table inscriptos;
 if object_id('socios') is not null  
  drop table socios;
 if object_id('profesores') is not null  
  drop table profesores; 
 if object_id('cursos') is not null  
  drop table cursos;

 create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

 create table profesores(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_profesores_documento
   primary key (documento)
 );

 create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  documentoprofesor char(8),
  constraint PK_cursos_numero
   primary key (numero),
 );

 create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint CK_inscriptos_matricula check (matricula in('s','n')),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero)
 );

 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
 insert into profesores values('23333333','Carlos Caseres','Colon 245');
 insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
 insert into profesores values('25555555','Esteban Lopez','Sucre 1204');

 insert into cursos values('tenis','lunes','22222222');
 insert into cursos values('tenis','martes','22222222');
 insert into cursos values('natacion','miercoles','22222222');
 insert into cursos values('natacion','jueves','23333333');
 insert into cursos values('natacion','viernes','23333333');
 insert into cursos values('futbol','sabado','24444444');
 insert into cursos values('futbol','lunes','24444444');
 insert into cursos values('basquet','martes','24444444');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',8,'s');

 if object_id('vista_club') is not null drop view vista_club;

 create view vista_club as
  select s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
   p.nombre as profesor, matricula
   from socios as s
   full join inscriptos as i
   on s.documento=i.documentosocio
   full join cursos as c
   on i.numero=c.numero
   full join profesores as p
   on c.documentoprofesor=p.documento;

 select *from vista_club;

 select deporte,dia,count(socio) as cantidad
  from vista_club
  where deporte is not null
  group by deporte,dia
  order by cantidad;

 select deporte,dia from vista_club
  where socio is null and deporte is not null;

 select socio from vista_club
  where deporte is null and socio is not null;

 select profesor from vista_club where deporte is null and profesor is not null;

 select socio, docsocio from vista_club where deporte is not null and matricula <> 's';

 select distinct profesor,dia
  from vista_club where profesor is not null;

 select distinct profesor,dia
  from vista_club where profesor is not null
  order by dia;

 select socio from vista_club
  where deporte='tenis' and dia='lunes';

 if object_id('vista_inscriptos') is not null
  drop view vista_inscriptos;

 create view vista_inscriptos as
  select deporte,dia,
   (select count(*)
    from inscriptos as i
    where i.numero=c.numero) as cantidad
  from cursos as c;

 select *from vista_inscriptos;

--110 - Lenguaje de control de flujo (case)
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

 select nombre,datepart(year,fechaingreso) as añoingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as AñosdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de años es divisible por 10
     else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

 select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;

--111 - Lenguaje de control de flujo (if)
--Primer problema:
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10',550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06',650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25',510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29',700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22',400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10',420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21',350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12',390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02',400);

 if exists(select * from empleados
	   where datepart(month,fechanacimiento)=5)--si hay empleados que cumplan en mayo
  (select sexo,count(*) as cantidad 
   from empleados
   where datepart(month,fechanacimiento)=5
   group by sexo)
 else select 'no hay empleados que cumplan en mayo';

--Segundo problema:
if object_id('entradas') is not null
  drop table entradas;

 create table entradas(
  sala tinyint,
  fechahora datetime,
  capacidad smallint,
  entradasvendidas smallint,
  primary key(sala,fechahora)
 );

 insert into entradas values(1,'2006-05-10 20:00',300,50);
 insert into entradas values(1,'2006-05-10 23:00',300,250);
 insert into entradas values(2,'2006-05-10 20:00',400,350);
 insert into entradas values(2,'2006-05-11 20:00',400,380);
 insert into entradas values(2,'2006-05-11 23:00',400,400);
 insert into entradas values(3,'2006-05-12 20:00',350,350);
 insert into entradas values(3,'2006-05-12 22:30',350,100);
 insert into entradas values(4,'2006-05-12 20:00',250,0);

 if exists
  (select * from entradas where capacidad>entradasvendidas)
  select sala,fechahora,capacidad-entradasvendidas as disponibles
   from entradas
   where capacidad>entradasvendidas
 else select 'Todas las entradas estan agotadas';

--120 - Procedimientos almacenados (crear - ejecutar)
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

 if object_id('pa_empleados_sueldo') is not null
  drop procedure pa_empleados_sueldo;

 create procedure pa_empleados_sueldo
 as
  select nombre,apellido,sueldo
   from empleados;

 exec pa_empleados_sueldo;

 if object_id('pa_empleados_hijos') is not null
  drop procedure pa_empleados_hijos;

 create procedure pa_empleados_hijos
 as
  select nombre,apellido,cantidadhijos
   from empleados
   where cantidadhijos>0;

 exec pa_empleados_hijos;

 update empleados set cantidadhijos=1 where documento='22333333';
 exec pa_empleados_hijos;

--135 - Funciones escalares (crear y llamar)
--Primer problema:
if object_id('consultas') is not null
  drop table consultas;
 if object_id('medicos') is not null
  drop table medicos;

 create table medicos (
  documento char(8) not null,
  nombre varchar(30),
  constraint PK_medicos 
   primary key clustered (documento)
 );

 create table consultas(
  fecha datetime,
  medico char(8) not null,
  paciente varchar(30),
  constraint PK_consultas
   primary key (fecha,medico),
  constraint FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on update cascade
   on delete cascade
 );

 insert into medicos values('22222222','Alfredo Acosta');
 insert into medicos values('23333333','Pedro Perez');
 insert into medicos values('24444444','Marcela Morales');

 insert into consultas values('2007/03/26 8:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/26 8:00','23333333','Gaston Gomez');
 insert into consultas values('2007/03/26 8:30','22222222','Nora Norte');
 insert into consultas values('2007/03/28 9:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/29 8:00','24444444','Nora Norte');
 insert into consultas values('2007/03/24 8:30','22222222','Hector Huerta'); 
 insert into consultas values('2007/03/24 9:30','23333333','Hector Huerta');

 if object_id('f_nombreDia') is not null
  drop function f_nombreDia;

 create function f_nombreDia
 (@fecha varchar(30))
  returns varchar(10)
  as
  begin
    declare @nombre varchar(10)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(weekday,@fecha)
       when 'Monday' then 'lunes'
       when 'Tuesday' then 'martes'
       when 'Wednesday' then 'miércoles'
       when 'Thursday' then 'jueves'
       when 'Friday' then 'viernes'
       when 'Saturday' then 'sábado'
       when 'Sunday' then 'domingo'
      end--case
    end--si es una fecha válida
    return @nombre
 end;
 
 if object_id('f_horario') is not null
  drop function f_horario;

 create function f_horario
 (@fecha varchar(30))
  returns varchar(5)
  as
  begin
    declare @nombre varchar(5)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(hour,@fecha) as char(2)))+':'
      set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as char(2)))
    end--si es una fecha válida
    return @nombre
 end;

 if object_id('f_fecha') is not null
  drop function f_fecha;

 create function f_fecha
 (@fecha varchar(30))
  returns varchar(12)
  as
  begin
    declare @nombre varchar(12)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as char(4)))
    end--si es una fecha válida
    return @nombre
 end;

 select dbo.f_nombredia(fecha) as dia,
  dbo.f_fecha(fecha) as fecha,
  dbo.f_horario(fecha) as horario,
  paciente
  from consultas as c
  join medicos as m
  on m.documento=c.medico
  where m.nombre='Alfredo Acosta';

 select fecha, m.nombre
 from consultas as c
 join medicos as m
 on m.documento=c.medico
 where dbo.f_nombredia(fecha)='sábado';

 declare @valor char(30)
 set @valor='2007/04/09'
 select dbo.f_nombreDia(@valor);

--Segundo problema:
if object_id('empleados') is not null
  drop table empleados;
 create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  fechanacimiento datetime,
  fechaingreso datetime,
  telefono char(12),
  mail varchar(50)
 );

  insert into empleados values('22222222', 'Ana Acosta', '1970/10/02', '1995/10/10', '4556677', 'anitaacosta@hotmail.com');
  insert into empleados values('25555555', 'Bernardo Bustos', '1973/01/15', '1999/02/15', '4789012', null);
  insert into empleados values('30000000', 'Carlos Caseros', '1980/5/25', '2001/05/05', null, null);
  insert into empleados values('32222222', 'Estela Esper', '1985/02/20', '2006/12/12', null, 'estelaesper@gmail.com');

 if object_id('f_edad') is not null
  drop function f_edad;

 create function f_edad
 (@fechaactual datetime,
  @fecha datetime='2007/01/01'
  )
  returns tinyint
  as
  begin
    declare @edad tinyint
    set @edad=null
    if (@fechaactual>=@fecha)
    begin
      set @edad=datepart(year,@fechaactual)-datepart(year,@fecha)
      if (datepart(month,@fecha)>datepart(month,@fechaactual))
       set @edad=@edad-1
      else 
        if (datepart(month,@fecha)=datepart(month,@fechaactual)) and 
	   (datepart(day,@fecha)>datepart(day,@fechaactual))
          set @edad=@edad-1
     end--es mayor la actual
    return @edad
  end;

 select nombre, dbo.f_edad(getdate(),fechanacimiento) as edad
  from empleados;

 select nombre, dbo.f_edad(fechaingreso,fechanacimiento) as 'edad al ingresar',
   dbo.f_edad(getdate(),fechaingreso) as 'años de servicio'
  from empleados;

 select dbo.f_edad(getdate(),'1971/05/25');

 select dbo.f_edad();

 select dbo.f_edad(getdate(),default);

  if object_id('f_valorNulo') is not null
   drop function f_valorNulo;

 create function f_valorNulo
 (@valor varchar(50))
 returns varchar(50)
 begin
  if @valor is null
   set @valor='No tiene'
  return @valor
 end;

 select documento,nombre,fechanacimiento,
  dbo.f_valorNulo(telefono) as telefono,
  dbo.f_valorNulo(mail) as mail
  from empleados;

--136 - Funciones de tabla de varias instrucciones
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  drop function f_empleados;

 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;

 select *from dbo.f_empleados('total');

 select *from dbo.f_empleados();

 select *from dbo.f_empleados('');

 select *from dbo.f_empleados('parcial')
  where domicilio='Cordoba';