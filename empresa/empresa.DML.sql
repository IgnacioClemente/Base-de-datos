-- - Ingreso registros de "departamentos"
insert into departamentos (codigo,descripcion) values(540,'Fuerza viejo');
insert into departamentos (codigo,descripcion) values(400,'Hora del dia');
insert into departamentos (codigo,descripcion) values(642,'No me digas');
insert into departamentos (codigo,descripcion) values(345,'Melon');
insert into departamentos (codigo,descripcion) values(787,'DiaD');
insert into departamentos (codigo,descripcion) values(986,'AhoraSi');

-- - Ingreso registros de "empleados"
insert into empleados (nro_Legajo,nombre,apellido,codigo_departamento,tipo) values(346534,'Esteban','Domingez',540,'efectivo');
insert into empleados (nro_Legajo,nombre,apellido,codigo_departamento,tipo) values(123145,'Julian','Robertzon',400,'efectivo');
insert into empleados (nro_Legajo,nombre,apellido,codigo_departamento,tipo) values(765635,'Michale','Borez',642,'efectivo');
insert into empleados (nro_Legajo,nombre,apellido,codigo_departamento,tipo) values(325325,'Mople','Perro',345,'contratado');
insert into empleados (nro_Legajo,nombre,apellido,codigo_departamento,tipo) values(754884,'Mariano','No',787,'contratado');
insert into empleados (nro_Legajo,nombre,apellido,codigo_departamento,tipo) values(968332,'Ernan','Plis',986,'contratado');


insert into efectivos(nro_Legajo) select nro_Legajo from empleados where tipo = "efectivo"; -- me ahorro escribir los otros 2 insert, tipo seria otra variable mas de empleados
insert into contratados(nro_Legajo) select nro_Legajo from empleados where tipo = "contratado"; -- me ahorro escribir los otros 2 insert, tipo seria otra variable mas de empleados
-- select * from efectivos
-- select * from contratados
-- update efectivos set salario = 120000, where(nro_legajo = 765635); -- ejemplo de update

-- - Ingreso registros de "consultora"
insert into consultora(cuil,nombre) values(19553252,'Suarez');
insert into consultora(cuil,nombre) values(65853252,'Melano');
insert into consultora(cuil,nombre) values(89723525,'Riojas');

UPDATE efectivos SET salario = 20000 WHERE (nro_Legajo = 346534);
UPDATE efectivos SET salario = 130000 WHERE (nro_Legajo = 123145);
UPDATE efectivos SET salario = 130000 WHERE (nro_Legajo = 765635);
UPDATE contratados SET valorHoraComun = 800, valorHoraExtra = 300, horaComun = 8, horaExtra = 4, cuil_Consultora = 19553252 WHERE (nro_Legajo = 325325);
UPDATE contratados SET valorHoraComun = 1500, valorHoraExtra = 543, horaComun = 8, horaExtra = 4, cuil_Consultora = 65853252 WHERE (nro_Legajo = 754884);
UPDATE contratados SET valorHoraComun = 2424, valorHoraExtra = 633, horaComun = 8, horaExtra = 4, cuil_Consultora = 89723525 WHERE (nro_Legajo = 968332);
