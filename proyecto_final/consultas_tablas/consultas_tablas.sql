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
WHERE EXTRACT(MONTH FROM(fecha)) != 10 and cli.id_cliente not in (
	select c.id_cliente
	from cliente_pedido as cp
		left join
		cliente as c 
		on cp.id_cliente=c.id_cliente
	where c.id_cliente is not null and EXTRACT(MONTH FROM(cp.fecha)) = 10 
	)

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


select * from (
(
	(
	select id_cliente AS CLIENTE,nombre,apellido_paterno AS APELLIDO,id_pedido AS PEDIDO,
	count(id_producto)AS NUMERO_PEDIDOS, 'Autorizado' AS estado_orden 
	from cliente natural join cliente_pedido 
	natural join pedido_producto WHERE EXTRACT(YEAR FROM(fecha)) = 2015 
	group by id_cliente, id_pedido,nombre ,apellido_paterno
	having count(id_producto) > 0
	) 
UNION 
	(
	select id_cliente AS CLIENTE,nombre,apellido_paterno AS APELLIDO,id_pedido AS PEDIDO,
	count(id_producto)AS NUMERO_PEDIDOS ,'Activo' AS estado_orden 
	from cliente natural join cliente_pedido 
	natural join pedido_producto WHERE nombre = 'Erin'
	group by id_cliente, id_pedido,nombre,apellido_paterno 
	having count(id_producto) > 0
	) 
UNION 
	(
	select  id_cliente AS CLIENTE,nombre,apellido_paterno AS APELLIDO,id_pedido AS PEDIDO,
	count(id_producto)AS NUMERO_PEDIDOS ,'Aprobando' AS estado_orden 
	from cliente natural join cliente_pedido 
	natural join pedido_producto WHERE apellido_paterno = 'Perry'
	group by id_cliente, id_pedido,nombre,apellido_paterno 
	having count(id_producto) > 0
	)
UNION 
	(
	select  c.id_cliente AS CLIENTE,c.nombre,apellido_paterno AS APELLIDO,id_pedido AS PEDIDO,
	count(t.id_producto) AS NUMERO_PEDIDOS ,'Verificado' AS estado_orden
	from cliente as c natural join cliente_pedido 
	natural join pedido_producto as t inner join producto as s on t.id_producto = s.id_producto WHERE precio != 20
	group by c.id_cliente, id_pedido,c.nombre,apellido_paterno 
	having count(t.id_producto) > 0
	)
UNION
	(
	select  id_cliente AS CLIENTE,nombre,apellido_paterno AS APELLIDO, id_pedido AS PEDIDO, 
	count(id_producto) AS NUMERO_PEDIDOS,'En proceso' AS estado_orden  
	from cliente natural join cliente_pedido 
	natural join pedido_producto group by id_cliente, id_pedido,nombre,apellido_paterno 
	having count(id_producto) > 0)
	)
	)
as c2;


-- select * from pedido_producto
---version tania
select *
from (select s.id_pedido,s.id_producto, precio, s.stock,s.monto_final
	from (select  pp.id_pedido,pp.id_producto, stock,monto_final
		from pedido_producto as pp left join pedido p 
		on p.id_pedido=pp.id_pedido
		where p.id_pedido is not null) as s  
		left join producto as prdc 
		on s.id_producto=prdc.id_producto
	where prdc.id_producto is not null
	group by s.id_pedido,s.id_producto, precio, s.stock,s.monto_final
	order by 1 
	) as r
	left join 
	(select c.id_cliente, c.nombre, c.apellido_paterno, c.apellido_materno, cp.id_pedido, cp.fecha
	from cliente_pedido as cp
		left join
		cliente as c
		on cp.id_cliente=c.id_cliente
	where c.id_cliente is not null)
	as cc
	on r.id_pedido=cc.id_pedido
where cc.id_pedido is not null
	and extract(year from cc.fecha)=2015 and precio>50;

