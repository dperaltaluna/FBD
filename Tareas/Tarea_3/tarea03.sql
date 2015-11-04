--====================================================
--Tarea 3. Los integrantes somos:

--    Nequiz Meza Antony Miguel
--    Peralta Luna Diego Alejandro 
--    Romero Rodriguez Gabriel Eduardo
--    Vega Velázquez Alma Tania
--====================================================

---Ejercicio 1 
--Todos los datos de los equipos.

SELECT * FROM equipo 



--Ejercicio 2 
--Estadios tales que su anio de construccion es mayor a 1978

SELECT *
FROM "estadio"
WHERE anyo_construccion>1978;

--Ejercicio 3
--Todos los datos de los jugadores (Runner) tales 
--que son del equipo PUMAS CU y su año de 
--adquisición es 2010.
select * 
from runner as r left join jugador as j 
	on r.id_jugador=j.id_jugador
	left join jugador_equipo as je
	on j.id_jugador=je.id_jugador
	left join equipo as e
	on  je.id_equipo=e.id_equipo
where nombre_equipo like '%PUMAS CU%'
	and anyo_adquirido = 2010
	and j.id_jugador is not null
	and e.id_equipo is not null;

-- Ejercicio 4
-- Devuelve una tabla con el nombre de todos los equipos y 
-- los estadios.

SELECT nombre_equipo AS nombre_equipos_estadios
FROM equipo
UNION
SELECT nombre_estadio
FROM estadio;



---Ejercicio 5
-- Los nombres de los entrenadores tales que su año de contratacion 
-- sea mayor a 2000.

SELECT nombre_entrenador FROM 
	entrenador NATURAL JOIN equipo_entrenador WHERE anyo_contratado > 2000



--Ejercicio 6 jugadores y equipos tales que su anio de adquisicion sea 2006 o 2003

SELECT id_jugador, nombre_jugador, apellido_jugador, id_equipo, anyo_adquirido 
FROM "jugador_equipo"
NATURAL JOIN "jugador"
WHERE anyo_adquirido = 2003 or anyo_adquirido = 2006;

--Ejercicio 7
--Los nombres de las ciudades y su población 
--de habitantes tales que su ingreso promedio 
--sea 15000 o 25000.

select nombre_ciudad, habitantes
from ciudad
where ingreso_promedio = 15000 
	or ingreso_promedio = 25000; 

-- Ejercicio 8
-- Devuelve una tabla con los nombres de los jugadores y su fecha de adquisicion
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



---Ejercicio 9
-- La fecha de adquisicion mayor.

SELECT MAX(anyo_adquirido)AS FECHA_MAYOR FROM jugador_equipo AS MAXIMO



--Ejercicio 10 
--Datos de los equipos con mayor numero de juegos ganados

SELECT *
FROM "equipo"
WHERE record_g = (SELECT MAX(record_g) FROM "equipo");

--Ejercicio 11
--¿Cuántos jugadores con apellido paterno Pérez hay?
select count(*)
from jugador
where apellido_jugador like '%Pérez%';

-- Ejercicio 12
-- Devuelve una tabla con el numero de jugadores con 
-- apellidos paternos distintos.

SELECT COUNT(DISTINCT(apellido_jugador))
FROM jugador;



---Ejercicio 13
-- Numero de apellidos paternos que hay de cada uno.
SELECT apellido_jugador AS APELLIDO_PATERNO, COUNT(apellido_jugador) 
	FROM jugador GROUP BY apellido_jugador



--Ejercicio 14 
--Cuantos equipos hay pertenecientes a cada division

SELECT division, count(*) AS "Pertenecen"
FROM equipo
WHERE division = 'Oeste' or division = 'Sur' or division = 'Este' or division = 'Norte' 
GROUP BY division;

--Ejercicio 15
--¿De qué división hay más equipos?
select sc.division, max(sc.c)
from(
	select division, count(division) as c
	from equipo
	group by division
	) as sc
group by sc.division, sc.c;


-- Ejercicio 16
-- Devuelve una tabla con la ciudad con mayor cantidad de equipos asociados

SELECT nombre_ciudad, max(mayor_num_equipos) AS mayor_num_equipos
FROM 
	(SELECT nombre_ciudad, COUNT(id_equipo)
	 FROM ciudad, equipo_ciudad
	 GROUP BY nombre_ciudad)
	 AS ciudades_mayor_num_equipos(nombre_ciudad, mayor_num_equipos)
GROUP BY nombre_ciudad;



---Ejercicio 17 
-- Numero de entrenadores que tiene asociado cada equipo
SELECT nombre_equipo, COUNT(id_entrenador) AS ENTRENADORES 
	FROM equipo NATURAL JOIN equipo_entrenador NATURAL JOIN entrenador GROUP BY id_equipo



--Ejercicio 18 
--De las ciudades con equipos asociados. Equipo mayor juegos ganados.

SELECT nombre_ciudad, record_g
FROM (SELECT * FROM "ciudad" NATURAL JOIN "equipo_ciudad") AS "Ciudad_mayor_ganados"
NATURAL JOIN "equipo"
WHERE record_g = (SELECT MAX(record_g) FROM "equipo");

--Ejercicio 19
--Datos de los entrenadores que han entrenado a más de un equipo.
select *
from entrenador
where id_entrenador in
	(
	select id_entrenador
	from (
		select id_entrenador,count(id_equipo) c
		from equipo_entrenador
		group by id_entrenador,id_equipo
		having count(id_equipo)>1
		order by 1
		) as ee
	);


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



---Ejercicio 21 
-- Todos los datos de los jugadores que hayan iniciado un juego 
-- y que su anio de adquisicion este entre los
-- años 2000 y 2012.

SELECT * FROM jugador NATURAL JOIN jugador_equipo 
	WHERE juegos_iniciados > 0 AND anyo_adquirido > 2000 AND anyo_adquirido < 2012


	
--Ejercicio 22 
-- Todos los datos de los jugadores y numero de jugador 
-- que haya participado en el equipo Pumas-Acatlan

SELECT id_jugador, apellido_jugador, nombre_jugador, fecha_nacimiento, universidad, numero
FROM (SELECT * FROM "jugador_equipo" NATURAL JOIN "jugador") AS "T1"
NATURAL JOIN "equipo"
WHERE nickname_equipo = 'Pumas-Acatlán';

--Ejercicio 23
--Nombre de los entrenadores que han participado en todos los equipos.

select nombre_entrenador
from entrenador
where id_entrenador in
	(
	select id_entrenador
	from
		(select id_entrenador,count(id_equipo)
			from equipo_entrenador
			group by id_entrenador,id_equipo
			having count(id_equipo)=(select count(*) from equipo)
			order by 1) as ee
	);


--Ejercicio 24
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


---Ejercicio 25
-- Nombre del Estadio con mayor capacidad y el nickname del equipo que juega en ese estadio.

SELECT nickname_equipo, nombre_estadio 
	FROM equipo NATURAL JOIN equipo_estadio NATURAL JOIN estadio  
		WHERE capacidad = (SELECT MAX(capacidad) FROM estadio)



-- Ejercicio 26 Nombre del equipo con mayor numero de entrenadores en su historia y todos los datos de esos entrenadores
SELECT *
FROM	(SELECT id_entrenador, count(*) as "Num_Entrenadores"
	FROM (SELECT * FROM "entrenador" NATURAL JOIN "equipo_entrenador") AS "Entrena_Equipo"
	NATURAL JOIN "equipo"
	WHERE id_entrenador > 0
	GROUP BY id_entrenador) as "Tabla_cuenta"
NATURAL JOIN entrenador;

---Ejercicio 28
---Todos los datos de todos los entrenadores que hayan entrenado  a todos los equipos 
SELECT * FROM 
	entrenador
NATURAL JOIN
	(SELECT
		e.id_entrenador,
		COUNT(id_equipo)AS num
	FROM
		entrenador e INNER JOIN equipo_entrenador eq ON e.id_entrenador= eq.id_entrenador
	GROUP BY e.id_entrenador) T1 where num IN (SELECT count(id_equipo) FROM equipo)



---Ejercicio 29
-- Los datos de los equipos que hayan jugado como “visitantes” 
-- en todas las semanas siguientes 2, 4, 6 y 8.
-- Utilizar la operación de division.

SELECT * FROM EQUIPO WHERE id_equipo IN 
	(SELECT id_equipo FROM equipo NATURAL JOIN partido 
		where semana = 2 OR semana = 4 OR semana = 6 OR semana = 8 AND id_equipo = id_equipo_v)

---Ejercicio 30
---Los datos de todos los jugadores que hayan jugado todos los partidos 
---de las siguientes semanas: 1, 3, 6, 9, y 11. Utilizar la operación de división.
SELECT * FROM jugador WHERE id_jugador IN 
	(SELECT id_jugador FROM 
		(SELECT id_jugador, COUNT(id_jugador) AS contador FROM

			(SELECT id_jugador FROM jugador 
			NATURAL JOIN jugador_equipo
			NATURAL JOIN equipo
			NATURAL JOIN partido 
			where semana = 1 
			AND semana = 3 
			AND semana = 6 
			AND semana = 9 
			AND semana = 11) t1 
		GROUP BY id_jugador
		) t2
		)
