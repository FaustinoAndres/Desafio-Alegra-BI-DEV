-- Debes asegurarte de tener los permisos para que el archivo pueda ser cargado a postgres

COPY PUBLIC.cliente
FROM 'C:\Users\Faustino\Documents\GitHub\Desafio-Alegra-BI-DEV\data\split\cliente.csv'
DELIMITER ','
CSV HEADER;

COPY PUBLIC.descuento
FROM 'C:\Users\Faustino\Documents\GitHub\Desafio-Alegra-BI-DEV\data\split\descuento.csv'
DELIMITER ','
CSV HEADER;

COPY PUBLIC.ventas
FROM 'C:\Users\Faustino\Documents\GitHub\Desafio-Alegra-BI-DEV\data\split\ventas.csv'
DELIMITER ','
CSV HEADER;