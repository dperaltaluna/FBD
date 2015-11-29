-------------------------------------------------
-- Ejercicio 1: Creacion de usuarios y asignacion
-- de permisos.
-------------------------------------------------
-- Se crea el usuario migmor.

CREATE USER migmor
PASSWORD 'migmor'
VALID UNTIL '2099-07-04';

-- Se crea el usuario atd.

CREATE USER atd
PASSWORD 'atd';

-- Se crea el usuario dor.

CREATE USER dor
PASSWORD 'dor';



-- -- Se asignan los permisos SELECT y DELETE, 
-- -- al usuario MIGMOR.

GRANT SELECT, DELETE
ON "Mensajero", "proveedor"
TO migmor
WITH GRANT OPTION;


-- Se asignan los permisos INSERT y SELECT,
-- al usuario atd.

-- GRANT INSERT, SELECT
-- ON "Cliente"
-- TO atd
-- WITH GRANT OPTION;


-- Se asignan los permisos UPDATE, INSERT y DELETE,
-- al usuario dor.

-- GRANT UPDATE, INSERT, DELETE
-- ON "Correo_Cliente"
-- TO dor
-- WITH GRANT OPTION;




------------------------------------------------
-- Ejercicio 2: Revocar Permisos
------------------------------------------------
-- Se revoca el permiso DELETE al usuario MIGMOR.

-- REVOKE DELETE
-- ON "Mensajero", "Proveedor"
-- FROM migmor;

-- Se revoca el permiso INSERT al usuario atd.

-- REVOKE INSERT
-- ON "Cliente"
-- FROM atd;

-- Se revoca el permiso UPDATE e INSERT al usuario dor.

-- REVOKE UPDATE, INSERT
-- ON "Correo_Cliente"
-- FROM dor;