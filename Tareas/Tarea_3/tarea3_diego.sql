-- Ejercicio 4
-- Nombre de todos los equipos y los estadios.

-- SELECT nombre_equipo AS nombre_equipos_estadios
-- FROM equipo
-- UNION
-- SELECT nombre_estadio
-- FROM estadio;



-- Ejercicio 8
-- Los nombres de los jugadores y su fecha de adquisición
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