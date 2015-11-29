-- Inserts que violan restricciones de integridad.

INSERT INTO cliente (id_cliente,nombre,apellido_paterno,apellido_materno,usuario,pasword,telefono,email,numero_tarjetac,numero,calle,colonia,ciudad,pais) VALUES (-10021,'Daniela','Little','Horton','Dany','2125','02 32 23 16 55','dany@outlook.com','22527016755895','93','San Pablo','Santa Ursula','Distrito Federal','Mexico');

-- INSERT INTO producto (id_producto,nombre,categoria,precio) VALUES (2485,'procesador','DB-computo',0);
-- 
-- INSERT INTO "proveedor" (id_proveedor,nombre,direccion,email) VALUES (-1991,'Gravida','7927 Laoreet Ave','support@gravidaPraesenteu.edu');




