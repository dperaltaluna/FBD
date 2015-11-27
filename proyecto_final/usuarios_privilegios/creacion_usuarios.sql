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

-- Se crea el usuario ehc.
CREATE USER ehc
PASSWORD 'ehc';


-- -- Se asignan los permisos SELECT y DELETE, 
-- -- al usuario MIGMOR.

GRANT SELECT, DELETE
ON "producto", "proveedor"
TO migmor
WITH GRANT OPTION;


-- Se asignan los permisos INSERT y SELECT,
-- al usuario atd.

GRANT INSERT, SELECT
ON "cliente"
TO atd
WITH GRANT OPTION;

-- Se asignan los permisos UPDATE, INSERT y DELETE,
-- al usuario dor.

GRANT UPDATE, INSERT, DELETE
ON "proveedor"
TO dor
WITH GRANT OPTION;

-- Se asignan el permiso SELECT a las tablas
-- cliente, proveedor y cliente_pedido al usuario
-- ehc.
GRANT SELECT 
ON "cliente", "cliente_pedido", "disco_duro", "memoria_ram", "monitor",
"orden", "pedido", "pedido_producto", "procesador", "producto", "provee",
"proveedor", "tarjeta_grafica", "tarjeta_red", "tarjeta_sonido"
TO ehc
WITH GRANT OPTION;



------------------------------------------------
-- Ejercicio 2: Revocar Permisos
------------------------------------------------
-- Se revoca el permiso DELETE al usuario MIGMOR.

REVOKE DELETE
ON "producto", "proveedor"
FROM migmor;

-- Se revoca el permiso INSERT al usuario atd.

REVOKE INSERT
ON "cliente"
FROM atd;

-- Se revoca el permiso UPDATE e INSERT al usuario dor.

REVOKE UPDATE, INSERT
ON "proveedor"
FROM dor;