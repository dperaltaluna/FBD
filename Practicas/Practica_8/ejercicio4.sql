-- Ejercicio 4
-- Consulta que devuelve los clientes que ya hicieron pedidos 
-- y que viven en el Distrito Federal, con maximo numero de pedido 
-- menor al numero 209, ordenado por ciudad y por nombre del cliente.

SELECT ciudad_cliente, nombre_cliente, max(numero_pedido) AS maximo_numero_pedido
    FROM "Cliente" INNER JOIN "Pedido" ON ("Cliente".rfc_cliente = "Pedido".rfc_cliente)
    WHERE "Cliente".ciudad_cliente = 'Distrito Federal'
    GROUP BY "Cliente".ciudad_cliente, "Cliente".nombre_cliente
    HAVING max(numero_pedido) < 209;