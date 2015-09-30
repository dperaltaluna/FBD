-- Table: "Tipo_Audio_Tarjeta_Sonido"

-- DROP TABLE "Tipo_Audio_Tarjeta_Sonido";

CREATE TABLE "Tipo_Audio_Tarjeta_Sonido"
(
  id_tarjeta_de_sonido integer NOT NULL,
  tipo_audio character varying(8) NOT NULL,
  CONSTRAINT pk_tipo_tarjeta_sonido PRIMARY KEY (id_tarjeta_de_sonido, tipo_audio),
  CONSTRAINT chk_id_tarjeta_de_sonido CHECK (id_tarjeta_de_sonido > 0 AND id_tarjeta_de_sonido <= 999999999)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Tipo_Audio_Tarjeta_Sonido"
  OWNER TO postgres;
