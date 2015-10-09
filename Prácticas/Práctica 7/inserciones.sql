-- Cliete
--1
-- INSERT INTO "Cliente" (rfc_cliente, 
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('LELA100598HDF','Antonio','López','Letran', '10-09-1088',
-- 	'Las Palmas','Malinche','Magdalena Contreras','Distrito Federal','Distrito Federal',10);
-- 
-- --2
-- INSERT INTO "Cliente" (rfc_cliente,
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('CACA010581MDF','Anastacia','Cano','Calvo','01-May-1981',
-- 	'Puente Viejo','Rosal','Tlahuac','Distrito Federal','Distrito Federal',20);
-- 
-- --3
-- INSERT INTO "Cliente" (rfc_cliente,
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('MONR980520HDF','Raul','Moreno','Noriega','20-May-1993',
-- 	'Alfa','La Lola','Roble','Distrito Federal','Distrito Federal',111);
-- 
-- --4
-- INSERT INTO "Cliente" (rfc_cliente,
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('LOJP910202HDF','Pavel','Jareno','Lopez','2-Feb-1991',
-- 	'Bola','Tabacalera','Venustiano Carranza','Distrito Federal','Distrito Federal',28);
-- 
-- --5
-- INSERT INTO "Cliente" (rfc_cliente,
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('ARAA800221MDF','Ana','Alcala','Arguedas','21-Feb-1980',
-- 	'Merced','Centro','Azcapotzalco','Distrito Federal','Distrito Federal',659);
-- 
-- 
--6
-- INSERT INTO "Cliente" (rfc_cliente, 
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('ALBA110391DCG','Ana','López','Beltran', '10-09-2014',
-- 	'Las Granjas','Colibri','Magdalena Contreras','Distrito Federal','Distrito Federal',10);
-- 7
-- INSERT INTO "Cliente" (rfc_cliente, 
-- 	nombre_cliente, 
-- 	apellido_paterno_cliente, 
-- 	apellido_materno_cliente,
-- 	fecha_nacimiento_cliente,
-- 	nombre_calle_cliente,
-- 	colonia_cliente,
-- 	delegacion_cliente,
-- 	estado_cliente,
-- 	ciudad_cliente,
-- 	numero_interior_cliente)
-- 	VALUES('ZART820276XDC','Zara','Rodriguez','Torres', '11-10-2013',
-- 	'Tomás','Delfin','Magdalena Contreras','Distrito Federal','Distrito Federal',18);

-- Compatibilidad_Procesador

-- --1
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(1,5);
-- --2
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(2,4);
--3
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(3,2);
--4
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(4,1);
-- --5
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(5,3);


-- -- Componente_Pedido
-- 
-- -- 1
-- INSERT INTO "Componente_Pedido"(
--             numero_pedido, componente)
--     VALUES (45, 'Teclado');
-- -- 2
-- INSERT INTO "Componente_Pedido"(
--             numero_pedido, componente)
--     VALUES (98, 'Teclado HP');
-- 
-- 3
-- INSERT INTO "Componente_Pedido"(
--             numero_pedido, componente)
--     VALUES (78, 'Disco Duro Kingston');
-- -- 4
-- INSERT INTO "Componente_Pedido"(
--            numero_pedido, componente)
--   VALUES (64, 'Motherboard Asus');
--  
-- -- 5
-- INSERT INTO "Componente_Pedido"(
--           numero_pedido, componente)
--   VALUES (77, 'Mouse HP');


-- 
-- 
-- -- Correo_Cliente
-- 
-- -- 1
-- INSERT INTO "Correo_Cliente"(
--             rfc_cliente, correo_cliente)
--     VALUES ('MONR980520HDF', 'mon98@outlook.com');
-- 
-- -- 2
-- INSERT INTO "Correo_Cliente"(
--             rfc_cliente, correo_cliente)
--     VALUES ('LOJP910202HDF', 'plopez@gmail.com');
-- 
-- -- 3
-- INSERT INTO "Correo_Cliente"(
--           rfc_cliente, correo_cliente)
--   VALUES ('CACA010581MDF', 'canoanastacia@outlook.com');
--  
-- -- 4
-- INSERT INTO "Correo_Cliente"(
--           rfc_cliente, correo_cliente)
--   VALUES ('ARAA800221MDF', 'ana_1980@yahoo.com.mx');
-- -- 5
-- INSERT INTO "Correo_Cliente"(
--          rfc_cliente, correo_cliente)
--  VALUES ('LELA100598HDF', 'tonololetran@gmail.com');



-- 
-- -- Correo_Proveedor
-- -- 1
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--     VALUES ('ARAB900221MNP', 'soluciones_computacion@soluciones.com.mx');
-- 
-- -- 2
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--     VALUES ('PRAF600429HDG', 'compuventas_soporte@compuventas.com');
-- -- 3
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--     VALUES ('FADE900224HDG', 'sales@compuworld.com');
-- 
-- -- 4
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--     VALUES ('MANE700429HDF', 'contactoventas@compuventas.com');
-- -- 5
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--   VALUES ('ROTR450221MDF', 'soluciones_computacion@soluciones.com.mx');




-- -- Disco_Duro
-- 1
-- INSERT INTO "Disco_Duro"(
--             id_producto, tipo_disco_duro, id_disco_duro)
--     VALUES (22, 'SATA', 1);
-- 
-- 2
-- INSERT INTO "Disco_Duro"(
--             id_producto, tipo_disco_duro, id_disco_duro)
--     VALUES (71, 'SSHD', 3);
-- 3
-- INSERT INTO "Disco_Duro"(
--           id_producto, tipo_disco_duro, id_disco_duro)
--   VALUES (18, 'SATA', 2);
-- 
-- -- 4
-- INSERT INTO "Disco_Duro"(
--             id_producto, tipo_disco_duro, id_disco_duro)
--     VALUES (34, 'SSHD', 5);
-- -- 5
-- INSERT INTO "Disco_Duro"(
--             id_producto, tipo_disco_duro, id_disco_duro)
--     VALUES (58, 'SATA', 4);




-- -- Dispositivo_de_Entrada
-- -- 1
-- INSERT INTO "Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--     VALUES (5, 54, 'Mouse');
-- 
-- -- 2
-- INSERT INTO "Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--     VALUES (3, 51, 'Teclado');
-- -- 3
-- INSERT INTO "Dispositivo_de_Entrada"(
--           id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--   VALUES (16, 89, 'Escaner');
-- 
-- -- 4
-- INSERT INTO "Dispositivo_de_Entrada"(
--           id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--   VALUES (18, 38, 'Teclado');
-- -- 5
-- INSERT INTO "Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--    VALUES (20, 93, 'Mouse');




-- -- Dispositivo_de_Salida
-- -- 1
-- INSERT INTO "Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--     VALUES (2, 61, 'Impresora');
-- 
-- -- 2
-- INSERT INTO "Dispositivo_de_Salida"(
-- 	    id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--     VALUES (4,63,'Monitor');
-- -- 3
-- INSERT INTO "Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--     VALUES (5, 72, 'Impresora');
-- 
-- -- 4
-- INSERT INTO "Dispositivo_de_Salida"(
-- 	    id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--     VALUES (3,73,'Monitor');
-- -- 5
-- INSERT INTO "Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--    VALUES (1, 74, 'Impresora');



-- -- Entrega_Mensajero_Cliente
-- -- 1
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('MONR980520HDF', 'MMRA860314MPO');
-- -- 2
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('LOJP910202HDF', 'PCRB910214POC');
-- -- 3
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('LELA100598HDF', 'AUBR550904LCA');
-- -- 4
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('ARAA800221MDF', 'EISR800930CQ4');
-- -- 5
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('CACA010581MDF', 'MAFA710212V22');


-- 
-- -- Entrega_Mensajero_Pedido
-- -- 1
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (23,'JTCA870499PJK');
-- -- 2
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (46,'YZDB850976FLD');
-- -- 3
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--           numero_pedido, rfc_mensajero)
--  VALUES (71,'AAAC591128UK7');
-- -- 4
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--           numero_pedido, rfc_mensajero)
--   VALUES (72,'BAAA720623EJ3');
-- -- 5
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (73,'CAAA460217IL4');


-- -- Equipo Armado
-- -- 1
-- INSERT INTO "Equipo_Armado"(
--           id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--           id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--           id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--           id_procesador, numero_pedido)
--   VALUES (2, 102, 3, 4, 2, 
--           3, 4, 2, 
--           6, 3, 2, 7, 
--           2, 201);
-- -- 2
-- INSERT INTO "Equipo_Armado"(
--           id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--           id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--           id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--           id_procesador, numero_pedido)
--   VALUES (4, 105, 4, 2, 1, 
--          5, 3, 1, 
--          2, 2, 1, 5, 
--          3, 205);
-- -- 3
-- INSERT INTO "Equipo_Armado"(
--           id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--           id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--           id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--           id_procesador, numero_pedido)
--   VALUES (8, 106, 13, 14, 12, 
--           13, 14, 12, 
--           16, 13, 12, 17, 
--           12, 201);
-- -- 4
-- INSERT INTO "Equipo_Armado"(
--           id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--           id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--           id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--           id_procesador, numero_pedido)
--   VALUES (10, 107, 24, 22, 21, 
--           25, 23, 21, 
--          22, 22, 21, 25, 
--           23, 205);
-- -- 5
-- INSERT INTO "Equipo_Armado"(
--           id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--           id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--           id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--           id_procesador, numero_pedido)
--  VALUES (12, 108, 34, 32, 31, 
--           35, 33, 31, 
--           32, 32, 31, 35, 
--           33, 201);



-- -- Equipo_Armado_Dispositivo_de_Entrada
-- -- 1
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_equipo_armado)
--     VALUES (2, 2);
-- -- 2
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_equipo_armado)
--     VALUES (2, 4);
-- -- 3
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--          id_dispositivo_de_entrada, id_equipo_armado)
--   VALUES (10, 6);
-- -- 4
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--           id_dispositivo_de_entrada, id_equipo_armado)
--   VALUES (10, 8);
-- -- 5
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--            id_dispositivo_de_entrada, id_equipo_armado)
--   VALUES (12, 10);




-- -- Equipo_Armado_Dispositivo_de_Salida
-- -- 1
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_equipo_armado)
--     VALUES (1, 2);
-- 
-- -- 2
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_equipo_armado)
--     VALUES (1, 4);
-- -- 3
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--           id_dispositivo_de_salida, id_equipo_armado)
--   VALUES (21, 25); 
-- -- 4
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_equipo_armado)
--   VALUES (21, 27);
-- -- 5
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--           id_dispositivo_de_salida, id_equipo_armado)
--   VALUES (22, 29);




-- -- Gabinete
-- -- 1
-- INSERT INTO "Gabinete"(
--             id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--             color_gabinete)
--     VALUES (1, 71, 'AT', 'Cobre', 
--             'Negro');
-- -- 2
-- INSERT INTO "Gabinete"(
--             id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--             color_gabinete)
--     VALUES (3, 77, 'ATX', 'Acero', 
--             'Plata');
-- -- 3
-- INSERT INTO "Gabinete"(
--           id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--           color_gabinete)
--   VALUES (2, 88, 'ATx', 'Cobre', 
--           'Negro');
-- -- 4
-- INSERT INTO "Gabinete"(
--             id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--             color_gabinete)
--     VALUES (5, 87, 'ATX', 'Rojo', 
--             'Plata');
-- -- 5
-- INSERT INTO "Gabinete"(
--             id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--             color_gabinete)
--     VALUES (4, 86, 'ATX', 'Verde', 
--           'Plata');



-- Intefaz_Tarjeta_de_Red
-- -- 1
-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (1, 'AUI');
-- -- 2    
-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (2, 'MII');
-- -- 3
-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (3, 'AUI');
-- -- 4    
-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (4, 'MII');
-- -- 5
-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (5, 'AUI');


    
-- Memoria_Ram
-- -- 1
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (1, 82, '12GB');
-- 
-- -- 2
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (2, 84, '8GB');
-- -- 3
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (3, 141, '12GB'); 
-- -- 4
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (4, 142, '4GB');
-- -- 5
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (5, 143, '16GB');




-- Mensajero 
-- -- 1
-- INSERT INTO "Mensajero"(
--             nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Victor','Rodriguez','Espinoza','ver67@outlook.com','VBER670876CVA');
-- -- 2
-- INSERT INTO "Mensajero"(
--             nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Nestor','Torres','Villalba','nestor_torres@outlook.com','NETF800287AVR');
-- -- 3
-- INSERT INTO "Mensajero"(
--            nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Maria','Alcaraz','Andrade','mariaalca@outlook.com','AAAC640907230');
-- -- 4
-- INSERT INTO "Mensajero"(
--             nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Patricia','Barba','Alavarez','patibarba@gmail.com','BAAP540131AK9');
-- -- 5
-- INSERT INTO "Mensajero"(
--             nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Gerardo','Avalos','Cancino','CancinoGer@outlook.com','CAAG570304EYA');




-- Monitor
-- -- 1
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (19, FALSE, '27 pulgadas', '1600x900', 
--             'LCD', 16);
-- -- 2
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (21, FALSE, '22 pulgadas', '1280x800', 
--             'AMOLED', 18);
-- -- 3
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (144, FALSE, '32 pulgadas', '1600x900', 
--             'LCD', 20);
-- -- 4
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (145, FALSE, '40 pulgadas', '1280x800', 
--             'AMOLED', 22);
-- -- 5
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (146, FALSE, '29 pulgadas', '1600x900', 
--             'LCD', 24);



-- Motherboard
-- -- 1
-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (2, 88, 'Bus de sistema', '32GB', 
--             'Asus');
-- -- 2
-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (2, 85, 'Bus de control','32GB', 
--             'Intel');
-- -- 3
-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (3, 147, 'Bus de sistema', '16GB', 
--             'Amd');
-- -- 2
-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (4, 148, 'Bus de control','8GB', 
--           'Intel');
-- -- 5
-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (5, 149, 'Bus de sistema', '16GB', 
--             'Amd');


-- Pago
-- -- 1
-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (301, 'LELA100598HDF', '201', '10-Sep-1998', 20000);
-- -- 2
-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (305, 'LOJP910202HDF', '205', '2-Feb-1991', 20000);
-- -- 3
-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (306, 'LELA100598HDF', '201', '11-Sep-1998', 1000);
-- -- 4
-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (307, 'LELA100598HDF', '201', '12-Sep-1998', 2000);
-- -- 5
-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (308, 'LOJP910202HDF', '205', '13-Feb-1998', 3000);




-- Pedido 
-- -- 1
-- INSERT INTO "Pedido"(
--             numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido)
--     VALUES (201, 'CACA010581MDF', '1981-05-01', 15000);
-- -- 2
-- INSERT INTO "Pedido"(
--             numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido)
--     VALUES (205, 'MONR980520HDF', '1993-05-20', 20000);
-- -- 3
-- INSERT INTO "Pedido"(
--             numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido)
--     VALUES (209, 'LOJP910202HDF', '2004-07-09', 5000);
-- -- 4
-- INSERT INTO "Pedido"(
--             numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido)
--     VALUES (216, 'ARAA800221MDF', '2013-05-20', 8000);
-- -- 5
-- INSERT INTO "Pedido"(
--             numero_pedido, rfc_cliente, fecha_pedido, cantidad_pedido)
--     VALUES (217, 'LELA100598HDF', '2011-02-16', 4500);



-- Procesador
-- -- 1
-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (4, 66, 7, 6, 
--             'AMD Fusion', '32 bits', '512KB');
-- -- 2
-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (6, 68, 5, 4, 
--             'Intel Core', '64 bits', '2MB');
-- -- 3
-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (8, 148, 4, 8, 
--             'AMD Fusion', '32 bits', '512KB');
-- -- 4
-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (10, 149, 2, 10, 
--             'Intel Core', '64 bits', '2MB');
-- -- 5
-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (12, 150, 2, 12, 
--             'AMD Fusion', '32 bits', '2MB');



-- Producto
-- -- 1
-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (204, 'Intel', 7000, 'Procesador de 64 bits de 5 nucleos.');
-- -- 2
-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (207, 'AMD', 6500, 'Procesador de 32 bits de 4 nucleos.');
-- -- 3
-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (151, 'Intel', 8000, 'Procesador de 64 bits de 5 nucleos.');
-- -- 4
-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (152, 'AMD', 9000, 'Procesador de 64 bits de 6 nucleos.');
-- -- 5
-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (153, 'Intel', 10000, 'Procesador de 64 bits de 7 nucleos.');




-- Protocolo_Tarjeta_de_Red
-- -- 1
-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--             id_tarjeta_de_red, protocolo_tarjeta_de_red)
--     VALUES (4, 'TCP/IP');
-- 
-- -- 2
-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--             id_tarjeta_de_red, protocolo_tarjeta_de_red)
--     VALUES (4, 'Ethernet');
-- -- 3
-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--             id_tarjeta_de_red, protocolo_tarjeta_de_red)
--    VALUES (5, 'TCP/IP');
-- 
-- -- 4
-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--             id_tarjeta_de_red, protocolo_tarjeta_de_red)
--     VALUES (6, 'Ethernet');
-- -- 5
-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--            id_tarjeta_de_red, protocolo_tarjeta_de_red)
--     VALUES (7, 'TCP/IP');	



-- Provee_Proveedor_Producto
-- -- 1
-- INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (36, 'PRXJ950789KNM');
-- -- 2
-- INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (39, 'JTXE800199CET');
-- -- 3
-- INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (37, 'ARAB900221MNP');
-- -- 4 
-- INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (38, 'PRAF600429HDG');
-- -- 5
--    INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (40, 'MANE700429HDF');


-- Proveedor
-- -- 1
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('PRXJ950789KNM', 'Compu Soluciones', 'Hardware');
-- -- 2
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('JTXE800199CET', 'Dell', 'Hardware');
-- -- 3
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('CAAJ650520JF6', 'Compu Soluciones', 'Hardware');
-- -- 4
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('BUOE610713HN7', 'Compuworld', 'Hardware');
-- -- 5
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('BUOA600421237', 'Compu Ventas', 'Hardware');


-- Recibe_Mensajero_Pedido
-- 1
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (403, 'VBER670876CVA');
-- -- 2
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--              numero_pedido, rfc_mensajero)
--      VALUES (407, 'NETF800287AVR');
-- -- 3
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--            numero_pedido, rfc_mensajero)
--     VALUES (408, 'MMRA860314MPO');
-- -- 4
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--              numero_pedido, rfc_mensajero)
--      VALUES (409, 'PCRB910214POC');
-- -- 5
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (410, 'AUBR550904LCA');




-- Solicita_Pedido_Producto
-- -- 1
-- INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (407, 368);
-- -- 2
--   INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (410, 270);
-- -- 3
-- INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (155, 272);
-- --4
-- INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (156, 274);
-- -- 5
-- INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (157, 275);


-- Tarjeta_Grafica 
-- -- 1
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (550, '12GB', 3);
-- -- 2
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (557, '8GB', 7);
-- -- 3
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (158, '1GB', 14);
-- -- 4
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (159, '2GB', 16);
-- -- 5
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (160, '1GB', 18);




-- Tarjeta de Red
-- -- 1
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (113, 3, 400);
-- -- 2
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (118, 2, 800);
-- -- 3
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (166, 8, 100);
-- -- 4
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (167, 9, 100);
-- -- 5
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (168, 10, 1000);


-- Tarjeta_de_Sonido
-- -- 1
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (116, 4, 3, 
--             2);
-- -- 2
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (119, 6, 4, 
-- --             3);
-- -- 3
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (163, 4, 5, 
--             4);
-- -- 4
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (164, 5, 2, 
--             5);
-- -- 5
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (165, 5, 3, 
--             6);




-- Telefono_Cliente
-- -- 1
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('LELA100598HDF', 65882691);
-- -- 2
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('LOJP910202HDF', 54813462);
-- -- 3
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('ARAA800221MDF', 62517934);
-- -- 4
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('CACA010581MDF', 43821571);
-- -- 5
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('MONR980520HDF', 57418594);



-- Telefono_Proveedor
-- -- 1
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('JTXE800199CET', 56921054);
-- -- 2
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('PRXJ950789KNM', 54221138);
-- -- 3
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('FADE900224HDG', 53864702);
-- -- 4
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('MANE700429HDF', 54739105);
-- -- 5
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('ROTR450221MDF', 58763155);




-- Tipo_Audio_Tarjeta_Sonido
-- -- 1
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (3, 'Sound Blaster 5.1');
-- -- 2
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (1, 'Dolby 2.0');
-- -- 3
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (4, 'Sound Blaster 5.1');
-- -- 4 
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (5, 'Dolby 2.0');
-- -- 5 
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (6, 'Dolby 2.0');