-- Provincia con más ventas

SELECT provincia, COUNT(ID) AS "Números de pedidos"
FROM VENTAS
GROUP BY provincia
ORDER BY COUNT(ID) DESC
;


--consulta completa
SELECT medio_de_envio, COUNT(VENTAS.ID) AS "pedidos",
		ROUND(SUM(cantidad*precio_unitario*(1.-DESCUENTO.descuento))) AS "ventas netas"
FROM VENTAS
LEFT JOIN DESCUENTO
ON VENTAS.descuentoid = DESCUENTO.id
WHERE provincia = (
	SELECT provincia
	FROM VENTAS
	GROUP BY provincia
	ORDER BY COUNT(ID) DESC
	LIMIT 1) AND prioridad IN ('High', 'Critical')
GROUP BY medio_de_envio
ORDER BY "pedidos" DESC
;