--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.4
-- Started on 2015-09-21 22:37:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 189 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 189
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 16579)
-- Name: Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cliente" (
    rfc_cliente character varying(13),
    nombre_cliente character varying(20),
    apellido_paterno_cliente character varying(20),
    apellido_materno_cliente character varying(20),
    fecha_nacimiento_cliente date,
    nombre_calle_cliente character varying(20),
    colonia_cliente character varying(20),
    delegacion_cliente character varying(20),
    estado_cliente character varying(20),
    ciudad_cliente character varying(20),
    numero_interior_cliente integer
);


ALTER TABLE "Cliente" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16627)
-- Name: Componente_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Componente_Pedido" (
    numero_pedido integer,
    componente character varying(20)
);


ALTER TABLE "Componente_Pedido" OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16582)
-- Name: Correo_Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Correo_Cliente" (
    rfc_cliente character varying(13),
    correo_cliente character varying(30)
);


ALTER TABLE "Correo_Cliente" OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16606)
-- Name: Correo_Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Correo_Proveedor" (
    rfc_proveedor character varying(30),
    correo_proveedor character varying(30)
);


ALTER TABLE "Correo_Proveedor" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16615)
-- Name: Entrega_Mensajero_Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Entrega_Mensajero_Cliente" (
    rfc_mensajero integer,
    rfc_cliente character varying(13)
);


ALTER TABLE "Entrega_Mensajero_Cliente" OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 16597)
-- Name: Entrega_Mensajero_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Entrega_Mensajero_Pedido" (
    rfc_mensajero integer,
    numero_pedido integer
);


ALTER TABLE "Entrega_Mensajero_Pedido" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16630)
-- Name: Equipo_Armado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Equipo_Armado" (
    id_equipo_armado integer,
    id_producto integer,
    id_disco_duro integer,
    id_monitor integer,
    id_tarjeta_de_sonido integer,
    id_dispositivo_de_salida integer,
    id_dispositivo_de_entrada integer,
    id_tarjeta_de_red integer,
    id_gabinete integer,
    id_motherboard integer,
    id_tarjeta_grafica integer,
    id_memoria_ram integer,
    id_procesador integer
);


ALTER TABLE "Equipo_Armado" OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16594)
-- Name: Mensajero; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Mensajero" (
    rfc_mensajero integer,
    nombre_mensajero character varying(20),
    apellido_paterno_mensajero character varying(20),
    apellido_materno_mensajero character varying(20),
    correo_mensajero character varying(20)
);


ALTER TABLE "Mensajero" OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16588)
-- Name: Pago; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Pago" (
    numero_pago integer,
    rfc_cliente character varying(13),
    numero_pedido integer,
    fecha_pago date,
    cantidad_pago integer
);


ALTER TABLE "Pago" OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16591)
-- Name: Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Pedido" (
    numero_pedido integer,
    rfc_cliente character varying(13),
    fecha_pedido date,
    cantidad_pedido integer
);


ALTER TABLE "Pedido" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16621)
-- Name: Producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Producto" (
    id_producto integer,
    marca_producto character varying(30),
    precio_producto real,
    descripcion_producto character varying(60)
);


ALTER TABLE "Producto" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16618)
-- Name: Provee_Proveedor_Producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Provee_Proveedor_Producto" (
    id_producto integer,
    rfc_proveedor character varying(13)
);


ALTER TABLE "Provee_Proveedor_Producto" OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16603)
-- Name: Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Proveedor" (
    rfc_proveedor character varying(13),
    nombre_proveedor character varying(20),
    giro_productos_proveedor character varying(20)
);


ALTER TABLE "Proveedor" OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 16600)
-- Name: Recibe_Mensajero_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Recibe_Mensajero_Pedido" (
    rfc_mensajero integer,
    numero_pedido integer
);


ALTER TABLE "Recibe_Mensajero_Pedido" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16624)
-- Name: Solicita_Producto_Pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Solicita_Producto_Pedido" (
    id_producto integer,
    numero_pedido integer,
    rfc_cliente character varying(13)
);


ALTER TABLE "Solicita_Producto_Pedido" OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16585)
-- Name: Telefono_Cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Telefono_Cliente" (
    rfc_cliente character varying(13),
    telefono_cliente integer
);


ALTER TABLE "Telefono_Cliente" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16612)
-- Name: Telefono_Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Telefono_Proveedor" (
    rfc_proveedor character varying(13),
    telefono_proveedor integer
);


ALTER TABLE "Telefono_Proveedor" OWNER TO postgres;

--
-- TOC entry 2052 (class 0 OID 16579)
-- Dependencies: 172
-- Data for Name: Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Cliente" (rfc_cliente, nombre_cliente, apellido_paterno_cliente, apellido_materno_cliente, fecha_nacimiento_cliente, nombre_calle_cliente, colonia_cliente, delegacion_cliente, estado_cliente, ciudad_cliente, numero_interior_cliente) FROM stdin;
\.


--
-- TOC entry 2067 (class 0 OID 16627)
-- Dependencies: 187
-- Data for Name: Componente_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Componente_Pedido" (numero_pedido, componente) FROM stdin;
\.


--
-- TOC entry 2053 (class 0 OID 16582)
-- Dependencies: 173
-- Data for Name: Correo_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Correo_Cliente" (rfc_cliente, correo_cliente) FROM stdin;
\.


--
-- TOC entry 2061 (class 0 OID 16606)
-- Dependencies: 181
-- Data for Name: Correo_Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Correo_Proveedor" (rfc_proveedor, correo_proveedor) FROM stdin;
\.


--
-- TOC entry 2063 (class 0 OID 16615)
-- Dependencies: 183
-- Data for Name: Entrega_Mensajero_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Entrega_Mensajero_Cliente" (rfc_mensajero, rfc_cliente) FROM stdin;
\.


--
-- TOC entry 2058 (class 0 OID 16597)
-- Dependencies: 178
-- Data for Name: Entrega_Mensajero_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Entrega_Mensajero_Pedido" (rfc_mensajero, numero_pedido) FROM stdin;
\.


--
-- TOC entry 2068 (class 0 OID 16630)
-- Dependencies: 188
-- Data for Name: Equipo_Armado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Equipo_Armado" (id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, id_procesador) FROM stdin;
\.


--
-- TOC entry 2057 (class 0 OID 16594)
-- Dependencies: 177
-- Data for Name: Mensajero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Mensajero" (rfc_mensajero, nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, correo_mensajero) FROM stdin;
\.


--
-- TOC entry 2055 (class 0 OID 16588)
-- Dependencies: 175
-- Data for Name: Pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pago" (numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago) FROM stdin;
\.


--
-- TOC entry 2056 (class 0 OID 16591)
-- Dependencies: 176
-- Data for Name: Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pedido" (numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido) FROM stdin;
\.


--
-- TOC entry 2065 (class 0 OID 16621)
-- Dependencies: 185
-- Data for Name: Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Producto" (id_producto, marca_producto, precio_producto, descripcion_producto) FROM stdin;
\.


--
-- TOC entry 2064 (class 0 OID 16618)
-- Dependencies: 184
-- Data for Name: Provee_Proveedor_Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Provee_Proveedor_Producto" (id_producto, rfc_proveedor) FROM stdin;
\.


--
-- TOC entry 2060 (class 0 OID 16603)
-- Dependencies: 180
-- Data for Name: Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Proveedor" (rfc_proveedor, nombre_proveedor, giro_productos_proveedor) FROM stdin;
\.


--
-- TOC entry 2059 (class 0 OID 16600)
-- Dependencies: 179
-- Data for Name: Recibe_Mensajero_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Recibe_Mensajero_Pedido" (rfc_mensajero, numero_pedido) FROM stdin;
\.


--
-- TOC entry 2066 (class 0 OID 16624)
-- Dependencies: 186
-- Data for Name: Solicita_Producto_Pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Solicita_Producto_Pedido" (id_producto, numero_pedido, rfc_cliente) FROM stdin;
\.


--
-- TOC entry 2054 (class 0 OID 16585)
-- Dependencies: 174
-- Data for Name: Telefono_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Telefono_Cliente" (rfc_cliente, telefono_cliente) FROM stdin;
\.


--
-- TOC entry 2062 (class 0 OID 16612)
-- Dependencies: 182
-- Data for Name: Telefono_Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Telefono_Proveedor" (rfc_proveedor, telefono_proveedor) FROM stdin;
\.


--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-09-21 22:37:00

--
-- PostgreSQL database dump complete
--

