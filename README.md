# query importantes

## mostrar todos las tabla de la base de datos sql lite 

### SELECT * FROM sqlite_master WHERE type = "table";

## mostrar todos las tabla de la base de datos sql server 

### SELECT * FROM INFORMATION_SCHEMA.TABLES

### delete from Clientes where clienteId = 2

DELETE  from Ocupaciones where ocupacionId > 14

INSERT INTO Ocupaciones 
(ocupacionId, descripcion,fechaRegistro,Salario)
VALUES
 (2, "Diseñador","16/6/2022",90000 ),
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
 (13, "Maestro","16/6/2022",90000 );
