-- - Ingreso registros de "departamentos"
insert into departamentos (codigo,descripcion) values(540,'Fuerza viejo');
insert into departamentos (codigo,descripcion) values(400,'Hora del dia');
insert into departamentos (codigo,descripcion) values(642,'No me digas');

-- - Ingreso registros de "empleados"
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(346534,'Esteban','Domingez',540);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(123145,'Julian','Robertzon',400);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(765635,'Michale','Borez',642);

-- - Ingreso registros de "efectivos"
insert into efectivos (nro_legajo_empleados,salario) values(346534,4500);
insert into efectivos (nro_legajo_empleados,salario) values(123145,2350);
insert into efectivos (nro_legajo_empleados,salario) values(765635,9500);

-- - Ingreso registros de "consultora"
insert into consultora(cuit,social) values(195,'Erren');
insert into consultora(cuit,social) values(658,'Jugando');
insert into consultora(cuit,social) values(897,'Esquivo');

-- - Ingreso registros de "contratados"
insert into contratados(nro_legajo_empleados,cuit_consultora,precio_comun,precio_extra) values(346534,195,4202,8464);
insert into contratados(nro_legajo_empleados,cuit_consultora,precio_comun,precio_extra) values(123145,658,31342,1231);
insert into contratados(nro_legajo_empleados,cuit_consultora,precio_comun,precio_extra) values(765635,897,94575,6735);
