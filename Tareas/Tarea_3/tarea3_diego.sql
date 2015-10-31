-- Ejercicio 4
-- Devuelve una tabla con el nombre de todos los equipos y los estadios.

SELECT nombre_equipo AS nombre_equipos_estadios
FROM equipo
UNION
SELECT nombre_estadio
FROM estadio;



-- Ejercicio 8
-- Devuelve una tabla con los nombres de los jugadores y su fecha de adquisición
-- tales que sean Receiver o Punter, pero su fecha
-- de adquisición sea mayor a 2002. 
-- Utiliza para ello el operador de UNION

SELECT nombre_jugador, anyo_adquirido
FROM jugador INNER JOIN jugador_equipo ON jugador.id_jugador = jugador_equipo.id_jugador
INNER JOIN receiver ON jugador_equipo.id_jugador = receiver.id_jugador
WHERE anyo_adquirido > 2002
UNION 
SELECT nombre_jugador, anyo_adquirido
FROM jugador INNER JOIN jugador_equipo ON jugador.id_jugador = jugador_equipo.id_jugador
INNER JOIN punter ON jugador_equipo.id_jugador = punter.id_jugador
WHERE anyo_adquirido > 2002;



-- Ejercicio 12
-- Devuelve una tabla con el numero de jugadores con apellidos paternos distintos.
-- 
SELECT COUNT(DISTINCT(apellido_jugador))
FROM jugador;



-- Ejercicio 16
-- Devuelve una tabla con la ciudad con mayor cantidad de equipos asociados

SELECT nombre_ciudad, max(mayor_num_equipos) AS mayor_num_equipos
FROM 
	(SELECT nombre_ciudad, COUNT(id_equipo)
	 FROM ciudad, equipo_ciudad
	 GROUP BY nombre_ciudad)
	 AS ciudades_mayor_num_equipos(nombre_ciudad, mayor_num_equipos)
GROUP BY nombre_ciudad;
