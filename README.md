# Desafio-Alegra-BI-DEV
Desafío Alegra BI DEV

Contexto: DeliveryApp es una empresa canadiense que distribuye productos tecnológicos por las diferentes provincias del país, después de sus primeros 3 años de funcionamiento  quieren medir sus esfuerzos  con el fin de tomar decisiones basadas en datos, y te han contratado a ti  para que les ayude en esa misión.

Para ello cuentas con las tablas que se encuentran en el archivo BD - Test Business Intelligence Developer(cada hoja es una tabla, en la hoja Leer se describe cada una), puede cargarlas en cualquier herramienta de gestión de bases de datos en donde pueda utilizar lenguaje SQL para resolver las siguientes preguntas.

Nota: realice una copia de este documento agregando al título del archivo su nombre, así puede  anexar las consultas SQL y los resultados después de cada punto. También nos gustaría conocer la herramienta y comandos utilizados para cargar la información en el sistema de gestión de bases de datos, si le es posible realice un vídeo o tome capturas de pantalla.

1. ¿Cuál ha sido el porcentaje de crecimiento de las ventas por año?

    Agrupe por año las ventas brutas (precio unitario* cantidad) y las ventas netas (restando los descuentos) por año, obtenga la variación en números absolutos y en tasa de crecimiento respecto al año anterior. También incluya el número total de productos vendidos ( suma cantidades) y número de pedidos (ventas únicas) por año.

    Nota: La tabla ventas no cuenta aún con id, incluya un índice que le permita usar como identificador para contar las ventas únicas.

2. Se está pensando darle mayor atención a los medios de envío con mayor prioridad. Identifique el medio de envío con mayor cantidad de pedidos con Prioridad High o Critical, y compare la cantidad de pedidos y valores totales  de este medio de envío respecto al resto de medios, obteniendo los resultados en porcentajes. Este análisis se desea hacer para la provincia con mayor de número de ventas (cantidad de ventas  únicas).

3. La empresa quiere analizar las pérdidas por descuentos realizados. Por cada “Segmento” que atiende la empresa muestre el dinero perdido por descuentos, además el porcentaje que representa respecto al valor total de las ventas sin descuentos (valor total descuentos/valor total de ventas sin descuentos) y el número de ventas únicas que se han atendido por segmento. Por tratarse de un análisis muy específico, sólo debe considerar en la consulta los hombres (M) desde 30 años en adelante. Ordene su tabla por el número de ventas mostrando primero el segmento con mayor número de éstas. Puede utilizar subconsultas.

4. La empresa desea premiar  a sus mejores clientes durante el último año, 2012 , como estrategia de retención.  Por ello, define los siguientes obsequios.

    Obsequio A: El mejor cliente. El cliente con la compra más alta (quien realizó la compra neta con mayor valor).

    Obsequio B: Cliente más fiel. El cliente con mayor cantidad de compras únicas.

    Obséquio C: Clientes estrellas. Ranking con los 3 clientes que dejaron más ganancias.

    El obsequio consiste en un bonus para comprar cualquier producto de la tienda, en función del total de sus compras (valor neto)  durante el 2012.

    | Obsequio | Porcentaje de descuento |
    | --- | --- |
    | A | 1% |
    | B | 2% |
    | C | 4% |

	¿Cuál será el valor del bonus por cada cliente?

Puedes hacer la presentación que más te guste!