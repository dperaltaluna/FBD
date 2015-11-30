-- Script de consultas.

-- 1. Clientes y pedidos que hayan comprado el mismo producto 
-- en el año 2015 y que su país sea Japan.

SELECT *
FROM (cliente c INNER JOIN (cliente_pedido cp
	INNER JOIN pedido_producto pp ON (cp.id_pedido = pp.id_pedido)) as r 
	ON (c.id_cliente = r.id_cliente))
WHERE EXTRACT(YEAR FROM(fecha)) = 2015 AND c.pais = 'Japan';


-- 2. Los clientes que no hayan echo ningún pedido durante el 
-- mes de octubre de cualquier año.

SELECT cli.id_cliente, cp.id_pedido, cp.fecha, cli.nombre, cli.apellido_paterno, cli.apellido_materno
FROM (cliente_pedido cp INNER JOIN cliente cli ON (cp.id_cliente = cli.id_cliente))
WHERE EXTRACT(MONTH FROM(fecha)) != 10;


-- 3. Aquellos clientes y pedidos que empiecen con V y hayan 
-- comprado al menos un producto.

SELECT cl.id_cliente, cl.nombre, cl.apellido_paterno, cl.apellido_materno, cp.id_pedido, p.monto_final
FROM cliente cl INNER JOIN cliente_pedido cp 
     ON (cl.id_cliente = cp.id_cliente) 
	INNER JOIN pedido p ON (cp.id_pedido = p.id_pedido)
WHERE cl.nombre ~ '^V' AND p.monto_final > 0;


-- 4. Para aquellos clientes que hayan comprado al menos un producto en el año 2014 
-- con precio mayor a 50, mostrar una leyenda de 'Autorizado', si su costo es diferente 
-- a 20 el cliente sera 'Verificado', aquellos clientes que se llamen Erin su leyenda 
-- sera 'Activo', si su apellido es Perry el cliente sera 'Aprobando' 
-- y en cualquier otro caso 'En proceso'.

