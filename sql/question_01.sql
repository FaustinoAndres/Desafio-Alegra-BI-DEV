SELECT  	EXTRACT(YEAR FROM VENTAS.fecha_de_venta) AS "Year",
			ROUND(SUM(cantidad*precio_unitario)) AS "Ventas brutas",
			ROUND(SUM(cantidad*precio_unitario*(1.-DESCUENTO.descuento))) AS "ventas netas",
			SUM(cantidad) AS "total productos vendidos",
			COUNT(VENTAS.ID) AS "Número de pedidos"
FROM 		VENTAS
LEFT JOIN	DESCUENTO
ON			VENTAS.descuentoid = DESCUENTO.id
GROUP BY 	EXTRACT(YEAR FROM VENTAS.fecha_de_venta)
ORDER BY	EXTRACT(YEAR FROM VENTAS.fecha_de_venta);