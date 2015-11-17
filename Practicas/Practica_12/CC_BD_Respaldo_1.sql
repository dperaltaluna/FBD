PGDMP         0            
    s            CC_BD    9.4.4    9.4.4 �    0	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            1	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            2	           1262    20607    CC_BD    DATABASE     �   CREATE DATABASE "CC_BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "CC_BD";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            3	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            4	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11855    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            5	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    216            �            1255    21484 b   actualiza_datos_cliente(character, character, character, character, character, character, integer)    FUNCTION     �  CREATE FUNCTION actualiza_datos_cliente(nombre character, ap_paterno character, ap_materno character, nombre_calle character, colonia character, delegacion character, numero_int integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE estatus_actualizacion VARCHAR(25);
BEGIN
    UPDATE  "Cliente"
    SET nombre_cliente = nombre, 
        apellido_paterno_cliente = ap_paterno, 
        apellido_materno_cliente = ap_materno, 
        nombre_calle_cliente = nombre_calle,
        colonia_cliente = colonia,
        delegacion_cliente = delegacion,
        numero_interior_cliente = numero_int

    WHERE rfc_cliente = 'LOJP910202HDF'; 
    IF ((SELECT COUNT(*)
	 FROM "Cliente"
	 WHERE rfc_cliente = 'LOJP910202HDF') = 	1)
	 THEN
		estatus_actualizacion = 'Actualizacion_Exitosa';
    ELSE 
	estatus_actualizacion = 'Actualizacion_NO_Exitosa';
    END IF;
    RETURN estatus_actualizacion;
END;
$$;
 �   DROP FUNCTION public.actualiza_datos_cliente(nombre character, ap_paterno character, ap_materno character, nombre_calle character, colonia character, delegacion character, numero_int integer);
       public       postgres    false    216    6            �            1255    21485 m   actualiza_datos_cliente(character, character, character, character, character, character, integer, character)    FUNCTION     �  CREATE FUNCTION actualiza_datos_cliente(nombre character, ap_paterno character, ap_materno character, nombre_calle character, colonia character, delegacion character, numero_int integer, rfc_cliente_a_eliminar character) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE estatus_actualizacion VARCHAR(25);
BEGIN
    DELETE FROM "Cliente" WHERE rfc_cliente = 'MONR980520HDF';
    
    UPDATE  "Cliente"
    SET nombre_cliente = nombre, 
        apellido_paterno_cliente = ap_paterno, 
        apellido_materno_cliente = ap_materno, 
        nombre_calle_cliente = nombre_calle,
        colonia_cliente = colonia,
        delegacion_cliente = delegacion,
        numero_interior_cliente = numero_int
    WHERE rfc_cliente = 'LOJP910202HDF'; 
    IF ((SELECT COUNT(*)
	 FROM "Cliente"
	 WHERE rfc_cliente = 'LOJP910202HDF') = 	1)
	 THEN
		estatus_actualizacion = 'Actualizacion_Exitosa';
    ELSE 
	estatus_actualizacion = 'Actualizacion_NO_Exitosa';
    END IF;
    RETURN estatus_actualizacion;
END;
$$;
 �   DROP FUNCTION public.actualiza_datos_cliente(nombre character, ap_paterno character, ap_materno character, nombre_calle character, colonia character, delegacion character, numero_int integer, rfc_cliente_a_eliminar character);
       public       postgres    false    6    216            �            1255    21477 	   ejemplo()    FUNCTION     e   CREATE FUNCTION ejemplo() RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
 RETURN 104;
END;
$$;
     DROP FUNCTION public.ejemplo();
       public       postgres    false    216    6            �            1255    21480 2   inserta_datos_mouse(character, character, integer)    FUNCTION       CREATE FUNCTION inserta_datos_mouse(tipo_mouse_p character, color_mouse_p character, id_producto_p integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE id_mouse_calculado INTEGER;
DECLARE estatus_insercion VARCHAR(25);
BEGIN
	 IF ((SELECT COUNT(*)
	 FROM "Mouse"
	 WHERE tipo_mouse_p = tipo_mouse
	 AND color_mouse_p = color_mouse
	 AND id_producto_p = id_producto) = 0)
	 THEN
	 	id_mouse_calculado = CASE
	 	WHEN((SELECT MAX(id_mouse)
	 	FROM "Mouse") IS NOT NULL)
	 	THEN (SELECT MAX(id_mouse)
	 	FROM "Mouse")+1
	 	ELSE 1
	 	END;
	 	INSERT INTO "Mouse" VALUES (tipo_mouse_p, color_mouse_p, id_producto_p, id_mouse_calculado);
	 estatus_insercion = 'Insercion_Exitosa';
	 ELSE
	 	estatus_insercion = 'El_mouse_ya_existe';
	 END IF;
	 RETURN estatus_insercion;
END;
$$;
 r   DROP FUNCTION public.inserta_datos_mouse(tipo_mouse_p character, color_mouse_p character, id_producto_p integer);
       public       postgres    false    6    216            �            1255    21478 5   sp_inserta_datos_mouse(character, character, integer)    FUNCTION     !  CREATE FUNCTION sp_inserta_datos_mouse(tipo_mouse character, color_mouse character, id_producto integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE id_cliente_calculado INTEGER;
DECLARE estatus_insercion VARCHAR(25);
BEGIN
-- IF ((SELECT count(*)
-- FROM cliente
-- WHERE nombre_cliente = nombre
-- AND apellido_pat_cliente = ap_paterno
-- AND apellido_mat_cliente = ap_materno) = 0)
-- THEN
-- id_cliente_calculado = CASE
-- WHEN((SELECT MAX(id_cliente)
-- FROM Cliente) IS NOT NULL)
-- THEN (SELECT MAX(id_cliente)
-- FROM Cliente)+1
-- ELSE 1
-- END;
-- INSERT INTO Cliente VALUES (id_cliente_calculado,nombre,ap_paterno,ap_materno);
-- estatus_insercion = 'Insercion_Exitosa';
-- ELSE
estatus_insercion = 'El_cliente_ya_existe';
-- END IF;
RETURN estatus_insercion;
END;
$$;
 o   DROP FUNCTION public.sp_inserta_datos_mouse(tipo_mouse character, color_mouse character, id_producto integer);
       public       postgres    false    6    216            �            1259    20608    Cliente    TABLE     �  CREATE TABLE "Cliente" (
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
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
    DROP TABLE public."Cliente";
       public         postgres    false    6            6	           0    0    Cliente    ACL     �   REVOKE ALL ON TABLE "Cliente" FROM PUBLIC;
REVOKE ALL ON TABLE "Cliente" FROM postgres;
GRANT ALL ON TABLE "Cliente" TO postgres;
GRANT SELECT ON TABLE "Cliente" TO atd WITH GRANT OPTION;
            public       postgres    false    172            �            1259    20612 %   Compatibilidad_Procesador_Motherboard    TABLE     ?  CREATE TABLE "Compatibilidad_Procesador_Motherboard" (
    id_producto integer NOT NULL,
    id_motherboard integer NOT NULL,
    CONSTRAINT chk_id_motherboard CHECK (((id_motherboard > 0) AND (id_motherboard <= 999999999))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);
 ;   DROP TABLE public."Compatibilidad_Procesador_Motherboard";
       public         postgres    false    6            �            1259    20617    Componente_Pedido    TABLE     �   CREATE TABLE "Componente_Pedido" (
    numero_pedido integer NOT NULL,
    componente character varying(20) NOT NULL,
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999)))
);
 '   DROP TABLE public."Componente_Pedido";
       public         postgres    false    6            �            1259    20621    Correo_Cliente    TABLE     h  CREATE TABLE "Correo_Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    correo_cliente character varying(30) NOT NULL,
    CONSTRAINT chk_correo_cliente CHECK (((correo_cliente)::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)),
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
 $   DROP TABLE public."Correo_Cliente";
       public         postgres    false    6            7	           0    0    Correo_Cliente    ACL     �   REVOKE ALL ON TABLE "Correo_Cliente" FROM PUBLIC;
REVOKE ALL ON TABLE "Correo_Cliente" FROM postgres;
GRANT ALL ON TABLE "Correo_Cliente" TO postgres;
GRANT DELETE ON TABLE "Correo_Cliente" TO dor WITH GRANT OPTION;
            public       postgres    false    175            �            1259    20626    Correo_Proveedor    TABLE     v  CREATE TABLE "Correo_Proveedor" (
    rfc_proveedor character varying(13) NOT NULL,
    correo_proveedor character varying(50) NOT NULL,
    CONSTRAINT chk_correo_proveedor CHECK (((correo_proveedor)::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)),
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
 &   DROP TABLE public."Correo_Proveedor";
       public         postgres    false    6            �            1259    20631 
   Disco_Duro    TABLE     �  CREATE TABLE "Disco_Duro" (
    id_producto integer NOT NULL,
    tipo_disco_duro character varying(5),
    capacidad_gigas_disco_duro integer,
    id_disco_duro integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_tipo_disco_duro CHECK (((tipo_disco_duro)::text = ANY (ARRAY[('SATA2'::character varying)::text, ('SATA3'::character varying)::text])))
);
     DROP TABLE public."Disco_Duro";
       public         postgres    false    6            �            1259    21464    Disco_Duro_id_disco_duro_seq    SEQUENCE     �   CREATE SEQUENCE "Disco_Duro_id_disco_duro_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Disco_Duro_id_disco_duro_seq";
       public       postgres    false    177    6            8	           0    0    Disco_Duro_id_disco_duro_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Disco_Duro_id_disco_duro_seq" OWNED BY "Disco_Duro".id_disco_duro;
            public       postgres    false    215            �            1259    20647    Efectua_Cliente_Pago    TABLE     �   CREATE TABLE "Efectua_Cliente_Pago" (
    rfc_cliente character(13) NOT NULL,
    numero_pedido integer NOT NULL,
    numero_pago integer NOT NULL
);
 *   DROP TABLE public."Efectua_Cliente_Pago";
       public         postgres    false    6            �            1259    20650    Entrega_Mensajero_Cliente    TABLE     j  CREATE TABLE "Entrega_Mensajero_Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    rfc_mensajero character(13) NOT NULL,
    numero_pedido integer,
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text)),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
 /   DROP TABLE public."Entrega_Mensajero_Cliente";
       public         postgres    false    6            �            1259    20660    Equipo_Armado    TABLE     �  CREATE TABLE "Equipo_Armado" (
    id_equipo_armado integer NOT NULL,
    id_producto integer NOT NULL,
    id_disco_duro integer NOT NULL,
    id_monitor integer NOT NULL,
    id_tarjeta_de_sonido integer NOT NULL,
    id_tarjeta_de_red integer NOT NULL,
    id_gabinete integer NOT NULL,
    id_motherboard integer NOT NULL,
    id_tarjeta_grafica integer NOT NULL,
    id_memoria_ram integer NOT NULL,
    id_procesador integer NOT NULL,
    numero_pedido integer NOT NULL,
    id_mouse integer NOT NULL,
    id_teclado integer NOT NULL,
    id_impresora integer NOT NULL,
    CONSTRAINT chk_id_disco_duro CHECK (((id_disco_duro > 0) AND (id_disco_duro <= 999999999))),
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
 #   DROP TABLE public."Equipo_Armado";
       public         postgres    false    6            �            1259    20687    Gabinete    TABLE       CREATE TABLE "Gabinete" (
    id_producto integer NOT NULL,
    fuente_de_poder_gabinete character varying(20),
    color_gabinete character varying(20),
    id_gabinete integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);
    DROP TABLE public."Gabinete";
       public         postgres    false    6            �            1259    21445    Gabinete_id_gabinete_seq    SEQUENCE     |   CREATE SEQUENCE "Gabinete_id_gabinete_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Gabinete_id_gabinete_seq";
       public       postgres    false    181    6            9	           0    0    Gabinete_id_gabinete_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Gabinete_id_gabinete_seq" OWNED BY "Gabinete".id_gabinete;
            public       postgres    false    214            �            1259    20926 	   Impresora    TABLE     �   CREATE TABLE "Impresora" (
    id_producto integer,
    tipo_impresora character(20),
    paginas_por_minuto_impresora integer,
    id_impresora integer NOT NULL
);
    DROP TABLE public."Impresora";
       public         postgres    false    6            �            1259    21432    Impresora_id_impresora_seq    SEQUENCE     ~   CREATE SEQUENCE "Impresora_id_impresora_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Impresora_id_impresora_seq";
       public       postgres    false    202    6            :	           0    0    Impresora_id_impresora_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "Impresora_id_impresora_seq" OWNED BY "Impresora".id_impresora;
            public       postgres    false    213            �            1259    20696    Memoria_Ram    TABLE     k  CREATE TABLE "Memoria_Ram" (
    id_producto integer NOT NULL,
    cantidad_gigas_ram integer,
    tipo_ram character(10),
    id_memoria_ram integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_tipo_ram CHECK ((tipo_ram = ANY (ARRAY['DDR2'::bpchar, 'DDR3'::bpchar, 'DDR4'::bpchar])))
);
 !   DROP TABLE public."Memoria_Ram";
       public         postgres    false    6            �            1259    21402    Memoria_Ram_id_memoria_ram_seq    SEQUENCE     �   CREATE SEQUENCE "Memoria_Ram_id_memoria_ram_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Memoria_Ram_id_memoria_ram_seq";
       public       postgres    false    6    182            ;	           0    0    Memoria_Ram_id_memoria_ram_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Memoria_Ram_id_memoria_ram_seq" OWNED BY "Memoria_Ram".id_memoria_ram;
            public       postgres    false    212            �            1259    20701 	   Mensajero    TABLE     �  CREATE TABLE "Mensajero" (
    nombre_mensajero character varying(20),
    apellido_paterno_mensajero character varying(20),
    apellido_materno_mensajero character varying(20),
    correo_mensajero character varying(50),
    rfc_mensajero character(13) NOT NULL,
    CONSTRAINT chk_correo_mensajero CHECK (((correo_mensajero)::text ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
    DROP TABLE public."Mensajero";
       public         postgres    false    6            <	           0    0 	   Mensajero    ACL     �   REVOKE ALL ON TABLE "Mensajero" FROM PUBLIC;
REVOKE ALL ON TABLE "Mensajero" FROM postgres;
GRANT ALL ON TABLE "Mensajero" TO postgres;
GRANT SELECT ON TABLE "Mensajero" TO migmor WITH GRANT OPTION;
            public       postgres    false    183            �            1259    20706    Monitor    TABLE     �  CREATE TABLE "Monitor" (
    id_producto integer NOT NULL,
    es_touch_monitor boolean,
    tipo_monitor character varying(20),
    resolucion_monitor character(20),
    tamanio_monitor_pulgadas integer,
    id_monitor integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_tamanio_monitor_pulgadas CHECK (((tamanio_monitor_pulgadas > 0) AND (tamanio_monitor_pulgadas <= 50)))
);
    DROP TABLE public."Monitor";
       public         postgres    false    6            �            1259    21264    Monitor_id_monitor_seq    SEQUENCE     z   CREATE SEQUENCE "Monitor_id_monitor_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Monitor_id_monitor_seq";
       public       postgres    false    6    184            =	           0    0    Monitor_id_monitor_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Monitor_id_monitor_seq" OWNED BY "Monitor".id_monitor;
            public       postgres    false    206            �            1259    20964    Motherboard    TABLE     �  CREATE TABLE "Motherboard" (
    id_producto integer,
    compatibilidad_marca_motherboard_procesador character(30),
    memoria_gigas_motherboard integer,
    id_motherboard integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_memoria_gigas_motherboard CHECK ((memoria_gigas_motherboard = ANY (ARRAY[16, 32, 64])))
);
 !   DROP TABLE public."Motherboard";
       public         postgres    false    6            �            1259    21273    Motherboard_id_motherboard_seq    SEQUENCE     �   CREATE SEQUENCE "Motherboard_id_motherboard_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Motherboard_id_motherboard_seq";
       public       postgres    false    203    6            >	           0    0    Motherboard_id_motherboard_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Motherboard_id_motherboard_seq" OWNED BY "Motherboard".id_motherboard;
            public       postgres    false    207            �            1259    20906    Mouse    TABLE     �   CREATE TABLE "Mouse" (
    tipo_mouse character(20),
    color_mouse character(20),
    id_producto integer,
    id_mouse integer NOT NULL
);
    DROP TABLE public."Mouse";
       public         postgres    false    6            �            1259    21248    Mouse_id_mouse_seq    SEQUENCE     v   CREATE SEQUENCE "Mouse_id_mouse_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Mouse_id_mouse_seq";
       public       postgres    false    200    6            ?	           0    0    Mouse_id_mouse_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Mouse_id_mouse_seq" OWNED BY "Mouse".id_mouse;
            public       postgres    false    204            �            1259    20716    Pago    TABLE     ;  CREATE TABLE "Pago" (
    numero_pago integer NOT NULL,
    rfc_cliente character varying(13) NOT NULL,
    numero_pedido integer NOT NULL,
    fecha_pago date,
    cantidad_pago double precision,
    CONSTRAINT chk_cantidad_pago CHECK ((cantidad_pago > (0)::double precision)),
    CONSTRAINT chk_numero_pago CHECK (((numero_pago > 0) AND (numero_pago <= 999999999))),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
    DROP TABLE public."Pago";
       public         postgres    false    6            �            1259    20723    Pedido    TABLE     �  CREATE TABLE "Pedido" (
    numero_pedido integer NOT NULL,
    rfc_cliente character varying(13) NOT NULL,
    fecha_pedido date,
    cantidad_pedido double precision,
    CONSTRAINT chk_cantidad_pedido CHECK ((cantidad_pedido > (0)::double precision)),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
    DROP TABLE public."Pedido";
       public         postgres    false    6            �            1259    20729 
   Procesador    TABLE       CREATE TABLE "Procesador" (
    id_producto integer NOT NULL,
    nucleos_logicos_procesador integer,
    nucleos_fisicos_procesador integer,
    modelo_procesador character varying(20),
    cache_procesador character varying(10),
    id_procesador integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_nucleos_fisicos_procesador CHECK ((nucleos_fisicos_procesador > 0)),
    CONSTRAINT chk_nucleos_logicos_procesador CHECK ((nucleos_logicos_procesador > 0))
);
     DROP TABLE public."Procesador";
       public         postgres    false    6            �            1259    21281    Procesador_id_procesador_seq    SEQUENCE     �   CREATE SEQUENCE "Procesador_id_procesador_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Procesador_id_procesador_seq";
       public       postgres    false    6    187            @	           0    0    Procesador_id_procesador_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Procesador_id_procesador_seq" OWNED BY "Procesador".id_procesador;
            public       postgres    false    208            �            1259    20736    Producto    TABLE     l  CREATE TABLE "Producto" (
    id_producto integer NOT NULL,
    marca_producto character varying(30) NOT NULL,
    precio_producto real,
    descripcion_producto character varying(60),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_precio_producto CHECK ((precio_producto > (0)::double precision))
);
    DROP TABLE public."Producto";
       public         postgres    false    6            �            1259    20745    Provee_Proveedor_Producto    TABLE     F  CREATE TABLE "Provee_Proveedor_Producto" (
    id_producto integer NOT NULL,
    rfc_proveedor character varying(13) NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
 /   DROP TABLE public."Provee_Proveedor_Producto";
       public         postgres    false    6            �            1259    20750 	   Proveedor    TABLE     "  CREATE TABLE "Proveedor" (
    rfc_proveedor character varying(13) NOT NULL,
    nombre_proveedor character varying(20) NOT NULL,
    giro_productos_proveedor character varying(20),
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
    DROP TABLE public."Proveedor";
       public         postgres    false    6            A	           0    0 	   Proveedor    ACL     �   REVOKE ALL ON TABLE "Proveedor" FROM PUBLIC;
REVOKE ALL ON TABLE "Proveedor" FROM postgres;
GRANT ALL ON TABLE "Proveedor" TO postgres;
GRANT SELECT ON TABLE "Proveedor" TO migmor WITH GRANT OPTION;
            public       postgres    false    190            �            1259    20754    Realiza_Cliente_Pedido    TABLE     u   CREATE TABLE "Realiza_Cliente_Pedido" (
    rfc_cliente character varying(13),
    numero_pedido integer NOT NULL
);
 ,   DROP TABLE public."Realiza_Cliente_Pedido";
       public         postgres    false    6            �            1259    20757    Recibe_Mensajero_Pedido    TABLE     <  CREATE TABLE "Recibe_Mensajero_Pedido" (
    numero_pedido integer NOT NULL,
    rfc_mensajero character(13) NOT NULL,
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999))),
    CONSTRAINT chk_rfc_mensajero CHECK ((rfc_mensajero ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text))
);
 -   DROP TABLE public."Recibe_Mensajero_Pedido";
       public         postgres    false    6            �            1259    20762    Solicita_Pedido_Equipo    TABLE     l   CREATE TABLE "Solicita_Pedido_Equipo" (
    id_equipo_armado integer NOT NULL,
    numero_pedido integer
);
 ,   DROP TABLE public."Solicita_Pedido_Equipo";
       public         postgres    false    6            �            1259    20765    Solicita_Pedido_Producto    TABLE     .  CREATE TABLE "Solicita_Pedido_Producto" (
    id_producto integer NOT NULL,
    numero_pedido integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_numero_pedido CHECK (((numero_pedido > 0) AND (numero_pedido <= 999999999)))
);
 .   DROP TABLE public."Solicita_Pedido_Producto";
       public         postgres    false    6            �            1259    20770    Tarjeta_Grafica    TABLE     )  CREATE TABLE "Tarjeta_Grafica" (
    id_producto integer NOT NULL,
    gpu character(10),
    gram character(10),
    cantidad_gram integer,
    id_tarjeta_grafica integer NOT NULL,
    CONSTRAINT chk_cantidad_ram CHECK (((cantidad_gram > 0) AND (cantidad_gram <= 4))),
    CONSTRAINT chk_gpu CHECK ((gpu = ANY (ARRAY['AMD'::bpchar, 'NVIDIA'::bpchar]))),
    CONSTRAINT chk_gram CHECK ((gram = ANY (ARRAY['GDDR3'::bpchar, 'GDDR4'::bpchar, 'GDDR5'::bpchar]))),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999)))
);
 %   DROP TABLE public."Tarjeta_Grafica";
       public         postgres    false    6            �            1259    21331 &   Tarjeta_Grafica_id_tarjeta_grafica_seq    SEQUENCE     �   CREATE SEQUENCE "Tarjeta_Grafica_id_tarjeta_grafica_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Tarjeta_Grafica_id_tarjeta_grafica_seq";
       public       postgres    false    6    195            B	           0    0 &   Tarjeta_Grafica_id_tarjeta_grafica_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "Tarjeta_Grafica_id_tarjeta_grafica_seq" OWNED BY "Tarjeta_Grafica".id_tarjeta_grafica;
            public       postgres    false    211            �            1259    20775    Tarjeta_de_Red    TABLE     #  CREATE TABLE "Tarjeta_de_Red" (
    id_producto integer NOT NULL,
    velocidad_transferencia_tarjeta_de_red real,
    tipo_tarjeta_de_red character(20),
    id_tarjeta_de_red integer NOT NULL,
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_tipo_tarjeta_de_red CHECK ((tipo_tarjeta_de_red = ANY (ARRAY['Inalámbrico'::bpchar, 'Cableado'::bpchar]))),
    CONSTRAINT chk_velocidad_transferencia_tarjeta_de_red CHECK ((velocidad_transferencia_tarjeta_de_red > (0)::double precision))
);
 $   DROP TABLE public."Tarjeta_de_Red";
       public         postgres    false    6            �            1259    21289 $   Tarjeta_de_Red_id_tarjeta_de_red_seq    SEQUENCE     �   CREATE SEQUENCE "Tarjeta_de_Red_id_tarjeta_de_red_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Tarjeta_de_Red_id_tarjeta_de_red_seq";
       public       postgres    false    6    196            C	           0    0 $   Tarjeta_de_Red_id_tarjeta_de_red_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Tarjeta_de_Red_id_tarjeta_de_red_seq" OWNED BY "Tarjeta_de_Red".id_tarjeta_de_red;
            public       postgres    false    209            �            1259    20781    Tarjeta_de_Sonido    TABLE     �  CREATE TABLE "Tarjeta_de_Sonido" (
    id_producto integer NOT NULL,
    entradas_tarjeta_sonido integer,
    salidas_tarjeta_sonido integer,
    tipo_sonido character(30),
    id_tarjeta_de_sonido integer NOT NULL,
    CONSTRAINT chk_entradas_tarjeta_sonido CHECK ((entradas_tarjeta_sonido >= 0)),
    CONSTRAINT chk_id_producto CHECK (((id_producto > 0) AND (id_producto <= 999999999))),
    CONSTRAINT chk_salidas_tarjeta_sonido CHECK ((salidas_tarjeta_sonido >= 0))
);
 '   DROP TABLE public."Tarjeta_de_Sonido";
       public         postgres    false    6            �            1259    21297 *   Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq    SEQUENCE     �   CREATE SEQUENCE "Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq";
       public       postgres    false    197    6            D	           0    0 *   Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq" OWNED BY "Tarjeta_de_Sonido".id_tarjeta_de_sonido;
            public       postgres    false    210            �            1259    20916    Teclado    TABLE     �   CREATE TABLE "Teclado" (
    id_producto integer,
    color_teclado character(20),
    tipo_teclado character(20),
    codificacion_teclado character(20),
    id_teclado integer NOT NULL
);
    DROP TABLE public."Teclado";
       public         postgres    false    6            �            1259    21254    Teclado_id_teclado_seq    SEQUENCE     z   CREATE SEQUENCE "Teclado_id_teclado_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Teclado_id_teclado_seq";
       public       postgres    false    201    6            E	           0    0    Teclado_id_teclado_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Teclado_id_teclado_seq" OWNED BY "Teclado".id_teclado;
            public       postgres    false    205            �            1259    20788    Telefono_Cliente    TABLE     %  CREATE TABLE "Telefono_Cliente" (
    rfc_cliente character varying(13) NOT NULL,
    telefono_cliente integer NOT NULL,
    CONSTRAINT chk_rfc_cliente CHECK (((rfc_cliente)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text)),
    CONSTRAINT chk_telefono_cliente CHECK ((telefono_cliente > 0))
);
 &   DROP TABLE public."Telefono_Cliente";
       public         postgres    false    6            �            1259    20793    Telefono_Proveedor    TABLE     3  CREATE TABLE "Telefono_Proveedor" (
    rfc_proveedor character varying(13) NOT NULL,
    telefono_proveedor integer NOT NULL,
    CONSTRAINT chk_rfc_proveedor CHECK (((rfc_proveedor)::text ~ '^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$'::text)),
    CONSTRAINT chk_telefono_proveedor CHECK ((telefono_proveedor > 0))
);
 (   DROP TABLE public."Telefono_Proveedor";
       public         postgres    false    6            �           2604    21466    id_disco_duro    DEFAULT     z   ALTER TABLE ONLY "Disco_Duro" ALTER COLUMN id_disco_duro SET DEFAULT nextval('"Disco_Duro_id_disco_duro_seq"'::regclass);
 I   ALTER TABLE public."Disco_Duro" ALTER COLUMN id_disco_duro DROP DEFAULT;
       public       postgres    false    215    177            	           2604    21447    id_gabinete    DEFAULT     r   ALTER TABLE ONLY "Gabinete" ALTER COLUMN id_gabinete SET DEFAULT nextval('"Gabinete_id_gabinete_seq"'::regclass);
 E   ALTER TABLE public."Gabinete" ALTER COLUMN id_gabinete DROP DEFAULT;
       public       postgres    false    214    181            :           2604    21434    id_impresora    DEFAULT     v   ALTER TABLE ONLY "Impresora" ALTER COLUMN id_impresora SET DEFAULT nextval('"Impresora_id_impresora_seq"'::regclass);
 G   ALTER TABLE public."Impresora" ALTER COLUMN id_impresora DROP DEFAULT;
       public       postgres    false    213    202                       2604    21404    id_memoria_ram    DEFAULT     ~   ALTER TABLE ONLY "Memoria_Ram" ALTER COLUMN id_memoria_ram SET DEFAULT nextval('"Memoria_Ram_id_memoria_ram_seq"'::regclass);
 K   ALTER TABLE public."Memoria_Ram" ALTER COLUMN id_memoria_ram DROP DEFAULT;
       public       postgres    false    212    182                       2604    21266 
   id_monitor    DEFAULT     n   ALTER TABLE ONLY "Monitor" ALTER COLUMN id_monitor SET DEFAULT nextval('"Monitor_id_monitor_seq"'::regclass);
 C   ALTER TABLE public."Monitor" ALTER COLUMN id_monitor DROP DEFAULT;
       public       postgres    false    206    184            ;           2604    21275    id_motherboard    DEFAULT     ~   ALTER TABLE ONLY "Motherboard" ALTER COLUMN id_motherboard SET DEFAULT nextval('"Motherboard_id_motherboard_seq"'::regclass);
 K   ALTER TABLE public."Motherboard" ALTER COLUMN id_motherboard DROP DEFAULT;
       public       postgres    false    207    203            8           2604    21250    id_mouse    DEFAULT     f   ALTER TABLE ONLY "Mouse" ALTER COLUMN id_mouse SET DEFAULT nextval('"Mouse_id_mouse_seq"'::regclass);
 ?   ALTER TABLE public."Mouse" ALTER COLUMN id_mouse DROP DEFAULT;
       public       postgres    false    204    200                       2604    21283    id_procesador    DEFAULT     z   ALTER TABLE ONLY "Procesador" ALTER COLUMN id_procesador SET DEFAULT nextval('"Procesador_id_procesador_seq"'::regclass);
 I   ALTER TABLE public."Procesador" ALTER COLUMN id_procesador DROP DEFAULT;
       public       postgres    false    208    187            '           2604    21333    id_tarjeta_grafica    DEFAULT     �   ALTER TABLE ONLY "Tarjeta_Grafica" ALTER COLUMN id_tarjeta_grafica SET DEFAULT nextval('"Tarjeta_Grafica_id_tarjeta_grafica_seq"'::regclass);
 S   ALTER TABLE public."Tarjeta_Grafica" ALTER COLUMN id_tarjeta_grafica DROP DEFAULT;
       public       postgres    false    211    195            ,           2604    21291    id_tarjeta_de_red    DEFAULT     �   ALTER TABLE ONLY "Tarjeta_de_Red" ALTER COLUMN id_tarjeta_de_red SET DEFAULT nextval('"Tarjeta_de_Red_id_tarjeta_de_red_seq"'::regclass);
 Q   ALTER TABLE public."Tarjeta_de_Red" ALTER COLUMN id_tarjeta_de_red DROP DEFAULT;
       public       postgres    false    209    196            0           2604    21299    id_tarjeta_de_sonido    DEFAULT     �   ALTER TABLE ONLY "Tarjeta_de_Sonido" ALTER COLUMN id_tarjeta_de_sonido SET DEFAULT nextval('"Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq"'::regclass);
 W   ALTER TABLE public."Tarjeta_de_Sonido" ALTER COLUMN id_tarjeta_de_sonido DROP DEFAULT;
       public       postgres    false    210    197            9           2604    21256 
   id_teclado    DEFAULT     n   ALTER TABLE ONLY "Teclado" ALTER COLUMN id_teclado SET DEFAULT nextval('"Teclado_id_teclado_seq"'::regclass);
 C   ALTER TABLE public."Teclado" ALTER COLUMN id_teclado DROP DEFAULT;
       public       postgres    false    205    201            	          0    20608    Cliente 
   TABLE DATA               �   COPY "Cliente" (rfc_cliente, nombre_cliente, apellido_paterno_cliente, apellido_materno_cliente, fecha_nacimiento_cliente, nombre_calle_cliente, colonia_cliente, delegacion_cliente, estado_cliente, ciudad_cliente, numero_interior_cliente) FROM stdin;
    public       postgres    false    172   E	      	          0    20612 %   Compatibilidad_Procesador_Motherboard 
   TABLE DATA               W   COPY "Compatibilidad_Procesador_Motherboard" (id_producto, id_motherboard) FROM stdin;
    public       postgres    false    173   �
      	          0    20617    Componente_Pedido 
   TABLE DATA               A   COPY "Componente_Pedido" (numero_pedido, componente) FROM stdin;
    public       postgres    false    174   "      	          0    20621    Correo_Cliente 
   TABLE DATA               @   COPY "Correo_Cliente" (rfc_cliente, correo_cliente) FROM stdin;
    public       postgres    false    175   n      	          0    20626    Correo_Proveedor 
   TABLE DATA               F   COPY "Correo_Proveedor" (rfc_proveedor, correo_proveedor) FROM stdin;
    public       postgres    false    176   �      	          0    20631 
   Disco_Duro 
   TABLE DATA               h   COPY "Disco_Duro" (id_producto, tipo_disco_duro, capacidad_gigas_disco_duro, id_disco_duro) FROM stdin;
    public       postgres    false    177   y      F	           0    0    Disco_Duro_id_disco_duro_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Disco_Duro_id_disco_duro_seq"', 1, false);
            public       postgres    false    215            	          0    20647    Efectua_Cliente_Pago 
   TABLE DATA               R   COPY "Efectua_Cliente_Pago" (rfc_cliente, numero_pedido, numero_pago) FROM stdin;
    public       postgres    false    178   �      		          0    20650    Entrega_Mensajero_Cliente 
   TABLE DATA               Y   COPY "Entrega_Mensajero_Cliente" (rfc_cliente, rfc_mensajero, numero_pedido) FROM stdin;
    public       postgres    false    179   �      
	          0    20660    Equipo_Armado 
   TABLE DATA                 COPY "Equipo_Armado" (id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, id_tarjeta_de_red, id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, id_procesador, numero_pedido, id_mouse, id_teclado, id_impresora) FROM stdin;
    public       postgres    false    180         	          0    20687    Gabinete 
   TABLE DATA               a   COPY "Gabinete" (id_producto, fuente_de_poder_gabinete, color_gabinete, id_gabinete) FROM stdin;
    public       postgres    false    181   �      G	           0    0    Gabinete_id_gabinete_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Gabinete_id_gabinete_seq"', 3, true);
            public       postgres    false    214             	          0    20926 	   Impresora 
   TABLE DATA               g   COPY "Impresora" (id_producto, tipo_impresora, paginas_por_minuto_impresora, id_impresora) FROM stdin;
    public       postgres    false    202   �      H	           0    0    Impresora_id_impresora_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Impresora_id_impresora_seq"', 1, false);
            public       postgres    false    213            	          0    20696    Memoria_Ram 
   TABLE DATA               [   COPY "Memoria_Ram" (id_producto, cantidad_gigas_ram, tipo_ram, id_memoria_ram) FROM stdin;
    public       postgres    false    182   �      I	           0    0    Memoria_Ram_id_memoria_ram_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Memoria_Ram_id_memoria_ram_seq"', 3, true);
            public       postgres    false    212            	          0    20701 	   Mensajero 
   TABLE DATA               �   COPY "Mensajero" (nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, correo_mensajero, rfc_mensajero) FROM stdin;
    public       postgres    false    183   �      	          0    20706    Monitor 
   TABLE DATA               �   COPY "Monitor" (id_producto, es_touch_monitor, tipo_monitor, resolucion_monitor, tamanio_monitor_pulgadas, id_monitor) FROM stdin;
    public       postgres    false    184   ]      J	           0    0    Monitor_id_monitor_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"Monitor_id_monitor_seq"', 3, true);
            public       postgres    false    206            !	          0    20964    Motherboard 
   TABLE DATA               �   COPY "Motherboard" (id_producto, compatibilidad_marca_motherboard_procesador, memoria_gigas_motherboard, id_motherboard) FROM stdin;
    public       postgres    false    203   z      K	           0    0    Motherboard_id_motherboard_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Motherboard_id_motherboard_seq"', 1, false);
            public       postgres    false    207            	          0    20906    Mouse 
   TABLE DATA               J   COPY "Mouse" (tipo_mouse, color_mouse, id_producto, id_mouse) FROM stdin;
    public       postgres    false    200   �      L	           0    0    Mouse_id_mouse_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"Mouse_id_mouse_seq"', 1, true);
            public       postgres    false    204            	          0    20716    Pago 
   TABLE DATA               ]   COPY "Pago" (numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago) FROM stdin;
    public       postgres    false    185   �      	          0    20723    Pedido 
   TABLE DATA               V   COPY "Pedido" (numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido) FROM stdin;
    public       postgres    false    186   B      	          0    20729 
   Procesador 
   TABLE DATA               �   COPY "Procesador" (id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, modelo_procesador, cache_procesador, id_procesador) FROM stdin;
    public       postgres    false    187   �      M	           0    0    Procesador_id_procesador_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Procesador_id_procesador_seq"', 4, true);
            public       postgres    false    208            	          0    20736    Producto 
   TABLE DATA               a   COPY "Producto" (id_producto, marca_producto, precio_producto, descripcion_producto) FROM stdin;
    public       postgres    false    188   �      	          0    20745    Provee_Proveedor_Producto 
   TABLE DATA               J   COPY "Provee_Proveedor_Producto" (id_producto, rfc_proveedor) FROM stdin;
    public       postgres    false    189   �      	          0    20750 	   Proveedor 
   TABLE DATA               Y   COPY "Proveedor" (rfc_proveedor, nombre_proveedor, giro_productos_proveedor) FROM stdin;
    public       postgres    false    190   �      	          0    20754    Realiza_Cliente_Pedido 
   TABLE DATA               G   COPY "Realiza_Cliente_Pedido" (rfc_cliente, numero_pedido) FROM stdin;
    public       postgres    false    191   x      	          0    20757    Recibe_Mensajero_Pedido 
   TABLE DATA               J   COPY "Recibe_Mensajero_Pedido" (numero_pedido, rfc_mensajero) FROM stdin;
    public       postgres    false    192   �      	          0    20762    Solicita_Pedido_Equipo 
   TABLE DATA               L   COPY "Solicita_Pedido_Equipo" (id_equipo_armado, numero_pedido) FROM stdin;
    public       postgres    false    193   �      	          0    20765    Solicita_Pedido_Producto 
   TABLE DATA               I   COPY "Solicita_Pedido_Producto" (id_producto, numero_pedido) FROM stdin;
    public       postgres    false    194         	          0    20770    Tarjeta_Grafica 
   TABLE DATA               _   COPY "Tarjeta_Grafica" (id_producto, gpu, gram, cantidad_gram, id_tarjeta_grafica) FROM stdin;
    public       postgres    false    195   L      N	           0    0 &   Tarjeta_Grafica_id_tarjeta_grafica_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Tarjeta_Grafica_id_tarjeta_grafica_seq"', 3, true);
            public       postgres    false    211            	          0    20775    Tarjeta_de_Red 
   TABLE DATA               �   COPY "Tarjeta_de_Red" (id_producto, velocidad_transferencia_tarjeta_de_red, tipo_tarjeta_de_red, id_tarjeta_de_red) FROM stdin;
    public       postgres    false    196   i      O	           0    0 $   Tarjeta_de_Red_id_tarjeta_de_red_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"Tarjeta_de_Red_id_tarjeta_de_red_seq"', 3, true);
            public       postgres    false    209            	          0    20781    Tarjeta_de_Sonido 
   TABLE DATA               �   COPY "Tarjeta_de_Sonido" (id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, tipo_sonido, id_tarjeta_de_sonido) FROM stdin;
    public       postgres    false    197   �      P	           0    0 *   Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"Tarjeta_de_Sonido_id_tarjeta_de_sonido_seq"', 2, true);
            public       postgres    false    210            	          0    20916    Teclado 
   TABLE DATA               h   COPY "Teclado" (id_producto, color_teclado, tipo_teclado, codificacion_teclado, id_teclado) FROM stdin;
    public       postgres    false    201   �      Q	           0    0    Teclado_id_teclado_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Teclado_id_teclado_seq"', 1, false);
            public       postgres    false    205            	          0    20788    Telefono_Cliente 
   TABLE DATA               D   COPY "Telefono_Cliente" (rfc_cliente, telefono_cliente) FROM stdin;
    public       postgres    false    198   �      	          0    20793    Telefono_Proveedor 
   TABLE DATA               J   COPY "Telefono_Proveedor" (rfc_proveedor, telefono_proveedor) FROM stdin;
    public       postgres    false    199   M      E           2606    21509    Correo_Cliente_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY "Correo_Cliente"
    ADD CONSTRAINT "Correo_Cliente_pkey" PRIMARY KEY (rfc_cliente, correo_cliente);
 P   ALTER TABLE ONLY public."Correo_Cliente" DROP CONSTRAINT "Correo_Cliente_pkey";
       public         postgres    false    175    175    175            I           2606    21471    Disco_Duro_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Disco_Duro"
    ADD CONSTRAINT "Disco_Duro_pkey" PRIMARY KEY (id_disco_duro);
 H   ALTER TABLE ONLY public."Disco_Duro" DROP CONSTRAINT "Disco_Duro_pkey";
       public         postgres    false    177    177            Q           2606    21453    Gabinete_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Gabinete"
    ADD CONSTRAINT "Gabinete_pkey" PRIMARY KEY (id_gabinete);
 D   ALTER TABLE ONLY public."Gabinete" DROP CONSTRAINT "Gabinete_pkey";
       public         postgres    false    181    181            }           2606    21439    Impresora_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "Impresora"
    ADD CONSTRAINT "Impresora_pkey" PRIMARY KEY (id_impresora);
 F   ALTER TABLE ONLY public."Impresora" DROP CONSTRAINT "Impresora_pkey";
       public         postgres    false    202    202            S           2606    21409    Memoria_Ram_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "Memoria_Ram"
    ADD CONSTRAINT "Memoria_Ram_pkey" PRIMARY KEY (id_memoria_ram);
 J   ALTER TABLE ONLY public."Memoria_Ram" DROP CONSTRAINT "Memoria_Ram_pkey";
       public         postgres    false    182    182            W           2606    21271    Monitor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "Monitor"
    ADD CONSTRAINT "Monitor_pkey" PRIMARY KEY (id_monitor);
 B   ALTER TABLE ONLY public."Monitor" DROP CONSTRAINT "Monitor_pkey";
       public         postgres    false    184    184                       2606    21280    Motherboard_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "Motherboard"
    ADD CONSTRAINT "Motherboard_pkey" PRIMARY KEY (id_motherboard);
 J   ALTER TABLE ONLY public."Motherboard" DROP CONSTRAINT "Motherboard_pkey";
       public         postgres    false    203    203            y           2606    21261 
   Mouse_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY "Mouse"
    ADD CONSTRAINT "Mouse_pkey" PRIMARY KEY (id_mouse);
 >   ALTER TABLE ONLY public."Mouse" DROP CONSTRAINT "Mouse_pkey";
       public         postgres    false    200    200            ]           2606    21288    Procesador_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Procesador"
    ADD CONSTRAINT "Procesador_pkey" PRIMARY KEY (id_procesador);
 H   ALTER TABLE ONLY public."Procesador" DROP CONSTRAINT "Procesador_pkey";
       public         postgres    false    187    187            _           2606    21482    Producto_id_producto_key 
   CONSTRAINT     `   ALTER TABLE ONLY "Producto"
    ADD CONSTRAINT "Producto_id_producto_key" UNIQUE (id_producto);
 O   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT "Producto_id_producto_key";
       public         postgres    false    188    188            o           2606    21366    Tarjeta_Grafica_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "Tarjeta_Grafica"
    ADD CONSTRAINT "Tarjeta_Grafica_pkey" PRIMARY KEY (id_tarjeta_grafica);
 R   ALTER TABLE ONLY public."Tarjeta_Grafica" DROP CONSTRAINT "Tarjeta_Grafica_pkey";
       public         postgres    false    195    195            q           2606    21296    Tarjeta_de_Red_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY "Tarjeta_de_Red"
    ADD CONSTRAINT "Tarjeta_de_Red_pkey" PRIMARY KEY (id_tarjeta_de_red);
 P   ALTER TABLE ONLY public."Tarjeta_de_Red" DROP CONSTRAINT "Tarjeta_de_Red_pkey";
       public         postgres    false    196    196            s           2606    21305    Tarjeta_de_Sonido_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "Tarjeta_de_Sonido"
    ADD CONSTRAINT "Tarjeta_de_Sonido_pkey" PRIMARY KEY (id_tarjeta_de_sonido);
 V   ALTER TABLE ONLY public."Tarjeta_de_Sonido" DROP CONSTRAINT "Tarjeta_de_Sonido_pkey";
       public         postgres    false    197    197            {           2606    21263    Teclado_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "Teclado"
    ADD CONSTRAINT "Teclado_pkey" PRIMARY KEY (id_teclado);
 B   ALTER TABLE ONLY public."Teclado" DROP CONSTRAINT "Teclado_pkey";
       public         postgres    false    201    201            u           2606    21511    Telefono_Cliente_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY "Telefono_Cliente"
    ADD CONSTRAINT "Telefono_Cliente_pkey" PRIMARY KEY (rfc_cliente, telefono_cliente);
 T   ALTER TABLE ONLY public."Telefono_Cliente" DROP CONSTRAINT "Telefono_Cliente_pkey";
       public         postgres    false    198    198    198            M           2606    20996    pk_cliente_mensajero 
   CONSTRAINT        ALTER TABLE ONLY "Entrega_Mensajero_Cliente"
    ADD CONSTRAINT pk_cliente_mensajero PRIMARY KEY (rfc_cliente, rfc_mensajero);
 Z   ALTER TABLE ONLY public."Entrega_Mensajero_Cliente" DROP CONSTRAINT pk_cliente_mensajero;
       public         postgres    false    179    179    179            A           2606    20805 (   pk_compatibilidad_procesador_motherboard 
   CONSTRAINT     �   ALTER TABLE ONLY "Compatibilidad_Procesador_Motherboard"
    ADD CONSTRAINT pk_compatibilidad_procesador_motherboard PRIMARY KEY (id_producto, id_motherboard);
 z   ALTER TABLE ONLY public."Compatibilidad_Procesador_Motherboard" DROP CONSTRAINT pk_compatibilidad_procesador_motherboard;
       public         postgres    false    173    173    173            C           2606    20807    pk_componente_pedido 
   CONSTRAINT     v   ALTER TABLE ONLY "Componente_Pedido"
    ADD CONSTRAINT pk_componente_pedido PRIMARY KEY (numero_pedido, componente);
 R   ALTER TABLE ONLY public."Componente_Pedido" DROP CONSTRAINT pk_componente_pedido;
       public         postgres    false    174    174    174            G           2606    20811    pk_correo_proveedor 
   CONSTRAINT     z   ALTER TABLE ONLY "Correo_Proveedor"
    ADD CONSTRAINT pk_correo_proveedor PRIMARY KEY (rfc_proveedor, correo_proveedor);
 P   ALTER TABLE ONLY public."Correo_Proveedor" DROP CONSTRAINT pk_correo_proveedor;
       public         postgres    false    176    176    176            K           2606    20989    pk_efectua_cliente_pago 
   CONSTRAINT     �   ALTER TABLE ONLY "Efectua_Cliente_Pago"
    ADD CONSTRAINT pk_efectua_cliente_pago PRIMARY KEY (rfc_cliente, numero_pedido, numero_pago);
 X   ALTER TABLE ONLY public."Efectua_Cliente_Pago" DROP CONSTRAINT pk_efectua_cliente_pago;
       public         postgres    false    178    178    178    178            O           2606    20821    pk_equipo_armado 
   CONSTRAINT     e   ALTER TABLE ONLY "Equipo_Armado"
    ADD CONSTRAINT pk_equipo_armado PRIMARY KEY (id_equipo_armado);
 J   ALTER TABLE ONLY public."Equipo_Armado" DROP CONSTRAINT pk_equipo_armado;
       public         postgres    false    180    180            U           2606    20833    pk_mensajero 
   CONSTRAINT     Z   ALTER TABLE ONLY "Mensajero"
    ADD CONSTRAINT pk_mensajero PRIMARY KEY (rfc_mensajero);
 B   ALTER TABLE ONLY public."Mensajero" DROP CONSTRAINT pk_mensajero;
       public         postgres    false    183    183            [           2606    20839    pk_numero_pedido 
   CONSTRAINT     [   ALTER TABLE ONLY "Pedido"
    ADD CONSTRAINT pk_numero_pedido PRIMARY KEY (numero_pedido);
 C   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT pk_numero_pedido;
       public         postgres    false    186    186            Y           2606    20841    pk_pago 
   CONSTRAINT     N   ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT pk_pago PRIMARY KEY (numero_pago);
 8   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT pk_pago;
       public         postgres    false    185    185            a           2606    20845    pk_producto 
   CONSTRAINT     V   ALTER TABLE ONLY "Producto"
    ADD CONSTRAINT pk_producto PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT pk_producto;
       public         postgres    false    188    188            c           2606    20849    pk_provee_proveedor_producto 
   CONSTRAINT     �   ALTER TABLE ONLY "Provee_Proveedor_Producto"
    ADD CONSTRAINT pk_provee_proveedor_producto PRIMARY KEY (id_producto, rfc_proveedor);
 b   ALTER TABLE ONLY public."Provee_Proveedor_Producto" DROP CONSTRAINT pk_provee_proveedor_producto;
       public         postgres    false    189    189    189            e           2606    20851    pk_proveedor 
   CONSTRAINT     Z   ALTER TABLE ONLY "Proveedor"
    ADD CONSTRAINT pk_proveedor PRIMARY KEY (rfc_proveedor);
 B   ALTER TABLE ONLY public."Proveedor" DROP CONSTRAINT pk_proveedor;
       public         postgres    false    190    190            g           2606    20853    pk_realiza_cliente_pedido 
   CONSTRAINT     t   ALTER TABLE ONLY "Realiza_Cliente_Pedido"
    ADD CONSTRAINT pk_realiza_cliente_pedido PRIMARY KEY (numero_pedido);
 \   ALTER TABLE ONLY public."Realiza_Cliente_Pedido" DROP CONSTRAINT pk_realiza_cliente_pedido;
       public         postgres    false    191    191            i           2606    20855    pk_recibe_mensajero_pedido 
   CONSTRAINT     �   ALTER TABLE ONLY "Recibe_Mensajero_Pedido"
    ADD CONSTRAINT pk_recibe_mensajero_pedido PRIMARY KEY (rfc_mensajero, numero_pedido);
 ^   ALTER TABLE ONLY public."Recibe_Mensajero_Pedido" DROP CONSTRAINT pk_recibe_mensajero_pedido;
       public         postgres    false    192    192    192            ?           2606    20857    pk_rfc_cliente 
   CONSTRAINT     X   ALTER TABLE ONLY "Cliente"
    ADD CONSTRAINT pk_rfc_cliente PRIMARY KEY (rfc_cliente);
 B   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT pk_rfc_cliente;
       public         postgres    false    172    172            k           2606    20859    pk_solicita_pedido_equipo 
   CONSTRAINT     w   ALTER TABLE ONLY "Solicita_Pedido_Equipo"
    ADD CONSTRAINT pk_solicita_pedido_equipo PRIMARY KEY (id_equipo_armado);
 \   ALTER TABLE ONLY public."Solicita_Pedido_Equipo" DROP CONSTRAINT pk_solicita_pedido_equipo;
       public         postgres    false    193    193            m           2606    20861    pk_solicita_pedido_producto 
   CONSTRAINT     �   ALTER TABLE ONLY "Solicita_Pedido_Producto"
    ADD CONSTRAINT pk_solicita_pedido_producto PRIMARY KEY (numero_pedido, id_producto);
 `   ALTER TABLE ONLY public."Solicita_Pedido_Producto" DROP CONSTRAINT pk_solicita_pedido_producto;
       public         postgres    false    194    194    194            w           2606    20871    pk_telefono_proveedor 
   CONSTRAINT     �   ALTER TABLE ONLY "Telefono_Proveedor"
    ADD CONSTRAINT pk_telefono_proveedor PRIMARY KEY (rfc_proveedor, telefono_proveedor);
 T   ALTER TABLE ONLY public."Telefono_Proveedor" DROP CONSTRAINT pk_telefono_proveedor;
       public         postgres    false    199    199    199            �           2606    21503    Correo_Cliente_rfc_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Correo_Cliente"
    ADD CONSTRAINT "Correo_Cliente_rfc_cliente_fkey" FOREIGN KEY (rfc_cliente) REFERENCES "Cliente"(rfc_cliente);
 \   ALTER TABLE ONLY public."Correo_Cliente" DROP CONSTRAINT "Correo_Cliente_rfc_cliente_fkey";
       public       postgres    false    172    175    2111            �           2606    21472    Disco_Duro_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Disco_Duro"
    ADD CONSTRAINT "Disco_Duro_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 T   ALTER TABLE ONLY public."Disco_Duro" DROP CONSTRAINT "Disco_Duro_id_producto_fkey";
       public       postgres    false    177    188    2145            �           2606    21459    Gabinete_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Gabinete"
    ADD CONSTRAINT "Gabinete_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 P   ALTER TABLE ONLY public."Gabinete" DROP CONSTRAINT "Gabinete_id_producto_fkey";
       public       postgres    false    2145    181    188            �           2606    21440    Impresora_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Impresora"
    ADD CONSTRAINT "Impresora_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 R   ALTER TABLE ONLY public."Impresora" DROP CONSTRAINT "Impresora_id_producto_fkey";
       public       postgres    false    2145    188    202            �           2606    21415    Memoria_Ram_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Memoria_Ram"
    ADD CONSTRAINT "Memoria_Ram_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 V   ALTER TABLE ONLY public."Memoria_Ram" DROP CONSTRAINT "Memoria_Ram_id_producto_fkey";
       public       postgres    false    182    188    2145            �           2606    21397    Monitor_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Monitor"
    ADD CONSTRAINT "Monitor_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 N   ALTER TABLE ONLY public."Monitor" DROP CONSTRAINT "Monitor_id_producto_fkey";
       public       postgres    false    188    2145    184            �           2606    21387    Motherboard_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Motherboard"
    ADD CONSTRAINT "Motherboard_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 V   ALTER TABLE ONLY public."Motherboard" DROP CONSTRAINT "Motherboard_id_producto_fkey";
       public       postgres    false    188    203    2145            �           2606    21382    Mouse_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Mouse"
    ADD CONSTRAINT "Mouse_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 J   ALTER TABLE ONLY public."Mouse" DROP CONSTRAINT "Mouse_id_producto_fkey";
       public       postgres    false    200    2145    188            �           2606    21377    Procesador_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Procesador"
    ADD CONSTRAINT "Procesador_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 T   ALTER TABLE ONLY public."Procesador" DROP CONSTRAINT "Procesador_id_producto_fkey";
       public       postgres    false    187    2145    188            �           2606    21367     Tarjeta_Grafica_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Tarjeta_Grafica"
    ADD CONSTRAINT "Tarjeta_Grafica_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 ^   ALTER TABLE ONLY public."Tarjeta_Grafica" DROP CONSTRAINT "Tarjeta_Grafica_id_producto_fkey";
       public       postgres    false    2145    188    195            �           2606    21326    Tarjeta_de_Red_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Tarjeta_de_Red"
    ADD CONSTRAINT "Tarjeta_de_Red_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 \   ALTER TABLE ONLY public."Tarjeta_de_Red" DROP CONSTRAINT "Tarjeta_de_Red_id_producto_fkey";
       public       postgres    false    188    2145    196            �           2606    21316 "   Tarjeta_de_Sonido_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Tarjeta_de_Sonido"
    ADD CONSTRAINT "Tarjeta_de_Sonido_id_producto_fkey" FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 b   ALTER TABLE ONLY public."Tarjeta_de_Sonido" DROP CONSTRAINT "Tarjeta_de_Sonido_id_producto_fkey";
       public       postgres    false    2145    197    188            �           2606    21496 !   Telefono_Cliente_rfc_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Telefono_Cliente"
    ADD CONSTRAINT "Telefono_Cliente_rfc_cliente_fkey" FOREIGN KEY (rfc_cliente) REFERENCES "Cliente"(rfc_cliente);
 `   ALTER TABLE ONLY public."Telefono_Cliente" DROP CONSTRAINT "Telefono_Cliente_rfc_cliente_fkey";
       public       postgres    false    198    2111    172            �           2606    20874    fk_numero_pedido    FK CONSTRAINT     |   ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES "Pedido"(numero_pedido);
 A   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT fk_numero_pedido;
       public       postgres    false    185    186    2139            �           2606    20879    fk_numero_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY "Equipo_Armado"
    ADD CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES "Pedido"(numero_pedido);
 J   ALTER TABLE ONLY public."Equipo_Armado" DROP CONSTRAINT fk_numero_pedido;
       public       postgres    false    180    186    2139            �           2606    20884    fk_numero_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY "Solicita_Pedido_Equipo"
    ADD CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES "Pedido"(numero_pedido);
 S   ALTER TABLE ONLY public."Solicita_Pedido_Equipo" DROP CONSTRAINT fk_numero_pedido;
       public       postgres    false    2139    186    193            �           2606    20990    fk_numero_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY "Entrega_Mensajero_Cliente"
    ADD CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES "Pedido"(numero_pedido);
 V   ALTER TABLE ONLY public."Entrega_Mensajero_Cliente" DROP CONSTRAINT fk_numero_pedido;
       public       postgres    false    179    2139    186            �           2606    20931    fk_producto    FK CONSTRAINT     z   ALTER TABLE ONLY "Impresora"
    ADD CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 A   ALTER TABLE ONLY public."Impresora" DROP CONSTRAINT fk_producto;
       public       postgres    false    202    2145    188            �           2606    20894    fk_rfc_cliente    FK CONSTRAINT     w   ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT fk_rfc_cliente FOREIGN KEY (rfc_cliente) REFERENCES "Cliente"(rfc_cliente);
 ?   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT fk_rfc_cliente;
       public       postgres    false    172    2111    185            �           2606    20899    fk_rfc_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY "Realiza_Cliente_Pedido"
    ADD CONSTRAINT fk_rfc_cliente FOREIGN KEY (rfc_cliente) REFERENCES "Cliente"(rfc_cliente);
 Q   ALTER TABLE ONLY public."Realiza_Cliente_Pedido" DROP CONSTRAINT fk_rfc_cliente;
       public       postgres    false    191    2111    172            �           2606    20921    id_producto    FK CONSTRAINT     x   ALTER TABLE ONLY "Teclado"
    ADD CONSTRAINT id_producto FOREIGN KEY (id_producto) REFERENCES "Producto"(id_producto);
 ?   ALTER TABLE ONLY public."Teclado" DROP CONSTRAINT id_producto;
       public       postgres    false    188    2145    201            	   �  x���ю�0��O�`N�a(���uc�%�Q��	4C��RL�|_̃��p�7m�&����ZļT���.zg=�?���j9�T�e&jZҎ��hh��/.M�QZy�	|x�K6����1��!0�t�Q`�D�MK��T�<�W�T"�<C�j\4�5_<���w�'W�o�IL�Ik�(�o詧��pY���ff(3)�1�7T���Ӌ�M��v������*��(���*��Y���[��ԻL��ڍC{7����8���K�H꧷])P���W�@gN��1��3��j��hg�s�w�M�G?[wa�������;�N&�S{bS���x��(r'C��r�Lq׌W��>��-I�_W��(U�|��"{�k�kf&v�R��~6���;���aY'��T��WI��΅ �      	      x�3�4�2�4�2�=... W      	   <   x�37�t�,N�Wp)-�W���K/.���2��*lf��_��Z���X���X\Z����� ?�      	   w   x�svtv4040�0�uq�LN��O�K,.IL�Lt�/-�����K���rrt�0002���7��0p�L���)�˭��q�q4400��� �)������I-)J�sH�M���fP�51z\\\ M�-c      	   t   x�srt�40022���,��)M���K-�O��-(-I��z@a��
.G'?G��� ���<�ʒ��T ]� �
a��s�9����0�pq�LKLIuH�L�K�ʗ�%������ V[.�      	      x������ � �      	      x������ � �      		   \   x��;�0�=,��-�� ��Rq�sl(G�J&�L˲u��M1`��Π��L<�ޞ�OuG`�3ۻ��%��~��Iaj�Y����?|h�      
	   U   x�%���@ߦ�������� �q�:	g4�0x���Q*�֒$Y��"vx�^��a�&ɖ�d�F���+��~_7E�����C�      	      x������ � �       	      x������ � �      	      x������ � �      	   r   x���
�0F����H���s�>@7�Q$4iʐ���5�~p�u ����(��BV\��_�1����֘�ܫ�����^� ��;t=���L����D��1e]ʳ�W��'��&%      	      x������ � �      !	      x������ � �      	   6   x���K�I�M*�L�W�N���<$>DЈӈ+����"4�
����\1z\\\ �_	      	   U   x�m�1
�0D�z�.����RP	���9L�R��/^�(u���ͫ(���Hl@3��c?�0ثJWL��4�0�g��ǮAUo��      	   Z   x�%�A
�0��_*�h�9���X+���;Lu�;��j;oKP����fc�F	|A`t��2�@���1G�L%��&�_$q�8�n<C����      	      x������ � �      	   �   x�}���1���S�	��Ng�������v�������.��$��%��3�gb��Z�!I��GI8v-��9����$7ʸ�1�-�Q3�Cƽ%��(�o�?��4����$���4�"%ϸe
s���0Ȓ	���_�e(�j�'f�z������� �=�J)Q7�*��6����C
�z7�G��/}�F)�*<wP      	   ?   x�36���450������2� 
8���Yz��s�r:9:Y��p��qqq d��      	   t   x���450������t��-(U��)M���K-��H,J)O,J�rvt�235052�r3ã�)������������.,5�$I�WH���������k�KfYjQIf2H)BM� }0�      	      x������ � �      	   Y   x�]�1� D��=��e�\V��(��?������00����)�/G�� ,A��.�Tָr�]�+ܞ�dXY�1f�yg"� cj;      	      x������ � �      	   !   x�314�427�245�F\ �	W� F�{      	      x������ � �      	      x������ � �      	      x������ � �      	   8   x�3��KM/�W@��9��IE�����y@��TT��\&؍���4�F\1z\\\ B7>      	   R   x�e�!�0@�<�IB�^dha�@��w0hV�XG�9���b��+̪r|�&��Lg,���������Ra��LD�$2      	   ]   x��1� @љ����Tc��?�l?o��K���n�IPZQ�-�"�O'>�H�QT0&���D؇��luO��Z7'��| ���     