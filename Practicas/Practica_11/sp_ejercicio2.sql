-- Practica 11
-- Store Procedures

-- Ejercicio 2
CREATE OR REPLACE FUNCTION actualiza_datos_cliente
(nombre CHARACTER(20), 
ap_paterno CHARACTER(20), 
ap_materno CHARACTER(20), 
nombre_calle CHARACTER(20), 
colonia CHARACTER(20), 
delegacion CHARACTER(20), 
numero_int INTEGER)
RETURNS VARCHAR(20)
AS
$$
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
$$
LANGUAGE 'plpgsql';