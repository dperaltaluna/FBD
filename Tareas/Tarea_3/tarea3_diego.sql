-- Ejercicio 4
-- Devuelve una tabla con el nombre de todos los equipos y 
-- los estadios.

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
-- Devuelve una tabla con el numero de jugadores con 
-- apellidos paternos distintos.

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



-- Ejercicio 20
-- Datos de los partidos de los equipos con el mayor 
-- record de juegos perdidos. 
-- Se elije un umbral de 8 partidos record perdidos 
-- en adelante. El maximo es 15.

SELECT *
FROM
(SELECT equipo.id_equipo, MAX(record_p)
		    FROM equipo
		    GROUP BY equipo.id_equipo
		    HAVING record_p > 8) AS equipo_record_perdidos(id_equipo, record_perdidos)
INNER JOIN partido ON (id_equipo = id_equipo_l)
ORDER BY record_perdidos DESC;



-- Ejercicio 24
-- 
-- Todos los datos de los entrenadores que hayan participado 
-- en los partidos de la semana 5 y nombre de los equipos 
-- que entrenaron.

SELECT entrenador.id_entrenador, apellido_entrenador, nombre_entrenador, cargo, nombre_equipo
FROM
(SELECT *
FROM
(SELECT *
FROM
(SELECT *
FROM partido
WHERE semana = 5) as partidos_semana_cinco
INNER JOIN equipo_entrenador ON (id_equipo = id_equipo_l OR id_equipo = id_equipo_v)) AS entrenadores_equipos_semana5
INNER JOIN equipo ON (entrenadores_equipos_semana5.id_equipo = equipo.id_equipo)) AS entrenadores_equipos_semana5_nombre_entrenador
INNER JOIN entrenador ON (entrenador.id_entrenador = entrenadores_equipos_semana5_nombre_entrenador.id_entrenador)
