CREATE OR REPLACE FUNCTION SP_inserta_nuevo_cliente
(id_clienteX BIGINT,
nombreX VARCHAR,
apellido_paternoX VARCHAR,
apellido_maternoX VARCHAR,
usuarioX VARCHAR,
paswordX VARCHAR,
telefonoX VARCHAR,
emailX VARCHAR,
numero_tarjetaCX BIGINT,
numeroX INTEGER,
calleX VARCHAR,
coloniaX VARCHAR,
ciudadX VARCHAR,
paisX VARCHAR)

RETURNS VARCHAR

AS $$

DECLARE id_cliente_nuevo BIGINT;
DECLARE estatus_insercion VARCHAR(20);
BEGIN 
IF (( SELECT count(*) 
	FROM cliente 
	WHERE nombre = nombreX
	AND apellido_paterno=apellido_paternoX
	AND apellido_materno=apellido_maternoX)=0)
THEN 
id_cliente_nuevo = CASE
WHEN ((SELECT MAX (id_cliente)
	FROM cliente) IS NOT NULL)
	THEN (SELECT MAX(id_cliente)
	FROM cliente)+1
	ELSE 1
END;
INSERT INTO cliente VALUES (id_cliente_nuevo,nombreX,apellido_paternoX,apellido_maternoX,usuarioX,paswordX,telefonoX,emailX,numero_tarjetacX,numeroX,calleX,coloniaX,ciudadX,paisX);	
estatus_insercion="insercion exitosa";
ELSE
estatus_insercion="el cliente ya existe";
END IF;
RETURN estatus_insercion;
END;
$$
LANGUAGE 'plpgsql';


-- <<<<<<< HEAD
-- --calculamos el montofinal del pedido
-- CREATE OR REPLACE FUNCTION SP_calcula_monto_final(id_pedidoX BIGINT)
-- --funcion para calcular el monto total de un pedido
-- RETURNS real
-- AS
-- $$
-- DECLARE monto_nuevo real;
-- BEGIN 
-- monto_nuevo= (select monto
-- 		from  (select pp.id_pedido,pp.stock,p.precio,sum(stock*precio) as monto
-- 			FROM pedido_producto as pp LEFT JOIN producto as p
-- 			on pp.id_producto=p.id_producto
-- 			where p.id_producto is not null
-- 			group by pp.id_pedido,pp.stock,p.precio
-- 			) as c2);
-- 		
-- RETURN monto_nuevo;
-- END;
-- $$
-- LANGUAGE 'plpgsql';
-- =======
--calculamos el montofinal del pedido

CREATE OR REPLACE FUNCTION SP_calcula_monto_final(id_pedidoX BIGINT)
--funcion para calcular el monto total de un pedido
RETURNS real
AS
$$
DECLARE monto_nuevo real;
BEGIN 

		
RETURN (select monto
		from  (select pp.id_pedido,sum(precio) as monto
			FROM pedido_producto as pp LEFT JOIN producto as p
			on pp.id_producto=p.id_producto
			where pp.id_pedido=id_pedidoX
			group by pp.id_pedido
			)as c1);
END;
$$
LANGUAGE 'plpgsql';

