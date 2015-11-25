	DROP TABLE cliente_pedido;
	DROP TABLE orden;
	DROP TABLE cliente;

CREATE TABLE cliente
(
id_cliente SERIAL UNIQUE,
telefono VARCHAR NOT NULL,
email VARCHAR NOT NULL,
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
PRIMARY KEY (id_cliente, fecha)
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
precio INTEGER NOT NULL,
stock INTEGER,
PRIMARY KEY(id_producto)
);

CREATE TABLE pedido_cliente
(
id_pedido SERIAL UNIQUE REFERENCES pedido(id_pedido) MATCH SIMPLE,
cantidad_productos INTEGER NOT NULL,
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
PRIMARY KEY (id_pedido, id_producto)
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

CREATE TABLE proveedor
(
id_proveedor SERIAL UNIQUE,
nombre VARCHAR,
telefono INTEGER,
direccion VARCHAR,
PRIMARY KEY (id_proveedor)
);

CREATE TABLE producto_proveedor
(
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
id_proveedor SERIAL UNIQUE REFERENCES proveedor(id_proveedor) MATCH SIMPLE,
PRIMARY KEY (id_producto, id_proveedor)
);

CREATE TABLE orden
(
id_pedido SERIAL UNIQUE REFERENCES pedido(id_pedido) MATCH SIMPLE,
id_cliente SERIAL UNIQUE REFERENCES cliente(id_cliente) MATCH SIMPLE,
id_producto SERIAL UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
precio INTEGER ,
PRIMARY KEY (id_cliente, id_pedido, id_producto)
);