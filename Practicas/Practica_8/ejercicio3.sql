--Ejercicio 3

--Consulta que devuelve los datos de los clientes que han realizado un pedido
SELECT * 
FROM "Cliente" LEFT JOIN "Pedido" 
ON ("Cliente".rfc_cliente = "Pedido".rfc_cliente);

--Consulta para obtener los clientes que ya han proporcionado su telefono y mail
SELECT rfc_cliente AS "RFC",(nombre_cliente,apellido_paterno_cliente,apellido_materno_cliente) AS "NOMBRE",
 correo_cliente AS "Email", telefono_cliente As "TELEFONO"
FROM "Cliente" NATURAL JOIN "Correo_Cliente" NATURAL JOIN "Telefono_Cliente";


--Consulta que devuelve los pedidos que han sido realizados por algun cliente.
SELECT numero_pedido, nombre_cliente, delegacion_cliente, ciudad_cliente 
FROM "Cliente" RIGHT JOIN "Pedido"
ON ("Cliente".rfc_cliente = "Pedido".rfc_cliente);

