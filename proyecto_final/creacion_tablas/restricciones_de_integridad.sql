-- Definicion de Checks

ALTER TABLE cliente
ADD CHECK (id_cliente > 0);

ALTER TABLE pedido
ADD CHECK (id_pedido > 0);

ALTER TABLE producto
ADD CHECK (id_producto > 0);

ALTER TABLE proveedor
ADD CHECK (id_proveedor > 0);

ALTER TABLE cliente
ADD CHECK (email::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text);

ALTER TABLE cliente
ADD CHECK (numero_tarjetac > 0);

ALTER TABLE proveedor
ADD CHECK (email::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text);

ALTER TABLE producto
ADD CHECK (precio > 0);

ALTER TABLE pedido
ADD CHECK (monto_final >= 0);

ALTER TABLE pedido_producto
ADD CHECK (stock >= 0);

ALTER TABLE procesador
ADD CHECK (nucleos > 0);