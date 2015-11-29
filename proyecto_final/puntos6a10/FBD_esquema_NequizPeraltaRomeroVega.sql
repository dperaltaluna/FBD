--================================================
--CREACIÓN DE LA BASE DE DATOS
--================================================

CREATE DATABASE componentes_computacion;
--CREATE SCHEMA public;
--================================================
--CRACIÓN DE TABLAS DE LA BASE DE DATOS
--================================================
--- creacion de la tabla cliente 
--- para guardar la informacion de los clientess
--- de la tienda
CREATE TABLE cliente
(
  id_cliente BIGINT UNIQUE NOT NULL,
  nombre VARCHAR NOT NULL,
  apellido_paterno VARCHAR NOT NULL,
  apellido_materno VARCHAR NOT NULL,
  usuario VARCHAR NOT NULL,
  pasword VARCHAR NOT NULL,
  telefono VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  numero_tarjetaC BIGINT,
  numero INTEGER,
  calle VARCHAR,
  colonia VARCHAR,
  ciudad VARCHAR,
  pais VARCHAR,
  PRIMARY KEY(id_cliente)
);

--- creacion de la tabla pedido para poder identificar 
--- el monto a pagarpor la compra
CREATE TABLE pedido
(
  id_pedido BIGINT,
  monto_final BIGINT,
  PRIMARY KEY (id_pedido)
);

--- creacion de la tabla para relacionar a un cliente
--- con su pedido y guardar la fecha en que realizo su compra. 
CREATE TABLE cliente_pedido
(
  id_cliente BIGINT UNIQUE REFERENCES cliente(id_cliente) MATCH SIMPLE
  ON UPDATE CASCADE ON DELETE CASCADE,
  id_pedido BIGINT UNIQUE REFERENCES pedido(id_pedido) MATCH SIMPLE,
  fecha DATE,
  PRIMARY KEY (id_cliente, id_pedido)
);

--- creacion de la tabla producto que almacena todos 
--- los productos disponibles en la tienda.
CREATE TABLE producto
(
  id_producto BIGINT UNIQUE ,
  nombre VARCHAR(100),
  categoria VARCHAR,
  precio INTEGER NOT NULL,
  PRIMARY KEY(id_producto)
);

--- creacion de la tabla que almacena
--- aquellos productos de son una memoria ram.
CREATE TABLE memoria_ram
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  capacidad VARCHAR,
  interfaz VARCHAR,
  PRIMARY KEY (id_producto)
);

--- creacion de la tabla que almacena aquellos
--- productos que son una tarjeta grafica
CREATE TABLE tarjeta_grafica
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  memoria VARCHAR,
  marca VARCHAR,
  PRIMARY KEY (id_producto)
);

--- creacion de la tabla que almacena aquellos
--- productos que son un disco duro.
CREATE TABLE disco_duro
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  memoria VARCHAR,
  marca VARCHAR,
  tipo VARCHAR,
  PRIMARY KEY (id_producto)
);

--- creacion de la tabla que almace aquellos
--- productos que son un monitor
CREATE TABLE monitor
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  tamano VARCHAR,
  tipo VARCHAR,
  PRIMARY KEY (id_producto)
);

--- creacioon de la tabla que almacena aquellos
--- productos que son una tarjeta de sonido
CREATE TABLE tarjeta_sonido
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  canales VARCHAR,
  interfaces VARCHAR,
  PRIMARY KEY (id_producto)
);

--- creacion de la tabla que almacena aquellos
--- productos que son una tarjeta de red
CREATE TABLE tarjeta_red
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  interfaces VARCHAR,
  valocidad VARCHAR,
  PRIMARY KEY (id_producto)
);

--- creacion de la tabla que almacena aquellos
--- productos que son un procesador
CREATE TABLE procesador
(
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  velocidad VARCHAR,
  nucleos INTEGER,
  PRIMARY KEY (id_producto)
);

--- creacion de la tabla querelaciona los productos 
--- con el pedido al que corresponde
CREATE TABLE pedido_producto
(
  id_producto BIGINT REFERENCES producto(id_producto) MATCH SIMPLE,
  id_pedido BIGINT REFERENCES pedido(id_pedido) MATCH SIMPLE,
  stock INTEGER,
  PRIMARY KEY (id_producto, id_pedido)
);

--- creacion de la tabla que nos proporciona los
--- datos del proveedor de productos
CREATE TABLE proveedor
(
  id_proveedor BIGINT UNIQUE,
  nombre VARCHAR,
  direccion VARCHAR,
  email VARCHAR,
  PRIMARY KEY (id_proveedor)
);

--- tabla que relaciona a un producto 
--- con su proveedor
CREATE TABLE provee
(
  id_proveedor BIGINT UNIQUE REFERENCES proveedor(id_proveedor) MATCH SIMPLE,
  id_producto BIGINT UNIQUE REFERENCES producto(id_producto) MATCH SIMPLE,
  PRIMARY KEY (id_producto, id_proveedor)
);

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

