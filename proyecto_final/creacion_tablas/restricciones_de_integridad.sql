-- Definicion de Checks

ALTER TABLE cliente
ADD CHECK (email::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)

ALTER TABLE producto
ADD CHECK (precio > 0);

ALTER TABLE pedido
ADD CHECK (monto_final >= 0);

ALTER TABLE orden
ADD CHECK (precio > 0);

ALTER TABLE pedido_cliente
ADD CHECK (cantidad_productos >= 0);

ALTER TABLE procesador
ADD CHECK (nucleos > 0);