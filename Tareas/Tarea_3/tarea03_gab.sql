---ejercicio 1
SELECT * FROM equipo 

---ejercicio 5
SELECT nombre_entrenador FROM 
	entrenador NATURAL JOIN equipo_entrenador WHERE anyo_contratado > 2000

---ejercicio 9
SELECT MAX(anyo_adquirido)AS FECHA_MAYOR FROM jugador_equipo AS MAXIMO

---ejercicio 13
SELECT apellido_jugador AS APELLIDO_PATERNO, COUNT(apellido_jugador) 
	FROM jugador GROUP BY apellido_jugador

---ejercicio 17
SELECT nombre_equipo, COUNT(id_entrenador) AS ENTRENADORES 
	FROM equipo NATURAL JOIN equipo_entrenador NATURAL JOIN entrenador GROUP BY id_equipo
	
---ejercicio 21
SELECT * FROM jugador NATURAL JOIN jugador_equipo 
	WHERE juegos_iniciados > 0 AND anyo_adquirido > 2000 AND anyo_adquirido < 2012
	
---ejercicio 25
SELECT nickname_equipo, nombre_estadio 
	FROM equipo NATURAL JOIN equipo_estadio NATURAL JOIN estadio  
		WHERE capacidad = (SELECT MAX(capacidad) FROM estadio)

---ejercicio 29
SELECT * FROM EQUIPO WHERE id_equipo IN 
	(SELECT id_equipo FROM equipo NATURAL JOIN partido 
		where semana = 2 OR semana = 4 OR semana = 6 OR semana = 8 AND id_equipo = id_equipo_v)
