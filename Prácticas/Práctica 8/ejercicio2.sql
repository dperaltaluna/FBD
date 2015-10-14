-- Ejercicio 2
-- Consulta 1: Consulta a la relacion Procesador

SELECT modelo_procesador, MAX(id_producto) AS maximo_id_producto
FROM "Procesador"
WHERE nucleos_fisicos_procesador >= 4 
GROUP BY modelo_procesador;


