
-- Ejercicio 1
-- Consulta 1
SELECT "Cliente".rfc_cliente, "Pedido".numero_pedido
	FROM "Cliente", "Pedido"
	WHERE "Cliente".rfc_cliente = "Pedido".rfc_cliente;