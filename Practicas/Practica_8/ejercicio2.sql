-- Ejercicio 2
-- Consulta 1: Consulta a la relacion Procesador

SELECT modelo_procesador, MAX(id_producto) AS maximo_id_producto
FROM "Procesador"
WHERE nucleos_fisicos_procesador >= 4 
GROUP BY modelo_procesador;

--Consulta 2: Pagos por cliente 
select rfc_cliente,sum(cantidad_pago)
from "Pago"
group by rfc_cliente

--Consulta 3: Cantidad de productos por cliente
select rfc_cliente,sum(cantidad_pedido) 
from "Pedido"
group by rfc_cliente 



