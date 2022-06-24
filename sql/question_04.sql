-- Obsequio A: El mejor cliente.
-- El cliente con la compra más alta (quien realizó la compra neta con mayor valor).

SELECT 		CLIENTE.ID, CLIENTE.nombre, CLIENTE.edad, CLIENTE.genero,
			ROUND(cantidad*precio_unitario*(1.-DESCUENTO.descuento)) AS "venta neta",
            ROUND(SUM(cantidad*precio_unitario*(1.-DESCUENTO.descuento)))*0.01 AS "obsequio A"
FROM VENTAS
LEFT JOIN DESCUENTO
ON VENTAS.descuentoid = DESCUENTO.id
LEFT JOIN CLIENTE
ON CLIENTE.id = VENTAS.clienteid
WHERE EXTRACT(YEAR FROM VENTAS.fecha_de_venta) = 2012
ORDER BY "venta neta" DESC
LIMIT 1
;

-- Obsequio B: Cliente más fiel.
-- El cliente con mayor cantidad de compras únicas.

SELECT 		clienteid AS "id",
            COUNT(VENTAS.ID) AS "Total_compras",
            ROUND(SUM(cantidad*precio_unitario*(1.-DESCUENTO.descuento))*0.02) AS "obsequio_B"
FROM VENTAS
LEFT JOIN DESCUENTO
ON VENTAS.descuentoid = DESCUENTO.id
LEFT JOIN CLIENTE
ON CLIENTE.id = VENTAS.clienteid
WHERE EXTRACT(YEAR FROM VENTAS.fecha_de_venta) = 2012
GROUP BY clienteid
ORDER BY "Total_compras" DESC
LIMIT 1;

SELECT CLIENTE.ID, CLIENTE.nombre, CLIENTE.edad, CLIENTE.genero
FROM CLIENTE
WHERE CLIENTE.ID = 17;

-- Obséquio C: Clientes estrellas.
-- Ranking con los 3 clientes que dejaron más ganancias.

SELECT 		clienteid AS "id",
			ROUND(SUM(cantidad*precio_unitario*(1.-DESCUENTO.descuento))) AS "Total_compras",
			ROUND(SUM(cantidad*precio_unitario*(1.-DESCUENTO.descuento))*0.04) AS "obsequio_C"
FROM VENTAS
LEFT JOIN DESCUENTO
ON VENTAS.descuentoid = DESCUENTO.id
LEFT JOIN CLIENTE
ON CLIENTE.id = VENTAS.clienteid
WHERE EXTRACT(YEAR FROM VENTAS.fecha_de_venta) = 2012
GROUP BY clienteid
ORDER BY "Total_compras" DESC
LIMIT 3;

SELECT CLIENTE.ID, CLIENTE.nombre, CLIENTE.edad, CLIENTE.genero
FROM CLIENTE
WHERE CLIENTE.ID IN (13, 12, 27);