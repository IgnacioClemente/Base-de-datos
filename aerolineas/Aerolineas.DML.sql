/*Aviones*/
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) VALUES (1, '500', 'Luma', '464', '2');
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) VALUES (3, '235', 'Joya', '200', '5');
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) VALUES (6, '354', 'Lome', '400', '6');

/*Vuelos*/
INSERT INTO vuelos (horaSalida, fecha, horallegada, ciudad, nro_avion) VALUES (06, '2023-06-23', 18, 'Borno', 1);
INSERT INTO vuelos (horaSalida, fecha, horallegada, ciudad, nro_avion) VALUES (04, '2027-08-4', 5, 'Popla', 3);
INSERT INTO vuelos (horaSalida, fecha, horallegada, ciudad, nro_avion) VALUES (03,'2024-04-23', 10, 'Moma', 6);

/*Personal*/
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (424, 'Jose', 1, 'piloto');
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (678, 'Matias', 2, 'piloto');
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (896, 'Jorge', 3, 'piloto');

/*Pilotos*/
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (424, 1);
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (678, 3);
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (896, 6);

/*Pasajeros*/
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (123, 1);
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (678, 2);
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (543, 3);

/*Piloto_Personal*/
INSERT INTO piloto_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (424, 424);
INSERT INTO piloto_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (678, 678);
INSERT INTO piloto_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (896, 896);

/*consultas*/
select * from aviones;
select * from vuelos;
select * from personal;
select * from pasajeros;
select * from pilotos;
select * from piloto_personal;

/* consultas las hrs que viajo el piloto de una ciudad a otra*/
select horaSalida, horallegada, ciudad, (horallegada - horaSalida) as totalHoras from vuelos;

/*Consulta total de pasajeros*/
select count(*) as cantidad_total from pasajeros;

/*Consulta total de cuantas veces viajo a un ciudad*/
select count(*) as cantidad_total from vuelos where ciudad = "Borno";
