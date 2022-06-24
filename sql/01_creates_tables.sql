CREATE TABLE PUBLIC.cliente(
	id INTEGER PRIMARY KEY,
	nombre VARCHAR(50),
	edad INTEGER,
	genero VARCHAR(1)
);

CREATE TABLE PUBLIC.descuento(
	id INTEGER PRIMARY KEY,
	descuento REAL
);

CREATE TABLE PUBLIC.ventas(
	Fecha_de_Venta TIMESTAMP,
	ClienteID INTEGER,
	Cantidad INTEGER,
	Precio_Unitario REAL,
	DescuentoID INTEGER,
	Prioridad VARCHAR(20),
	Medio_de_Envio VARCHAR(20),
	Segmento VARCHAR(20),
	Provincia VARCHAR(50),
	ID INTEGER PRIMARY KEY
);