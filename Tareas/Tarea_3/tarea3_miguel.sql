--Ejercicio 2 Estadios tales que su anio de construccion es mayor a 1978
SELECT *
FROM "estadio"
WHERE anyo_construccion>1978;

--Ejercicio 6 jugadores y equipos tales que su anio de adquisicion sea 2006 o 2003
SELECT id_jugador, nombre_jugador, apellido_jugador, id_equipo, anyo_adquirido 
FROM "jugador_equipo"
NATURAL JOIN "jugador"
WHERE anyo_adquirido = 2003 or anyo_adquirido = 2006;

--Ejercicio 10 Datos de los equipos con mayor numero de juegos ganados
SELECT *
FROM "equipo"
WHERE record_g = (SELECT MAX(record_g) FROM "equipo");

--Ejercicio 14 Cuantos equipos hay pertenecientes a cada división

SELECT division, count(*) AS "Pertenecen"
FROM equipo
WHERE division = 'Oeste' or division = 'Sur' or division = 'Este' or division = 'Norte' 
GROUP BY division;


--Ejercicio 18 De las ciudades con equipos asociados. Equipo mayor juegos ganados.

SELECT nombre_ciudad, record_g
FROM (SELECT * FROM "ciudad" NATURAL JOIN "equipo_ciudad") AS "Ciudad_mayor_ganados"
NATURAL JOIN "equipo"
WHERE record_g = (SELECT MAX(record_g) FROM "equipo");

--Ejercicio 22 Todos los datos de los jugadores y numero de jugador que haya participado en el equipo Pumas-Acatlan

SELECT id_jugador, apellido_jugador, nombre_jugador, fecha_nacimiento, universidad, numero
FROM (SELECT * FROM "jugador_equipo" NATURAL JOIN "jugador") AS "T1"
NATURAL JOIN "equipo"
WHERE nickname_equipo = 'Pumas-Acatlán';

-- Ejercicio 26 Nombre del equipo con mayor numero de entrenadores en su historia y todos los datos de esos entrenadores
SELECT *
FROM	(SELECT id_entrenador, count(*) as "Num_Entrenadores"
	FROM (SELECT * FROM "entrenador" NATURAL JOIN "equipo_entrenador") AS "Entrena_Equipo"
	NATURAL JOIN "equipo"
	WHERE id_entrenador > 0
	GROUP BY id_entrenador) as "Tabla_cuenta"
NATURAL JOIN entrenador;
