-- Ejercicio 1
--Consulta 1
SELECT "Cliente".rfc_cliente, "Pedido".numero_pedido
	FROM "Cliente", "Pedido"
	WHERE "Cliente".rfc_cliente = "Pedido".rfc_cliente;

-- Consulta 2
SELECT id_procesador, nucleos_logicos_procesador, nucleos_fisicos_procesador, modelo_procesador, capacidad_memoria_procesador
	FROM "Procesador"
	WHERE nucleos_logicos_procesador > 4;

-- Cpnsulta 3
SELECT rfc_mensajero, nombre_mensajero, apellido_paterno_mensajero
	FROM "Mensajero"
	WHERE rfc_mensajero != 'BAAP540131AK9';