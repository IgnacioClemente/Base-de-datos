-- - Ingreso registros de "departamentos"
insert into departamentos (codigo,descripcion) values(540,'Fuerza viejo');
insert into departamentos (codigo,descripcion) values(400,'Hora del dia');
insert into departamentos (codigo,descripcion) values(642,'No me digas');
insert into departamentos (codigo,descripcion) values(345,'Melon');
insert into departamentos (codigo,descripcion) values(787,'DiaD');
insert into departamentos (codigo,descripcion) values(986,'AhoraSi');

-- - Ingreso registros de "empleados"
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(346534,'Esteban','Domingez',540);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(123145,'Julian','Robertzon',400);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(765635,'Michale','Borez',642);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(325325,'Mople','Perro',345);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(754884,'Mariano','No',787);
insert into empleados (nro_legajo,nombre,apellido,codigo_departamento) values(968332,'Ernan','Plis',986);


-- insert into efectivos(nro_legajo) select nro_legajo from empleados where tipo = "efectivo"; -- me ahorro escribir los otros 2 insert, tipo seria otra variable mas de empleados
-- insert into contratados(nro_legajo) select nro_legajo from empleados where tipo = "contratado"; -- me ahorro escribir los otros 2 insert, tipo seria otra variable mas de empleados
-- select * from efectivos
-- select * from contratados
-- update efectivos set salario = 120000, where(nro_legajo = 765635); -- ejemplo de update

-- - Ingreso registros de "efectivos"
insert into efectivos (nro_legajo_empleados,salario) values(346534,4500);
insert into efectivos (nro_legajo_empleados,salario) values(123145,2350);
insert into efectivos (nro_legajo_empleados,salario) values(765635,9500);

-- - Ingreso registros de "consultora"
insert into consultora(cuit,social) values(195,'Erren');
insert into consultora(cuit,social) values(658,'Jugando');
insert into consultora(cuit,social) values(897,'Esquivo');

-- - Ingreso registros de "contratados"
insert into contratados (nro_legajo_empleados,cuit_consultora,precio_comun,precio_extra) values(325325,195,4634,8658);
insert into contratados (nro_legajo_empleados,cuit_consultora,precio_comun,precio_extra) values(754884,658,3255,9876);
insert into contratados (nro_legajo_empleados,cuit_consultora,precio_comun,precio_extra) values(968332,897,8755,7574);