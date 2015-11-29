--Muestra el detalle de las notas 

select s.id_pedido,s.id_producto, precio, s.stock,s.monto_final
from (select  pp.id_pedido,pp.id_producto, stock,monto_final
	from pedido_producto as pp left join pedido p 
	on p.id_pedido=pp.id_pedido
	where p.id_pedido is not null) as s  
	left join producto as prdc 
	on s.id_producto=prdc.id_producto
where prdc.id_producto is not null
group by s.id_pedido,s.id_producto, precio, s.stock,s.monto_final
order by 1 
