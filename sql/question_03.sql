SELECT segmento AS "Segmento",
	ROUND(SUM(cantidad*precio_unitario*DESCUENTO.descuento)) AS "perdidas por desciuento",
	ROUND(100.*SUM(cantidad*precio_unitario*DESCUENTO.descuento)/SUM(cantidad*precio_unitario)) AS "ratio",
	COUNT(VENTAS.ID) AS "Número de pedidos"
FROM VENTAS
LEFT JOIN DESCUENTO
ON VENTAS.descuentoid = DESCUENTO.id
LEFT JOIN CLIENTE
ON CLIENTE.id = VENTAS.clienteid
WHERE CLIENTE.edad >= 30 AND CLIENTE.genero = 'M'
GROUP BY segmento
ORDER BY "Número de pedidos" DESC
;