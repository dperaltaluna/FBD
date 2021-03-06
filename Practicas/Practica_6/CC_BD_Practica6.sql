--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: CC_BD_Practica6; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "CC_BD_Practica6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';


ALTER DATABASE "CC_BD_Practica6" OWNER TO postgres;

\connect "CC_BD_Practica6"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    nombre_cliente character varying(20),
    apellido_paterno_cliente character varying(20),
    apellido_materno_cliente character varying(20),
    fecha_nacimiento_cliente date,
    nombre_calle_cliente character varying(20) NOT NULL,
    colonia_cliente character varying(20) NOT NULL,
    delegacion_cliente character varying(20) NOT NULL,
    estado_cliente character varying(20) NOT NULL,
    ciudad_cliente character varying(20) NOT NULL,
    numero_interior_cliente integer NOT NULL,
    CONSTRAINT ch_rfc_cliente CHECK (((rfc_cliente)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Cliente" OWNER TO postgres;

--
-- Name: Compatibilidad_Procesador_Motherboard; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Compatibilidad_Procesador_Motherboard" (
    id_producto integer NOT NULL,
    id_motherboard integer NOT NULL,
    CONSTRAINT chk_id_motherboard CHECK (((id_motherboard > 0) AND (id_motherboard <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Compatibilidad_Procesador_Motherboard" OWNER TO postgres;

--
-- Name: Componente_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Componente_Pedido" (
    numero_pedido integer NOT NULL,
    componente character varying(20) NOT NULL,
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999)))
);


ALTER TABLE "Componente_Pedido" OWNER TO postgres;

--
-- Name: Correo_Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Correo_Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    correo_cliente character varying(30) NOT NULL,
    CONSTRAINT chk_correo_cliente CHECK (((correo_cliente)::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)),
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Correo_Cliente" OWNER TO postgres;

--
-- Name: Correo_Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Correo_Proveedor" (
    rfc_proveedor character varying(13) NOT NULL,
    correo_proveedor character varying(30) NOT NULL,
    CONSTRAINT chk_correo_proveedor CHECK (((correo_proveedor)::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)),
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Correo_Proveedor" OWNER TO postgres;

--
-- Name: Disco_Duro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Disco_Duro" (
    id_producto integer NOT NULL,
    tipo_disco_duro character varying(20),
    id_disco_duro integer NOT NULL,
    CONSTRAINT chk_id_disco_duro CHECK (((id_disco_duro > 0) AND (id_disco_duro <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Disco_Duro" OWNER TO postgres;

--
-- Name: Dispositivo_de_Entrada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Dispositivo_de_Entrada" (
    id_dispositivo_de_entrada integer NOT NULL,
    id_producto integer NOT NULL,
    tipo_dispositivo_de_entrada character varying(20),
    CONSTRAINT chk_id_dispositivo_de_entrada CHECK (((id_dispositivo_de_entrada > 0) AND (id_dispositivo_de_entrada <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Dispositivo_de_Entrada" OWNER TO postgres;

--
-- Name: Dispositivo_de_Salida; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Dispositivo_de_Salida" (
    id_dispositivo_de_salida integer NOT NULL,
    id_producto integer NOT NULL,
    tipo_dispositivo_de_salida character varying(20),
    CONSTRAINT chk_id_dispositivo_de_salida CHECK (((id_dispositivo_de_salida > 0) AND (id_dispositivo_de_salida <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Dispositivo_de_Salida" OWNER TO postgres;

--
-- Name: Entrega_Mensajero_Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Entrega_Mensajero_Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    rfc_mensajero character(13) NOT NULL,
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text)),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Entrega_Mensajero_Cliente" OWNER TO postgres;

--
-- Name: Entrega_Mensajero_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Entrega_Mensajero_Pedido" (
    numero_pedido integer NOT NULL,
    rfc_mensajero character(13) NOT NULL,
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Entrega_Mensajero_Pedido" OWNER TO postgres;

--
-- Name: Equipo_Armado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Equipo_Armado" (
    id_equipo_armado integer NOT NULL,
    id_producto integer NOT NULL,
    id_disco_duro integer NOT NULL,
    id_monitor integer NOT NULL,
    id_tarjeta_de_sonido integer NOT NULL,
    id_dispositivo_de_salida integer NOT NULL,
    id_dispositivo_de_entrada integer NOT NULL,
    id_tarjeta_de_red integer NOT NULL,
    id_gabinete integer NOT NULL,
    id_motherboard integer NOT NULL,
    id_tarjeta_grafica integer NOT NULL,
    id_memoria_ram integer NOT NULL,
    id_procesador integer NOT NULL,
    numero_pedido integer NOT NULL,
    CONSTRAINT chk_id_disco_duro CHECK (((id_disco_duro > 0) AND (id_disco_duro <= 999999999))),
    CONSTRAINT chk_id_dispositivo_de_entrada CHECK (((id_dispositivo_de_entrada > 0) AND (id_dispositivo_de_entrada <= 999999999))),
    CONSTRAINT chk_id_dispositivo_de_salida CHECK (((id_dispositivo_de_salida > 0) AND (id_dispositivo_de_salida <= 999999999))),
    CONSTRAINT chk_id_equipo_armado CHECK (((id_equipo_armado > 0) AND (id_equipo_armado <= 999999999))),
    CONSTRAINT chk_id_gabinete CHECK (((id_gabinete > 0) AND (id_gabinete <= 999999999))),
    CONSTRAINT chk_id_memoria_ram CHECK (((id_memoria_ram > 0) AND (id_memoria_ram <= 999999999))),
    CONSTRAINT chk_id_monitor CHECK (((id_monitor > 0) AND (id_monitor <= 999999999))),
    CONSTRAINT chk_id_motherboard CHECK (((id_motherboard > 0) AND (id_motherboard <= 999999999))),
    CONSTRAINT chk_id_procesador CHECK (((id_procesador > 0) AND (id_procesador <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_id_tarjeta_de_red CHECK (((id_tarjeta_de_red > 0) AND (id_tarjeta_de_red <= 999999999))),
    CONSTRAINT chk_id_tarjeta_de_sonido CHECK (((id_tarjeta_de_sonido > 0) AND (id_tarjeta_de_sonido <= 999999999))),
    CONSTRAINT chk_id_tarjeta_grafica CHECK (((id_tarjeta_grafica > 0) AND (id_tarjeta_grafica <= 999999999))),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999)))
);


ALTER TABLE "Equipo_Armado" OWNER TO postgres;

--
-- Name: Equipo_Armado_Dispositivo_de_Entrada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Equipo_Armado_Dispositivo_de_Entrada" (
    id_dispositivo_de_entrada integer NOT NULL,
    id_equipo_armado integer NOT NULL,
    CONSTRAINT chk_dispositivo_de_entrada CHECK (((id_dispositivo_de_entrada > 0) AND (id_dispositivo_de_entrada <= 999999999))),
    CONSTRAINT chk_id_equipo_armado CHECK (((id_equipo_armado > 0) AND (id_equipo_armado <= 999999999)))
);


ALTER TABLE "Equipo_Armado_Dispositivo_de_Entrada" OWNER TO postgres;

--
-- Name: Equipo_Armado_Dispositivo_de_Salida; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Equipo_Armado_Dispositivo_de_Salida" (
    id_dispositivo_de_salida integer NOT NULL,
    id_equipo_armado integer NOT NULL,
    CONSTRAINT chk_id_dispositivo_de_salida CHECK (((id_dispositivo_de_salida > 0) AND (id_dispositivo_de_salida <= 999999999))),
    CONSTRAINT chk_id_equipo_armado CHECK (((id_equipo_armado > 0) AND (id_equipo_armado <= 999999999)))
);


ALTER TABLE "Equipo_Armado_Dispositivo_de_Salida" OWNER TO postgres;

--
-- Name: Gabinete; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Gabinete" (
    id_gabinete integer NOT NULL,
    id_producto integer NOT NULL,
    fuente_de_poder_gabinete character varying(20),
    material_ganinete character varying(20),
    color_gabinete character varying(20),
    CONSTRAINT chk_id_gabinete CHECK (((id_gabinete > 0) AND (id_gabinete <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Gabinete" OWNER TO postgres;

--
-- Name: Interfaz_Tarjeta_de_Red; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Interfaz_Tarjeta_de_Red" (
    id_tarjeta_de_red integer NOT NULL,
    interfaz_tarjeta_de_red character varying(20) NOT NULL,
    CONSTRAINT chk_id_tarjeta_de_red CHECK (((id_tarjeta_de_red > 0) AND (id_tarjeta_de_red <= 999999999)))
);


ALTER TABLE "Interfaz_Tarjeta_de_Red" OWNER TO postgres;

--
-- Name: Memoria_Ram; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Memoria_Ram" (
    id_memoria_ram integer NOT NULL,
    id_producto integer NOT NULL,
    capacidad_memoria_ram character varying(10),
    CONSTRAINT chk_id_memoria_ram CHECK (((id_memoria_ram > 0) AND (id_memoria_ram <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Memoria_Ram" OWNER TO postgres;

--
-- Name: Mensajero; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Mensajero" (
    nombre_mensajero character varying(20),
    apellido_paterno_mensajero character varying(20),
    apellido_materno_mensajero character varying(20),
    correo_mensajero character varying(20),
    rfc_mensajero character(13) NOT NULL,
    CONSTRAINT chk_correo_mensajero CHECK (((correo_mensajero)::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Mensajero" OWNER TO postgres;

--
-- Name: Monitor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Monitor" (
    id_producto integer NOT NULL,
    es_touch_monitor boolean,
    tamanio_monitor real,
    resolucion_monitor real,
    tipo_monitor character varying(20),
    id_monitor integer NOT NULL,
    CONSTRAINT chk_id_monitor CHECK (((id_monitor > 0) AND (id_monitor <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Monitor" OWNER TO postgres;

--
-- Name: Motherboard; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Motherboard" (
    id_motherboard integer NOT NULL,
    id_producto integer NOT NULL,
    bus_motherboard character varying(10),
    capacidad_memoria_motherboard real,
    compatibilidad_marca_motherboard character varying(20),
    CONSTRAINT chk_capacidad_memoria_motherboard CHECK ((capacidad_memoria_motherboard > (0)::double precision)),
    CONSTRAINT chk_id_motherboard CHECK (((id_motherboard > 0) AND (id_motherboard <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Motherboard" OWNER TO postgres;

--
-- Name: Pago; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Pago" (
    numero_pago integer NOT NULL,
    rfc_cliente character varying(13) NOT NULL,
    numero_pedido integer NOT NULL,
    fecha_pago date,
    cantidad_pago double precision,
    CONSTRAINT chk_cantidad_pago CHECK ((cantidad_pago > (0)::double precision)),
    CONSTRAINT chk_numero_pago CHECK (((numero_pago > 0) AND (numero_pago <= 999999999))),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Pago" OWNER TO postgres;

--
-- Name: Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Pedido" (
    numero_pedido integer NOT NULL,
    rfc_cliente character varying(13) NOT NULL,
    fecha_pedido date,
    cantidad_pedido double precision,
    CONSTRAINT chk_cantidad_pedido CHECK ((cantidad_pedido > (0)::double precision)),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Pedido" OWNER TO postgres;

--
-- Name: Procesador; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Procesador" (
    id_procesador integer NOT NULL,
    id_producto integer NOT NULL,
    nucleos_logicos_procesador integer,
    nucleos_fisicos_procesador integer,
    modelo_procesador character varying(20),
    capacidad_memoria_procesador character varying(10),
    cache_procesador character varying(10),
    CONSTRAINT chk_id_procesador CHECK (((id_procesador > 0) AND (id_procesador <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_nucleos_fisicos_procesador CHECK ((nucleos_fisicos_procesador > 0)),
    CONSTRAINT chk_nucleos_logicos_procesador CHECK ((nucleos_logicos_procesador > 0))
);


ALTER TABLE "Procesador" OWNER TO postgres;

--
-- Name: Producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Producto" (
    id_producto integer NOT NULL,
    marca_producto character varying(30),
    precio_producto real,
    descripcion_producto character varying(60),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_precio_producto CHECK ((precio_producto > (0)::double precision))
);


ALTER TABLE "Producto" OWNER TO postgres;

--
-- Name: Protocolo_Tarjeta_de_Red; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Protocolo_Tarjeta_de_Red" (
    id_tarjeta_de_red integer NOT NULL,
    protocolo_tarjeta_de_red character varying(20) NOT NULL,
    CONSTRAINT chk_id_tarjeta_de_red CHECK (((id_tarjeta_de_red > 0) AND (id_tarjeta_de_red <= 999999999)))
);


ALTER TABLE "Protocolo_Tarjeta_de_Red" OWNER TO postgres;

--
-- Name: Provee_Proveedor_Producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Provee_Proveedor_Producto" (
    id_producto integer NOT NULL,
    rfc_proveedor character varying(13) NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Provee_Proveedor_Producto" OWNER TO postgres;

--
-- Name: Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Proveedor" (
    rfc_proveedor character varying(13) NOT NULL,
    nombre_proveedor character varying(20) NOT NULL,
    giro_productos_proveedor character varying(20),
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Proveedor" OWNER TO postgres;

--
-- Name: Recibe_Mensajero_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Recibe_Mensajero_Pedido" (
    numero_pedido integer NOT NULL,
    rfc_mensajero character(13) NOT NULL,
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text))
);


ALTER TABLE "Recibe_Mensajero_Pedido" OWNER TO postgres;

--
-- Name: Solicita_Pedido_Producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Solicita_Pedido_Producto" (
    id_producto integer NOT NULL,
    numero_pedido integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999)))
);


ALTER TABLE "Solicita_Pedido_Producto" OWNER TO postgres;

--
-- Name: Tarjeta_Grafica; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Tarjeta_Grafica" (
    id_producto integer NOT NULL,
    memoria_ram_tarjeta_grafica integer,
    id_tarjeta_grafica integer NOT NULL,
    CONSTRAINT ch_id_tarjeta_grafica CHECK (((id_tarjeta_grafica > 0) AND (id_tarjeta_grafica <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);


ALTER TABLE "Tarjeta_Grafica" OWNER TO postgres;

--
-- Name: Tarjeta_de_Red; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Tarjeta_de_Red" (
    id_producto integer NOT NULL,
    id_tarjeta_de_red integer NOT NULL,
    velocidad_transferencia_tarjeta_de_red real,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_id_tarjeta_de_red CHECK (((id_tarjeta_de_red > 0) AND (id_tarjeta_de_red <= 999999999))),
    CONSTRAINT chk_velocidad_transferencia_tarjeta_de_red CHECK ((velocidad_transferencia_tarjeta_de_red > (0)::double precision))
);


ALTER TABLE "Tarjeta_de_Red" OWNER TO postgres;

--
-- Name: Tarjeta_de_Sonido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Tarjeta_de_Sonido" (
    id_producto integer NOT NULL,
    entradas_tarjeta_sonido integer,
    salidas_tarjeta_sonido integer,
    id_tarjeta_de_sonido integer NOT NULL,
    CONSTRAINT chk_entradas_tarjeta_sonido CHECK ((entradas_tarjeta_sonido >= 0)),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_id_tarjeta_de_sonido CHECK (((id_tarjeta_de_sonido > 0) AND (id_tarjeta_de_sonido <= 999999999))),
    CONSTRAINT chk_salidas_tarjeta_sonido CHECK ((salidas_tarjeta_sonido >= 0))
);


ALTER TABLE "Tarjeta_de_Sonido" OWNER TO postgres;

--
-- Name: Telefono_Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Telefono_Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    telefono_cliente integer NOT NULL,
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text)),
    CONSTRAINT chk_telefono_cliente CHECK ((telefono_cliente > 0))
);


ALTER TABLE "Telefono_Cliente" OWNER TO postgres;

--
-- Name: Telefono_Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Telefono_Proveedor" (
    rfc_proveedor character varying(13) NOT NULL,
    telefono_proveedor integer NOT NULL,
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '[A-Z]{3,4}[0-9]{6}[A-Z]{2}[0-9]'::text)),
    CONSTRAINT chk_telefono_proveedor CHECK ((telefono_proveedor > 0))
);


ALTER TABLE "Telefono_Proveedor" OWNER TO postgres;

--
-- Name: Tipo_Audio_Tarjeta_Sonido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Tipo_Audio_Tarjeta_Sonido" (
    id_tarjeta_de_sonido integer NOT NULL,
    tipo_audio character varying(8) NOT NULL,
    CONSTRAINT chk_id_tarjeta_de_sonido CHECK (((id_tarjeta_de_sonido > 0) AND (id_tarjeta_de_sonido <= 999999999)))
);


ALTER TABLE "Tipo_Audio_Tarjeta_Sonido" OWNER TO postgres;

--
-- Data for Name: Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Cliente" (rfc_cliente, nombre_cliente, apellido_paterno_cliente, apellido_materno_cliente, fecha_nacimiento_cliente, nombre_calle_cliente, colonia_cliente, delegacion_cliente, estado_cliente, ciudad_cliente, numero_interior_cliente) FROM stdin;
\.


--
-- Data for Name: Compatibilidad_Procesador_Motherboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Compatibilidad_Procesador_Motherboard" (id_producto, id_motherboard) FROM stdin;
\.


--
-- Data for Name: Componente_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Componente_Pedido" (numero_pedido, componente) FROM stdin;
\.


--
-- Data for Name: Correo_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Correo_Cliente" (rfc_cliente, correo_cliente) FROM stdin;
\.


--
-- Data for Name: Correo_Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Correo_Proveedor" (rfc_proveedor, correo_proveedor) FROM stdin;
\.


--
-- Data for Name: Disco_Duro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Disco_Duro" (id_producto, tipo_disco_duro, id_disco_duro) FROM stdin;
\.


--
-- Data for Name: Dispositivo_de_Entrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Dispositivo_de_Entrada" (id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada) FROM stdin;
\.


--
-- Data for Name: Dispositivo_de_Salida; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Dispositivo_de_Salida" (id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida) FROM stdin;
\.


--
-- Data for Name: Entrega_Mensajero_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Entrega_Mensajero_Cliente" (rfc_cliente, rfc_mensajero) FROM stdin;
\.


--
-- Data for Name: Entrega_Mensajero_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Entrega_Mensajero_Pedido" (numero_pedido, rfc_mensajero) FROM stdin;
\.


--
-- Data for Name: Equipo_Armado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Equipo_Armado" (id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, id_procesador, numero_pedido) FROM stdin;
\.


--
-- Data for Name: Equipo_Armado_Dispositivo_de_Entrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Equipo_Armado_Dispositivo_de_Entrada" (id_dispositivo_de_entrada, id_equipo_armado) FROM stdin;
\.


--
-- Data for Name: Equipo_Armado_Dispositivo_de_Salida; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Equipo_Armado_Dispositivo_de_Salida" (id_dispositivo_de_salida, id_equipo_armado) FROM stdin;
\.


--
-- Data for Name: Gabinete; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Gabinete" (id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, color_gabinete) FROM stdin;
\.


--
-- Data for Name: Interfaz_Tarjeta_de_Red; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Interfaz_Tarjeta_de_Red" (id_tarjeta_de_red, interfaz_tarjeta_de_red) FROM stdin;
\.


--
-- Data for Name: Memoria_Ram; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Memoria_Ram" (id_memoria_ram, id_producto, capacidad_memoria_ram) FROM stdin;
\.


--
-- Data for Name: Mensajero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Mensajero" (nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, correo_mensajero, rfc_mensajero) FROM stdin;
\.


--
-- Data for Name: Monitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Monitor" (id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, tipo_monitor, id_monitor) FROM stdin;
\.


--
-- Data for Name: Motherboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Motherboard" (id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, compatibilidad_marca_motherboard) FROM stdin;
\.


--
-- Data for Name: Pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pago" (numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago) FROM stdin;
\.


--
-- Data for Name: Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pedido" (numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido) FROM stdin;
\.


--
-- Data for Name: Procesador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Procesador" (id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, modelo_procesador, capacidad_memoria_procesador, cache_procesador) FROM stdin;
\.


--
-- Data for Name: Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Producto" (id_producto, marca_producto, precio_producto, descripcion_producto) FROM stdin;
\.


--
-- Data for Name: Protocolo_Tarjeta_de_Red; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Protocolo_Tarjeta_de_Red" (id_tarjeta_de_red, protocolo_tarjeta_de_red) FROM stdin;
\.


--
-- Data for Name: Provee_Proveedor_Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Provee_Proveedor_Producto" (id_producto, rfc_proveedor) FROM stdin;
\.


--
-- Data for Name: Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Proveedor" (rfc_proveedor, nombre_proveedor, giro_productos_proveedor) FROM stdin;
\.


--
-- Data for Name: Recibe_Mensajero_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Recibe_Mensajero_Pedido" (numero_pedido, rfc_mensajero) FROM stdin;
\.


--
-- Data for Name: Solicita_Pedido_Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Solicita_Pedido_Producto" (id_producto, numero_pedido) FROM stdin;
\.


--
-- Data for Name: Tarjeta_Grafica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tarjeta_Grafica" (id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica) FROM stdin;
\.


--
-- Data for Name: Tarjeta_de_Red; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tarjeta_de_Red" (id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red) FROM stdin;
\.


--
-- Data for Name: Tarjeta_de_Sonido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tarjeta_de_Sonido" (id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, id_tarjeta_de_sonido) FROM stdin;
\.


--
-- Data for Name: Telefono_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Telefono_Cliente" (rfc_cliente, telefono_cliente) FROM stdin;
\.


--
-- Data for Name: Telefono_Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Telefono_Proveedor" (rfc_proveedor, telefono_proveedor) FROM stdin;
\.


--
-- Data for Name: Tipo_Audio_Tarjeta_Sonido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tipo_Audio_Tarjeta_Sonido" (id_tarjeta_de_sonido, tipo_audio) FROM stdin;
\.


--
-- Name: Entrega_Mensajero_Cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Entrega_Mensajero_Cliente"
    ADD CONSTRAINT "Entrega_Mensajero_Cliente_pkey" PRIMARY KEY (rfc_cliente, rfc_mensajero);


--
-- Name: pk_compatibilidad_procesador_motherboard; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Compatibilidad_Procesador_Motherboard"
    ADD CONSTRAINT pk_compatibilidad_procesador_motherboard PRIMARY KEY (id_producto, id_motherboard);


--
-- Name: pk_componente_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Componente_Pedido"
    ADD CONSTRAINT pk_componente_pedido PRIMARY KEY (numero_pedido, componente);


--
-- Name: pk_correo_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Correo_Cliente"
    ADD CONSTRAINT pk_correo_cliente PRIMARY KEY (rfc_cliente, correo_cliente);


--
-- Name: pk_correo_proveedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Correo_Proveedor"
    ADD CONSTRAINT pk_correo_proveedor PRIMARY KEY (rfc_proveedor, correo_proveedor);


--
-- Name: pk_disco_duro; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Disco_Duro"
    ADD CONSTRAINT pk_disco_duro PRIMARY KEY (id_producto, id_disco_duro);


--
-- Name: pk_dispositivo_de_entrada; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Dispositivo_de_Entrada"
    ADD CONSTRAINT pk_dispositivo_de_entrada PRIMARY KEY (id_producto, id_dispositivo_de_entrada);


--
-- Name: pk_dispositivo_de_salida; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Dispositivo_de_Salida"
    ADD CONSTRAINT pk_dispositivo_de_salida PRIMARY KEY (id_producto, id_dispositivo_de_salida);


--
-- Name: pk_entrega_mensajero_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Entrega_Mensajero_Pedido"
    ADD CONSTRAINT pk_entrega_mensajero_pedido PRIMARY KEY (rfc_mensajero, numero_pedido);


--
-- Name: pk_equipo_armado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Equipo_Armado"
    ADD CONSTRAINT pk_equipo_armado PRIMARY KEY (id_equipo_armado);


--
-- Name: pk_equipo_armado_dispositivo_de_entrada; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Equipo_Armado_Dispositivo_de_Entrada"
    ADD CONSTRAINT pk_equipo_armado_dispositivo_de_entrada PRIMARY KEY (id_equipo_armado, id_dispositivo_de_entrada);


--
-- Name: pk_equipo_armado_dispositivo_de_salida; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Equipo_Armado_Dispositivo_de_Salida"
    ADD CONSTRAINT pk_equipo_armado_dispositivo_de_salida PRIMARY KEY (id_equipo_armado, id_dispositivo_de_salida);


--
-- Name: pk_gabinete; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Gabinete"
    ADD CONSTRAINT pk_gabinete PRIMARY KEY (id_producto, id_gabinete);


--
-- Name: pk_interfaz_tarjeta_de_red; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Interfaz_Tarjeta_de_Red"
    ADD CONSTRAINT pk_interfaz_tarjeta_de_red PRIMARY KEY (id_tarjeta_de_red, interfaz_tarjeta_de_red);


--
-- Name: pk_memoria_ram; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Memoria_Ram"
    ADD CONSTRAINT pk_memoria_ram PRIMARY KEY (id_producto, id_memoria_ram);


--
-- Name: pk_mensajero; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Mensajero"
    ADD CONSTRAINT pk_mensajero PRIMARY KEY (rfc_mensajero);


--
-- Name: pk_monitor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Monitor"
    ADD CONSTRAINT pk_monitor PRIMARY KEY (id_producto, id_monitor);


--
-- Name: pk_motherboard; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Motherboard"
    ADD CONSTRAINT pk_motherboard PRIMARY KEY (id_producto, id_motherboard);


--
-- Name: pk_numero_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Pedido"
    ADD CONSTRAINT pk_numero_pedido PRIMARY KEY (numero_pedido);


--
-- Name: pk_pago; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT pk_pago PRIMARY KEY (numero_pago);


--
-- Name: pk_procesador; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Procesador"
    ADD CONSTRAINT pk_procesador PRIMARY KEY (id_producto, id_procesador);


--
-- Name: pk_producto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Producto"
    ADD CONSTRAINT pk_producto PRIMARY KEY (id_producto);


--
-- Name: pk_protocolo_tarjeta_de_red; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Protocolo_Tarjeta_de_Red"
    ADD CONSTRAINT pk_protocolo_tarjeta_de_red PRIMARY KEY (id_tarjeta_de_red, protocolo_tarjeta_de_red);


--
-- Name: pk_provee_proveedor_producto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Provee_Proveedor_Producto"
    ADD CONSTRAINT pk_provee_proveedor_producto PRIMARY KEY (id_producto, rfc_proveedor);


--
-- Name: pk_proveedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Proveedor"
    ADD CONSTRAINT pk_proveedor PRIMARY KEY (rfc_proveedor);


--
-- Name: pk_recibe_mensajero_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Recibe_Mensajero_Pedido"
    ADD CONSTRAINT pk_recibe_mensajero_pedido PRIMARY KEY (rfc_mensajero, numero_pedido);


--
-- Name: pk_rfc_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cliente"
    ADD CONSTRAINT pk_rfc_cliente PRIMARY KEY (rfc_cliente);


--
-- Name: pk_solicita_pedido_producto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Solicita_Pedido_Producto"
    ADD CONSTRAINT pk_solicita_pedido_producto PRIMARY KEY (numero_pedido, id_producto);


--
-- Name: pk_tarjeta_de_red; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tarjeta_de_Red"
    ADD CONSTRAINT pk_tarjeta_de_red PRIMARY KEY (id_tarjeta_de_red, id_producto);


--
-- Name: pk_tarjeta_de_sonido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tarjeta_de_Sonido"
    ADD CONSTRAINT pk_tarjeta_de_sonido PRIMARY KEY (id_producto, id_tarjeta_de_sonido);


--
-- Name: pk_tarjeta_grafica; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tarjeta_Grafica"
    ADD CONSTRAINT pk_tarjeta_grafica PRIMARY KEY (id_producto, id_tarjeta_grafica);


--
-- Name: pk_telefono_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Telefono_Cliente"
    ADD CONSTRAINT pk_telefono_cliente PRIMARY KEY (rfc_cliente, telefono_cliente);


--
-- Name: pk_telefono_proveedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Telefono_Proveedor"
    ADD CONSTRAINT pk_telefono_proveedor PRIMARY KEY (rfc_proveedor, telefono_proveedor);


--
-- Name: pk_tipo_tarjeta_sonido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tipo_Audio_Tarjeta_Sonido"
    ADD CONSTRAINT pk_tipo_tarjeta_sonido PRIMARY KEY (id_tarjeta_de_sonido, tipo_audio);


--
-- Name: fk_numero_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES "Pedido"(numero_pedido);


--
-- Name: fk_numero_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Equipo_Armado"
    ADD CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES "Pedido"(numero_pedido);


--
-- Name: fk_rfc_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pedido"
    ADD CONSTRAINT fk_rfc_cliente FOREIGN KEY (rfc_cliente) REFERENCES "Cliente"(rfc_cliente);


--
-- Name: fk_rfc_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT fk_rfc_cliente FOREIGN KEY (rfc_cliente) REFERENCES "Cliente"(rfc_cliente);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

