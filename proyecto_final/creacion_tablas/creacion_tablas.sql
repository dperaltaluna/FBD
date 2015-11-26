-- 	DROP TABLE cliente_pedido;
-- 	DROP TABLE orden;
-- 	DROP TABLE cliente;
drop schema public cascade;
create schema public;
CREATE TABLE cliente
(
id_cliente SERIAL UNIQUE,
nombre VARCHAR NOT NULL,
apellido_paterno VARCHAR NOT NULL,
apellido_materno VARCHAR NOT NULL,
usuario VARCHAR NOT NULL,
pasword VARCHAR NOT NULL,
telefono VARCHAR NOT NULL,
email VARCHAR NOT NULL,
numero_tarjetaC INTEGER,
numero INTEGER,
calle VARCHAR NOT NULL,
colonia VARCHAR  NOT NULL,
ciudad VARCHAR NOT NULL,
pais VARCHAR NOT NULL,
PRIMARY KEY(id_cliente)
);

CREATE TABLE cliente_pedido
(
id_cliente SERIAL UNIQUE REFERENCES cliente(id_cliente) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE,
id_pedido INTEGER NOT NULL,
fecha DATE,
PRIMARY KEY (id_cliente, id_pedido)
);

CREATE TABLE pedido
(
id_pedido SERIAL UNIQUE,
monto_final REAL,
PRIMARY KEY (id_pedido)
);

CREATE TABLE producto
(
id_producto SERIAL UNIQUE ,
nombre VARCHAR(20),
categoria VARCHAR,
precio INTEGER NOT NULL,
PRIMARY KEY(id_producto)
);



CREATE TABLE memoria_ram
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
capacidad VARCHAR,
interfaz VARCHAR,
PRIMARY KEY (id_producto)
);

CREATE TABLE tarjeta_grafica
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
memoria VARCHAR,
marca VARCHAR,
PRIMARY KEY (id_producto)
);

CREATE TABLE disco_duro
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
memoria VARCHAR,
marca VARCHAR,
tipo VARCHAR,
PRIMARY KEY (id_producto)
);

CREATE TABLE monitor
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
tamano VARCHAR,
tipo VARCHAR,
PRIMARY KEY (id_producto)
);

CREATE TABLE tarjeta_sonido
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
canales VARCHAR,
interfaces VARCHAR,
PRIMARY KEY (id_producto)
);

CREATE TABLE tarjeta_red
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
interfaces VARCHAR,
valocidad VARCHAR,
PRIMARY KEY (id_producto)
);

CREATE TABLE procesador
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
velocidad VARCHAR,
nucleos INTEGER,
PRIMARY KEY (id_producto)
);


CREATE TABLE pedido_producto
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
id_pedido SERIAL UNIQUE REFERENCES pedido(id_pedido) MATCH SIMPLE,
stock INTEGER,
PRIMARY KEY (id_producto, id_pedido)
);


CREATE TABLE orden 
(
id_cliente SERIAL UNIQUE REFERENCES cliente(id_cliente) MATCH SIMPLE,
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
id_pedido SERIAL UNIQUE REFERENCES pedido(id_pedido) MATCH SIMPLE,
PRIMARY KEY (id_producto, id_pedido, id_cliente)
);

CREATE TABLE proveedor
(
id_proveedor SERIAL UNIQUE,
nombre VARCHAR,
direccion VARCHAR,
email VARCHAR,
PRIMARY KEY (id_proveedor)
);

CREATE TABLE provee
(
id_proveedor SERIAL UNIQUE REFERENCES proveedor(id_proveedor) MATCH SIMPLE,
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
PRIMARY KEY (id_producto, id_proveedor)
);



CREATE OR REPLACE FUNCTION inserta_cliente_pedido() RETURNS TRIGGER AS $insertar$
DECLARE BEGIN 
	INSERT  INTO cliente_pedido VALUES(cliente.id_cliente);
	END;
$insertar$ LANGUAGE plpgsql;

CREATE TRIGGER realiza_orden
AFTER INSERT ON cliente
FOR EACH ROW 
EXECUTE PROCEDURE insertar_cliente_pedido();