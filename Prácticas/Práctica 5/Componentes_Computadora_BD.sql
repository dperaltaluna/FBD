-- Table: "Cliente"

-- DROP TABLE "Cliente";

CREATE TABLE "Cliente"
(
  rfc_cliente character varying(13) NOT NULL,
  nombre_cliente character varying(20),
  apellido_paterno_cliente character varying(20),
  apellido_materno_cliente character varying(20),
  fecha_nacimiento_cliente date,
  nombre_calle_cliente character varying(20),
  colonia_cliente character varying(20),
  delegacion_cliente character varying(20),
  estado_cliente character varying(20),
  ciudad_cliente character varying(20),
  numero_interior_cliente integer,
  CONSTRAINT pk_rfc_cliente PRIMARY KEY (rfc_cliente)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Cliente"
  OWNER TO postgres;
