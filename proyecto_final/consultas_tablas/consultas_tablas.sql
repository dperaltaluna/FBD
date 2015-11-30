--SELECT EXTRACT (YEAR FROM(fecha))

-- 1. Clientes y pedidos que hayan comprado el mismo producto 
-- en el año 2015 y que su país sea Japan.

SELECT *
FROM (cliente AS c INNER JOIN (cliente_pedido AS cp
	INNER JOIN pedido_producto AS pp ON (cp.id_pedido = pp.id_pedido)) as r 
	ON (c.id_cliente = r.id_cliente))
WHERE EXTRACT(YEAR FROM(fecha)) = 2015 AND c.pais = 'Japan';

-- 2. Los clientes que no hayan echo ningún pedido durante el 
-- mes de octubre de cualquier año.

SELECT *
FROM (cliente_pedido AS cp INNER JOIN cliente AS c ON (cp.id_cliente = c.id_cliente))
WHERE EXTRACT(MONTH FROM(fecha)) != 10;