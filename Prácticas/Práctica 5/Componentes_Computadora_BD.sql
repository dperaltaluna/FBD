-- Table: "Interfaz_Tarjeta_de_Red"

-- DROP TABLE "Interfaz_Tarjeta_de_Red";

CREATE TABLE "Interfaz_Tarjeta_de_Red"
(
  id_tarjeta_de_red integer,
  interfaz_tarjeta_de_red character varying(20)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Interfaz_Tarjeta_de_Red"
  OWNER TO postgres;
