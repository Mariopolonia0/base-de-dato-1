--crear tabla de libros
create table Books(
	bookId int primary key not null,
	nombre varchar not null,
	nombreAutor varchar not null,
	edicion varchar not null,
	precio real not null
)

--modificar tamaño de una columna 
ALTER TABLE Books ALTER COLUMN nombre varchar(100);
ALTER TABLE Books ALTER COLUMN nombreAutor varchar(100);
ALTER TABLE Books ALTER COLUMN edicion varchar(100);

select * from Books;

--insertar
insert into Books(bookId ,nombre ,nombreAutor ,edicion ,precio ) 
	values (4,'Kaliman en el valle de los vampiros', 'Victor Fox', '2da', 400);

--actualizar
update Books
set nombre='no me hagas pensar',nombreAutor='Steve Krug',edicion='1ra',precio=200
where bookId = 1;
	
update Books
set nombre='Fundamentos de Programación',nombreAutor='Luis Joyanes Aguilar',edicion='1da',precio=410.0
where bookId = 3;

INSERT INTO Ocupaciones 
(ocupacionId, descripcion,fechaRegistro,Salario)

VALUES
 (2, "Diseñador","16/6/2022 0:0:0",90000 ),
 (3, "Cocinero","16/6/2022",90000 ),
 (4, "Ingeniero Civil","16/6/2022",90000 ),
 (5, "Ingeniero Sitema","16/6/2022",90000 ),
 (6, "Abogado","16/6/2022",60000 ),
 (7, "Ladron","16/6/2022",90000 ),
 (8, "Politico","16/6/2022",90000 ),
 (9, "Diseñador Grafico","16/6/2022",90000 ),
 (10, "Trailero","16/6/2022",90000 ),
 (11, "Mecanico","16/6/2022",90000 ),
 (12, "Artista","16/6/2022",90000 ),
 (13, "Maestro","16/6/2022",90000 )

INSERT INTO ocupaciones 
(OcupacionId, Descripcion,FechaRegistro,Salario)
VALUES
 (14, "Diseñador UX","2022-08-12 0:0:0.0",11000 ),
 (15, "Diseñador UI","2022-08-12 0:0:0.0",11000 )
