-- Comentario de una linea
/* 
	Comentario de bloque
*/
 SHOW DATABASES; -- Muestra las bases de datos

 DROP DATABASE IF EXISTS aerolinea; -- Borra la base de datos
CREATE DATABASE aerolinea;
use aerolinea;

 -- SHOW TABLES;

-- Creamos tabla pasajeros
CREATE TABLE pasajeros(
	pasaporte int PRIMARY KEY,
    nro_vuelo int 
);

CREATE TABLE vuelos(
	nro int PRIMARY KEY,
    hora time,
    fecha date, 
    horaLlegada time,
    ciudad varchar(50),
    nro_avion int
);