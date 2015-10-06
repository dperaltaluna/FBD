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
-- --3
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(3,2);
-- --4
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(4,1);
-- --5
-- INSERT INTO "Compatibilidad_Procesador_Motherboard"(
-- 	Id_producto,
-- 	Id_motherboard)
-- 	VALUES(5,3);

-- 
-- 
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
-- -- 3
-- INSERT INTO "Componente_Pedido"(
--             numero_pedido, componente)
--     VALUES (77, 'Disco Duro Kingston');


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


-- 
-- -- Correo_Proveedor
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--     VALUES ('ARAB900221MNP', 'soluciones_computacion@soluciones.com.mx');
-- 
-- INSERT INTO "Correo_Proveedor"(
--             rfc_proveedor, correo_proveedor)
--     VALUES ('PRAF600429HDG', 'compuventas_soporte@compuventas.com');



-- -- Disco_Duro
-- INSERT INTO "Disco_Duro"(
--             id_producto, tipo_disco_duro, id_disco_duro)
--     VALUES (22, 'SATA', 1);
-- 
-- INSERT INTO "Disco_Duro"(
--             id_producto, tipo_disco_duro, id_disco_duro)
--     VALUES (71, 'SSHD', 3);



-- -- Dispositivo_de_Entrada
-- INSERT INTO "Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--     VALUES (5, 54, 'Mouse');
-- 
-- INSERT INTO "Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_producto, tipo_dispositivo_de_entrada)
--     VALUES (3, 51, 'Teclado');



-- -- Dispositivo_de_Salida
-- INSERT INTO "Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--     VALUES (2, 61, 'Impresora');
-- 
-- INSERT INTO "Dispositivo_de_Salida"(
-- 	    id_dispositivo_de_salida, id_producto, tipo_dispositivo_de_salida)
--     VALUES (4,63,'Monitor');




-- -- Entrega_Mensajero_Cliente
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('MONR980520HDF', 'MMRA860314MPO');
-- 
-- INSERT INTO "Entrega_Mensajero_Cliente"(
--             rfc_cliente, rfc_mensajero)
--     VALUES ('LOJP910202HDF', 'PCRB910214POC');


-- 
-- -- Entrega_Mensajero_Pedido
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (23,'JTCA870499PJK');
-- 
-- INSERT INTO "Entrega_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (46,'YZDB850976FLD');


-- -- Equipo Armado
-- INSERT INTO "Equipo_Armado"(
--             id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--             id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--             id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--             id_procesador, numero_pedido)
--     VALUES (2, 102, 3, 4, 2, 
--             3, 4, 2, 
--             6, 3, 2, 7, 
--             2, 201);

-- INSERT INTO "Equipo_Armado"(
--             id_equipo_armado, id_producto, id_disco_duro, id_monitor, id_tarjeta_de_sonido, 
--             id_dispositivo_de_salida, id_dispositivo_de_entrada, id_tarjeta_de_red, 
--             id_gabinete, id_motherboard, id_tarjeta_grafica, id_memoria_ram, 
--             id_procesador, numero_pedido)
--     VALUES (4, 105, 4, 2, 1, 
--             5, 3, 1, 
--             2, 2, 1, 5, 
--             3, 205);



-- -- Equipo_Armado_Dispositivo_de_Entrada

-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_equipo_armado)
--     VALUES (2, 2);
-- 
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Entrada"(
--             id_dispositivo_de_entrada, id_equipo_armado)
--     VALUES (2, 4);



-- -- Equipo_Armado_Dispositivo_de_Salida
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_equipo_armado)
--     VALUES (1, 2);
-- 
-- 
-- INSERT INTO "Equipo_Armado_Dispositivo_de_Salida"(
--             id_dispositivo_de_salida, id_equipo_armado)
--     VALUES (1, 4);



-- -- Gabinete
-- 
-- INSERT INTO "Gabinete"(
--             id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--             color_gabinete)
--     VALUES (1, 71, 'AT', 'Cobre', 
--             'Negro');
-- 
-- INSERT INTO "Gabinete"(
--             id_gabinete, id_producto, fuente_de_poder_gabinete, material_ganinete, 
--             color_gabinete)
--     VALUES (3, 77, 'ATX', 'Acero', 
--             'Plata');



-- Intefaz_Tarjeta_de_Red

-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (1, 'AUI');
--     
-- INSERT INTO "Interfaz_Tarjeta_de_Red"(
--             id_tarjeta_de_red, interfaz_tarjeta_de_red)
--     VALUES (2, 'MII');



    
-- Memoria_Ram
-- 
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (1, 82, '12GB');
-- 
-- 
-- INSERT INTO "Memoria_Ram"(
--             id_memoria_ram, id_producto, capacidad_memoria_ram)
--     VALUES (2, 84, '8GB');




-- Mensajero 
--
-- INSERT INTO "Mensajero"(
--             nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Victor','Rodriguez','Espinoza','ver67@outlook.com','VBER670876CVA');
--
-- INSERT INTO "Mensajero"(
--             nombre_mensajero, apellido_paterno_mensajero, apellido_materno_mensajero, 
--             correo_mensajero, rfc_mensajero)
--        VALUES('Nestor','Torres','Villalba','nestor_torres@outlook.com','NETF800287AVR');




-- Monitor
-- 
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (19, FALSE, '27 pulgadas', '1600x900', 
--             'LCD', 16);
--
-- INSERT INTO "Monitor"(
--             id_producto, es_touch_monitor, tamanio_monitor, resolucion_monitor, 
--             tipo_monitor, id_monitor)
--     VALUES (21, FALSE, '22 pulgadas', '1280x800', 
--             'AMOLED', 18);




-- Motherboard
-- 
-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (2, 88, 'Bus de sistema', '32GB', 
--             'Asus');

-- INSERT INTO "Motherboard"(
--             id_motherboard, id_producto, bus_motherboard, capacidad_memoria_motherboard, 
--             compatibilidad_marca_motherboard)
--     VALUES (2, 85, 'Bus de control','32GB', 
--             'Intel');


-- Pago
-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (301, 'LELA100598HDF', '201', '10-Sep-1998', 20000);


-- INSERT INTO "Pago"(
--             numero_pago, rfc_cliente, numero_pedido, fecha_pago, cantidad_pago)
--     VALUES (305, 'LOJP910202HDF', '205', '2-Feb-1991', 20000);


-- Procesador
-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (4, 66, 7, 6, 
--             'AMD Fusion', '32 bits', '512KB');


-- INSERT INTO "Procesador"(
--             id_procesador, id_producto, nucleos_logicos_procesador, nucleos_fisicos_procesador, 
--             modelo_procesador, capacidad_memoria_procesador, cache_procesador)
--     VALUES (6, 68, 5, 4, 
--             'Intel Core', '64 bits', '2MB');


-- Producto

-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (204, 'Intel', 7000, 'Procesador de 64 bits de 5 nucleos.');

-- INSERT INTO "Producto"(
--             id_producto, marca_producto, precio_producto, descripcion_producto)
--     VALUES (207, 'AMD', 6500, 'Procesador de 32 bits de 4 nucleos.');



-- Protocolo_Tarjeta_de_Red

-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--             id_tarjeta_de_red, protocolo_tarjeta_de_red)
--     VALUES (4, 'TCP/IP');
-- 
-- 
-- INSERT INTO "Protocolo_Tarjeta_de_Red"(
--             id_tarjeta_de_red, protocolo_tarjeta_de_red)
--     VALUES (4, 'Ethernet');	



-- Provee_Proveedor_Producto
--
-- INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (36, 'PRXJ950789KNM');
-- 
-- INSERT INTO "Provee_Proveedor_Producto"(
--             id_producto, rfc_proveedor)
--     VALUES (39, 'JTXE800199CET');


-- Proveedor
--
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('PRXJ950789KNM', 'Compu Soluciones', 'Hardware');
--
-- INSERT INTO "Proveedor"(
--             rfc_proveedor, nombre_proveedor, giro_productos_proveedor)
--     VALUES ('JTXE800199CET', 'Dell', 'Hardware');



-- Recibe_Mensajero_Pedido
--
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--             numero_pedido, rfc_mensajero)
--     VALUES (403, 'VBER670876CVA');
-- 
-- INSERT INTO "Recibe_Mensajero_Pedido"(
--              numero_pedido, rfc_mensajero)
--      VALUES (407, 'NETF800287AVR');



-- Solicita_Pedido_Producto
--
-- INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (407, 368);
-- INSERT INTO "Solicita_Pedido_Producto"(
--             id_producto, numero_pedido)
--     VALUES (410, 270);



-- Tarjeta_Grafica 
--
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (550, '12GB', 3);

-- 
-- INSERT INTO "Tarjeta_Grafica"(
--             id_producto, memoria_ram_tarjeta_grafica, id_tarjeta_grafica)
--     VALUES (557, '8GB', 7);



-- Tarjeta de Red
--
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (113, 3, 400);
-- 
-- INSERT INTO "Tarjeta_de_Red"(
--             id_producto, id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red)
--     VALUES (118, 2, 800);


-- Tarjeta_de_Sonido
--
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (116, 4, 3, 
--             2);
-- 
-- INSERT INTO "Tarjeta_de_Sonido"(
--             id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido, 
--             id_tarjeta_de_sonido)
--     VALUES (119, 6, 4, 
--             3);




-- Telefono_Cliente
--
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('LELA100598HDF', 65882691);
-- 
-- INSERT INTO "Telefono_Cliente"(
--             rfc_cliente, telefono_cliente)
--     VALUES ('LOJP910202HDF', 54813462);




-- Telefono_Proveedor
--
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('JTXE800199CET', 56921054);
-- 
-- INSERT INTO "Telefono_Proveedor"(
--             rfc_proveedor, telefono_proveedor)
--     VALUES ('PRXJ950789KNM', 54221138);




-- Tipo_Audio_Tarjeta_Sonido
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (3, 'Sound Blaster 5.1');
-- 
-- INSERT INTO "Tipo_Audio_Tarjeta_Sonido"(
--             id_tarjeta_de_sonido, tipo_audio)
--     VALUES (1, 'Dolby 2.0');