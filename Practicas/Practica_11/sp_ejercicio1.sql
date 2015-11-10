-- Practica 11
-- Store Procedures


-- Ejercicio 1
CREATE OR REPLACE FUNCTION inserta_datos_mouse
(tipo_mouse_p CHARACTER(20),
color_mouse_p CHARACTER(20),
id_producto_p INTEGER)	
RETURNS VARCHAR(20)
AS
$$
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
$$
LANGUAGE 'plpgsql';