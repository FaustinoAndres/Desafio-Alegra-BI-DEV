-- Obsequio A: El mejor cliente.
--El cliente con la compra más alta (quien realizó la compra neta con mayor valor).

SELECT 		CLIENTE.ID, CLIENTE.nombre, CLIENTE.edad, CLIENTE.genero,
			ROUND(cantidad*precio_unitario*(1.-DESCUENTO.descuento)) AS "venta neta"
FROM VENTAS
LEFT JOIN DESCUENTO
ON VENTAS.descuentoid = DESCUENTO.id
LEFT JOIN CLIENTE
ON CLIENTE.id = VENTAS.clienteid
WHERE EXTRACT(YEAR FROM VENTAS.fecha_de_venta) = 2012
ORDER BY "venta neta" DESC
LIMIT 1
;

--Obsequio B