--ejercicio 3
--consulta que devuelve los datos de los clientes que hanrealizado un pedido
SELECT * 
FROM "Cliente" LEFT JOIN "Pedido" 
ON ("Cliente".rfc_cliente = "Pedido".rfc_cliente);

--consulta para obtenerf los clientes que ya han proporcionado su telefono y mail
SELECT rfc_cliente AS "RFC",(nombre_cliente,apellido_paterno_cliente,apellido_materno_cliente) AS "NOMBRE",
 correo_cliente AS "Email", telefono_cliente As "TELEFONO"
FROM "Cliente" NATURAL JOIN "Correo_Cliente" NATURAL JOIN "Telefono_Cliente";

