SELECT rfc_cliente AS "RFC",(nombre_cliente,apellido_paterno_cliente,apellido_materno_cliente) AS "NOMBRE",
 correo_cliente AS "Email", telefono_cliente As "TELEFONO"
FROM "Cliente" NATURAL JOIN "Correo_Cliente" NATURAL JOIN "Telefono_Cliente";

