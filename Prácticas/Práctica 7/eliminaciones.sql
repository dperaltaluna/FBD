-- Scripts de consultas


-- Cliente
-- -- 1
-- DELETE FROM "Cliente"
--  WHERE apellido_paterno_cliente = 'Rodriguez';
-- -- 2 
-- DELETE FROM "Cliente"
--  WHERE rfc_cliente = 'ALBA110391DCG';



-- Compatibilidad_Procesador_Motherboard
-- -- 1
-- DELETE FROM "Compatibilidad_Procesador_Motherboard"
--  WHERE id_producto = 5;
-- -- 2
-- DELETE FROM "Compatibilidad_Procesador_Motherboard"
--  WHERE id_motherboard = 4;



-- Componente_Pedido
-- -- 1
-- DELETE FROM "Componente_Pedido"
--  WHERE componente = 'Mouse HP';
-- -- 2
-- DELETE FROM "Componente_Pedido"
--  WHERE numero_pedido = 98;



-- Correo_Cliente
-- -- 1
-- DELETE FROM "Correo_Cliente"
-- WHERE rfc_cliente = 'MONR980520HDF';
-- -- 2
-- DELETE FROM "Correo_Cliente"
-- WHERE correo_cliente = 'plopez@gmail.com';



-- Correo_Proveedor
-- -- 1
-- DELETE FROM "Correo_Proveedor"
-- WHERE rfc_proveedor = 'ROTR450221MDF';
-- -- 2
-- DELETE FROM "Correo_Proveedor"
-- WHERE correo_proveedor = 'compuventas_soporte@compuventas.com';



-- Disco_Duro
-- -- 1
-- DELETE FROM "Disco_Duro"
-- WHERE id_producto = 71;
-- -- 2
-- DELETE FROM "Disco_Duro"
-- WHERE id_disco_duro = 4;



-- Dispositivo_de_Entrada
-- -- 1
-- DELETE FROM "Dispositivo_de_Entrada"
-- WHERE id_producto = 93;
-- -- 2
-- DELETE FROM "Dispositivo_de_Entrada"
-- WHERE tipo_dispositivo_de_entrada = 'Escaner';



-- Dispositivo_de_Salida
-- -- 1
-- DELETE FROM "Dispositivo_de_Salida"
-- WHERE id_producto = 73;
-- -- 2
-- DELETE FROM "Dispositivo_de_Salida"
-- WHERE id_dispositivo_de_salida = 1;



-- Entrega_Mensajero_Cliente
-- -- 1
-- DELETE FROM "Entrega_Mensajero_Cliente"
-- WHERE rfc_cliente = 'MONR980520HDF';
-- -- 2
-- DELETE FROM "Entrega_Mensajero_Cliente"
-- WHERE rfc_mensajero = 'PCRB910214POC';



-- Entrega_Mensajero_Pedido
-- -- 1
-- DELETE FROM "Entrega_Mensajero_Pedido"
-- WHERE numero_pedido = 46;
-- -- 2
-- DELETE FROM "Entrega_Mensajero_Cliente"
-- WHERE rfc_mensajero = 'JTCA870499PJK';



-- Equipo_Armado
-- -- 1
-- DELETE FROM "Equipo_Armado"
-- WHERE id_equipo_armado = 12;
-- -- 2
-- DELETE FROM "Equipo_Armado"
-- WHERE id_producto = 107;



-- Equipo_Armado_Dispositivo_de_Entrada
-- -- 1
-- DELETE FROM "Equipo_Armado_Dispositivo_de_Entrada"
-- WHERE id_equipo_armado = 2;
-- -- 2
-- DELETE FROM "Equipo_Armado_Dispositivo_de_Entrada"
-- WHERE id_equipo_armado = 8;



-- Equipo_Armado_Dispositivo_de_Salida
-- -- 1
-- DELETE FROM "Equipo_Armado_Dispositivo_de_Salida"
-- WHERE id_equipo_armado = 29;
-- -- 2
-- DELETE FROM "Equipo_Armado_Dispositivo_de_Salida"
-- WHERE id_dispositivo_de_salida = 1;



-- Gabinete
-- -- 1
-- DELETE FROM "Gabinete"
-- WHERE id_gabinete = 2;
-- -- 2
-- DELETE FROM "Gabinete"
-- WHERE fuente_de_poder_gabinete = 'AT';



-- Interfaz_Tarjeta_de_Red
-- -- 1
-- DELETE FROM "Interfaz_Tarjeta_de_Red"
-- WHERE id_tarjeta_de_red = 5;
-- -- 2
-- DELETE FROM "Interfaz_Tarjeta_de_Red"
-- WHERE id_tarjeta_de_red = 4;




-- Memoria_Ram
-- -- 1
-- DELETE FROM "Memoria_Ram"
-- WHERE id_memoria_ram = 5;
-- -- 2
-- DELETE FROM "Memoria_Ram"
-- WHERE capacidad_memoria_ram = '4GB';



-- Mensajero
-- -- 1
-- DELETE FROM "Mensajero"
-- WHERE rfc_mensajero = 'VBER670876CVA';
-- -- 2
-- DELETE FROM "Mensajero"
-- WHERE correo_mensajero = 'nestor_torres@outlook.com';




-- Monitor
-- -- 1
-- DELETE FROM "Monitor"
-- WHERE id_producto = 146;
-- -- 2
-- DELETE FROM "Monitor"
-- WHERE  resolucion_monitor = '1600x900';



-- Motherboard
-- -- 1
-- DELETE FROM "Motherboard"
-- WHERE id_producto = 5;
-- -- 2            
-- DELETE FROM "Motherboard"
-- WHERE capacidad_memoria_motherboard = '8GB';



-- Pago
-- -- 1
-- DELETE FROM "Pago"
-- WHERE numero_pago = 307;
-- -- 2   
-- DELETE FROM "Pago"
-- WHERE numero_pago = 301 AND cantidad_pago = 20000; 



-- Pedido
-- -- 1
-- -- DELETE FROM "Pedido"
-- -- WHERE cantidad_pedido = 4500;
-- -- 2   
-- DELETE FROM "Pedido"
-- WHERE  rfc_cliente = 'ARAA800221MDF';



-- Procesador
-- -- 1
-- DELETE FROM "Procesador"
-- WHERE id_producto = 150;
-- -- 2   
-- DELETE FROM "Procesador"
-- WHERE nucleos_logicos_procesador = 2 AND nucleos_fisicos_procesador = 10;



-- Producto
-- -- 1
-- DELETE FROM "Producto"
-- WHERE id_producto = 207;
-- -- 2   
-- DELETE FROM "Producto"
-- WHERE precio_producto <= 7000;



-- Protocolo_Tarjeta_de_Red
-- -- 1
-- DELETE FROM "Protocolo_Tarjeta_de_Red"
-- WHERE id_tarjeta_de_red = 7;
-- -- 2 
-- DELETE FROM "Protocolo_Tarjeta_de_Red"
-- WHERE id_tarjeta_de_red = 6 AND protocolo_tarjeta_de_red = 'Ethernet';



-- Provee_Proveedor_Producto
-- -- 1
-- DELETE FROM "Provee_Proveedor_Producto"
-- WHERE id_producto = 40;
-- -- 2
-- DELETE FROM "Provee_Proveedor_Producto"
-- WHERE rfc_proveedor = 'JTXE800199CET';



-- Proveedor
-- -- 1
-- DELETE FROM "Proveedor"
-- WHERE  nombre_proveedor = 'Compuworld';
-- -- 2
-- DELETE FROM "Proveedor"
-- WHERE  rfc_proveedor = 'BUOE610713HN7';



-- Recibe_Mensajero_Pedido
-- -- 1
-- DELETE FROM "Recibe_Mensajero_Pedido"
-- WHERE  numero_pedido = 403;
-- -- 2
-- DELETE FROM "Recibe_Mensajero_Pedido"
-- WHERE  rfc_mensajero = 'PCRB910214POC';



-- Solicita_Pedido_Producto
-- -- 1
-- DELETE FROM "Solicita_Pedido_Producto"
-- WHERE id_producto = 407;
-- -- 2
DELETE FROM "Solicita_Pedido_Producto"
WHERE numero_pedido = 275;



-- Tarjeta_Grafica
-- -- 1
-- DELETE FROM "Tarjeta_Grafica"
-- WHERE id_tarjeta_grafica = 7;
-- -- 2
-- DELETE FROM "Tarjeta_Grafica"
-- WHERE memoria_ram_tarjeta_grafica = '1GB';



-- Tarjeta_de_Red
-- -- 1
-- DELETE FROM "Tarjeta_de_Red"
-- WHERE id_tarjeta_de_red = 10;
-- -- 2
-- DELETE FROM "Tarjeta_de_Red"
-- WHERE id_tarjeta_de_red = 9 AND velocidad_transferencia_tarjeta_de_red = 100;




-- Tarjeta_de_Sonido
-- -- 1
-- DELETE FROM "Tarjeta_de_Sonido"
-- WHERE id_producto = 165;
-- -- 2
-- DELETE FROM "Tarjeta_de_Sonido"
-- WHERE salidas_tarjeta_sonido = 3;



-- Telefono_Cliente
-- -- 1
-- DELETE FROM "Telefono_Cliente"
-- WHERE telefono_cliente = 57418594;
-- -- 2
-- DELETE FROM "Telefono_Cliente"
-- WHERE rfc_cliente = 'LOJP910202HDF';



-- Telefono_Proveedor
-- -- 1
-- DELETE FROM "Telefono_Proveedor"
-- WHERE rfc_proveedor = 'ROTR450221MDF';
-- -- 2
-- DELETE FROM "Telefono_Proveedor"
-- WHERE telefono_proveedor = 54221138;




-- Tipo_Audio_Tarjeta_Sonido
-- -- 1
-- DELETE FROM "Tipo_Audio_Tarjeta_Sonido"
-- WHERE id_tarjeta_de_sonido = 6;
-- -- 2
-- DELETE FROM "Tipo_Audio_Tarjeta_Sonido"
-- WHERE id_tarjeta_de_sonido = 5 AND tipo_audio = 'Dolby 2.0';