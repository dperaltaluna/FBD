-- Scripts de consultas


-- Cliente
-- -- 1
-- SELECT rfc_cliente, nombre_cliente, apellido_paterno_cliente, apellido_materno_cliente,ciudad_cliente
--   FROM "Cliente";
-- -- 2 
-- SELECT *
--   FROM "Cliente"
--   WHERE rfc_cliente = 'LELA100598HDF';



-- Compatibilidad_Procesador_Motherboard
-- -- 1
-- SELECT id_producto
--   FROM "Compatibilidad_Procesador_Motherboard"
--   WHERE id_producto = 5;
-- -- 2 
-- SELECT id_producto, id_motherboard
--   FROM "Compatibilidad_Procesador_Motherboard";



-- Componente_Pedido
-- -- 1
--  SELECT componente
--    FROM "Componente_Pedido"
--    WHERE numero_pedido = 64;
-- -- 2 
--  SELECT *
--    FROM "Componente_Pedido"
--    WHERE componente = 'Disco Duro Kingston';



-- Correo_Cliente
-- -- 1
--  SELECT *
--    FROM "Correo_Cliente"
--    WHERE rfc_cliente = 'LELA100598HDF';
-- -- 2 
--  SELECT rfc_cliente
--    FROM "Correo_Cliente"
--    WHERE correo_cliente = 'plopez@gmail.com';



-- Correo_Proveedor
-- -- 1
--  SELECT rfc_proveedor, correo_proveedor
--    FROM "Correo_Proveedor"
--    WHERE rfc_proveedor = 'PRAF600429HDG';
-- -- 2 
--  SELECT *
--    FROM "Correo_Proveedor";




-- Disco_Duro
-- -- 1
--  SELECT id_producto, tipo_disco_duro
--    FROM "Disco_Duro"
--    WHERE id_producto = 22;
-- -- 2 
--  SELECT *
--    FROM "Disco_Duro"
--    WHERE tipo_disco_duro = 'SATA';



-- Dispositivo_de_Entrada
-- -- 1
--  SELECT id_dispositivo_de_entrada, tipo_dispositivo_de_entrada
--    FROM "Dispositivo_de_Entrada"
--    WHERE id_dispositivo_de_entrada = 16;
-- -- 2 
--  SELECT id_producto, tipo_dispositivo_de_entrada
--    FROM "Dispositivo_de_Entrada"
--    WHERE tipo_dispositivo_de_entrada = 'Teclado';




-- Dispositivo_de_Salida
-- -- 1
--  SELECT id_producto, tipo_dispositivo_de_salida
--    FROM "Dispositivo_de_Salida"
--    WHERE id_producto = 72;
-- -- 2 
--  SELECT id_dispositivo_de_salida, tipo_dispositivo_de_salida
--    FROM "Dispositivo_de_Salida"
--    WHERE id_dispositivo_de_salida = 1;



-- Entrega_Mensajero_Cliente
-- -- 1
--  SELECT *
--    FROM "Entrega_Mensajero_Cliente"
--    WHERE rfc_cliente = 'LOJP910202HDF';
-- -- 2 
--  SELECT rfc_mensajero
--    FROM "Entrega_Mensajero_Cliente"
--    WHERE rfc_cliente = 'ARAA800221MDF';




-- Entrega_Mensajero_Pedido
-- -- 1
--  SELECT numero_pedido, rfc_mensajero
--    FROM "Entrega_Mensajero_Pedido"
--    WHERE numero_pedido = 46;
-- -- 2 
--  SELECT numero_pedido, rfc_mensajero
--    FROM "Entrega_Mensajero_Pedido"
--    WHERE rfc_mensajero = 'JTCA870499PJK';




-- Equipo_Armado
-- -- 1
--  SELECT *
--    FROM "Equipo_Armado"
--    WHERE id_equipo_armado = 8;
-- -- 2 
--  SELECT id_equipo_armado, id_disco_duro
--    FROM "Equipo_Armado"
--    WHERE id_disco_duro = 24;




-- Equipo_Armado_Dispositivo_de_Entrada
-- -- 1
--  SELECT *
--    FROM "Equipo_Armado_Dispositivo_de_Entrada"
--    WHERE id_dispositivo_de_entrada = 12;
-- -- 2 
--  SELECT id_equipo_armado
--    FROM "Equipo_Armado_Dispositivo_de_Entrada"
--    WHERE id_dispositivo_de_entrada = 10;



-- Equipo_Armado_Dispositivo_de_Salida
-- -- 1
--  SELECT id_dispositivo_de_salida, id_equipo_armado
--    FROM "Equipo_Armado_Dispositivo_de_Salida"
--    WHERE id_dispositivo_de_salida = 22;
-- -- 2 
--  SELECT  id_equipo_armado
--    FROM "Equipo_Armado_Dispositivo_de_Salida"
--    WHERE id_dispositivo_de_salida = 21;



-- Gabinete
-- -- 1
--  SELECT id_gabinete, color_gabinete
--    FROM "Gabinete"
--    WHERE id_gabinete = 5;
-- -- 2
--  SELECT id_gabinete, fuente_de_poder_gabinete,color_gabinete
--    FROM "Gabinete"
--    WHERE id_gabinete = 5;



-- Interfaz_Tarjeta_de_Red
-- -- 1
--  SELECT id_tarjeta_de_red, interfaz_tarjeta_de_red
--    FROM "Interfaz_Tarjeta_de_Red"
--    WHERE id_tarjeta_de_red = 1;
-- -- 2
--  SELECT id_tarjeta_de_red
--    FROM "Interfaz_Tarjeta_de_Red"
--    WHERE interfaz_tarjeta_de_red = 'AUI';



-- Memoria_Ram
-- -- 1
--  SELECT id_memoria_ram, capacidad_memoria_ram
--    FROM "Memoria_Ram"
--    WHERE capacidad_memoria_ram = '12GB';
-- -- 2
--  SELECT id_producto, capacidad_memoria_ram
--    FROM "Memoria_Ram"
--    WHERE id_producto = 142;



-- Mensajero
-- -- 1
--  SELECT nombre_mensajero, correo_mensajero
--    FROM "Mensajero"
--    WHERE rfc_mensajero = 'AAAC640907230';
-- -- 2
--  SELECT rfc_mensajero, nombre_mensajero, correo_mensajero
--    FROM "Mensajero"
--    WHERE apellido_paterno_mensajero = 'Torres';



-- Monitor
-- -- 1
--  SELECT id_producto, es_touch_monitor, tipo_monitor, tamanio_monitor
--    FROM "Monitor"
--    WHERE resolucion_monitor = '1280x800';
-- -- 2
--  SELECT tipo_monitor, tamanio_monitor, resolucion_monitor
--    FROM "Monitor"
--    WHERE tipo_monitor = 'LCD';




-- Motherboard
-- -- 1
--  SELECT *
--    FROM "Motherboard"
--    WHERE compatibilidad_marca_motherboard = 'Intel';
-- -- 2
--  SELECT id_producto, compatibilidad_marca_motherboard, capacidad_memoria_motherboard
--    FROM "Motherboard"
--    WHERE id_motherboard = 4;




-- Pago
-- -- 1
--  SELECT *
--    FROM "Pago"
--    WHERE fecha_pago = '1998-09-11';
-- -- 2
--  SELECT rfc_cliente, numero_pedido, fecha_pago
--    FROM "Pago"
--    WHERE cantidad_pago = 3000;




-- Pedido
-- -- 1
--  SELECT rfc_cliente, fecha_pedido, cantidad_pedido
--    FROM "Pedido"
--    WHERE fecha_pedido = '2013-05-20';
-- -- 2
--  SELECT numero_pedido, fecha_pedido, cantidad_pedido
--    FROM "Pedido"
--    WHERE rfc_cliente = 'ARAA800221MDF';




-- Procesador
-- -- 1
--  SELECT id_procesador, nucleos_logicos_procesador, modelo_procesador, capacidad_memoria_procesador
--    FROM "Procesador"
--    WHERE capacidad_memoria_procesador = '64 bits';
-- -- 2
--  SELECT id_producto, cache_procesador, nucleos_logicos_procesador, modelo_procesador, capacidad_memoria_procesador
--    FROM "Procesador"
--    WHERE modelo_procesador = 'AMD Fusion';


-- Producto
-- -- 1
--  SELECT id_producto, marca_producto, precio_producto
--    FROM "Producto"
--    WHERE marca_producto = 'Intel';
-- -- 2
--  SELECT marca_producto, precio_producto, descripcion_producto
--    FROM "Producto"
--    WHERE id_producto = 207;



-- Protocolo_Tarjeta_de_Red
-- -- 1
--  SELECT protocolo_tarjeta_de_Red
--    FROM "Protocolo_Tarjeta_de_Red"
--    WHERE id_tarjeta_de_red = 7;
-- -- 2
--  SELECT id_tarjeta_de_red, protocolo_tarjeta_de_Red
--    FROM "Protocolo_Tarjeta_de_Red"
--    WHERE protocolo_tarjeta_de_red = 'TCP/IP';



-- Provee_Proveedor_Producto
-- -- 1
--  SELECT *
--    FROM "Provee_Proveedor_Producto"
--    WHERE id_producto = 38;
-- -- 2
--  SELECT id_producto
--    FROM "Provee_Proveedor_Producto"
--    WHERE rfc_proveedor = 'JTXE800199CET';




-- Proveedor
-- -- 1
--  SELECT *
--    FROM "Proveedor"
--    WHERE nombre_proveedor = 'Compu Soluciones';
-- -- 2
--  SELECT nombre_proveedor, giro_productos_proveedor
--    FROM "Proveedor"
--    WHERE rfc_proveedor = 'BUOE610713HN7';



-- Recibe_Mensajero_Pedido
-- -- 1
--  SELECT numero_pedido, rfc_mensajero
--    FROM "Recibe_Mensajero_Pedido"
--    WHERE numero_pedido = 403;
-- -- 2
--  SELECT rfc_mensajero
--    FROM "Recibe_Mensajero_Pedido"
--    WHERE numero_pedido = 408;



-- Solicita_Pedido_Producto
-- -- 1
--  SELECT *
--    FROM "Solicita_Pedido_Producto"
--    WHERE numero_pedido = 272;
-- -- 2
--  SELECT id_producto
--    FROM "Solicita_Pedido_Producto"
--    WHERE numero_pedido = 368;



-- Tarjeta_Grafica
-- -- 1
--  SELECT id_tarjeta_grafica, memoria_ram_tarjeta_grafica
--    FROM "Tarjeta_Grafica"
--    WHERE id_producto = 557;
-- -- 2
--  SELECT id_producto, memoria_ram_tarjeta_grafica
--    FROM "Tarjeta_Grafica"
--    WHERE memoria_ram_tarjeta_grafica = '8GB';




-- Tarjeta_de_Red
-- -- 1
--  SELECT id_producto, id_tarjeta_de_red
--    FROM "Tarjeta_de_Red"
--    WHERE id_producto = 168;
-- -- 2
--  SELECT id_tarjeta_de_red, velocidad_transferencia_tarjeta_de_red
--    FROM "Tarjeta_de_Red"
--    WHERE velocidad_transferencia_tarjeta_de_red = '800';



-- Tarjeta_de_Sonido
-- -- 1
--  SELECT id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido
--    FROM "Tarjeta_de_Sonido"
--    WHERE id_producto = 165;
-- -- 2
--  SELECT id_producto, entradas_tarjeta_sonido, salidas_tarjeta_sonido
--    FROM "Tarjeta_de_Sonido"
--    WHERE salidas_tarjeta_sonido >= 3;



-- Telefono_Cliente
-- -- 1
--  SELECT rfc_cliente
--    FROM "Telefono_Cliente"
--    WHERE telefono_cliente = '54813462';
-- -- 2
--  SELECT rfc_cliente, telefono_cliente
--    FROM "Telefono_Cliente"
--    WHERE rfc_cliente = 'LOJP910202HDF';



-- Telefono_Proveedor
-- -- 1
--  SELECT *
--    FROM "Telefono_Proveedor"
--    WHERE telefono_proveedor = '58763155' OR telefono_proveedor = '53864702'; 
-- -- 2
--  SELECT *
--    FROM "Telefono_Proveedor"
--    WHERE rfc_proveedor = 'MANE700429HDF' OR rfc_proveedor = 'ROTR450221MDF'; 



-- Tipo_Audio_Tarjeta_Sonido
-- -- 1
--  SELECT *
--    FROM "Tipo_Audio_Tarjeta_Sonido"
--    WHERE tipo_audio = 'Dolby 2.0'; 
-- -- 2
--  SELECT tipo_audio
--    FROM "Tipo_Audio_Tarjeta_Sonido"
--    WHERE id_tarjeta_de_sonido = 6;



   

