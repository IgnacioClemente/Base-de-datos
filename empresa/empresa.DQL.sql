-- Mostrar las descripciones de los departamentos de los empleados efectivos
select descripcion from empleados join departamentos on codigo = codigo_departamento
where tipo = 'efectivo';

-- Mostrar las descripciones de los departamentos de los empleados contratados
select descripcion from empleados join departamentos on codigo = codigo_departamento
where tipo = 'contratado';

-- ¿Cuantos empleados efectivos y contratados hay en la empresa?
select count(*),tipo from empleados GROUP BY tipo;

-- ¿Cual es el promedio del salario de los empleados efectivos?
select avg(salario) as promedio from efectivos;

-- ¿Cuanto ganan los empleados contratados por mes sin horas extras?
select nombre,((horaComun * valorHoraComun) * 30) as valor
from contratados join empleados on contratados.nro_Legajo = empleados.nro_Legajo;

-- ¿Cuanto ganan los empleado contratados por mes si trabajaran todas las horas extras?
select nombre, ((horaComun * valorHoraComun) + (horaExtra * valorHoraExtra) * 30) as valor from contratados
join empleados on contratados.nro_Legajo = empleados.nro_Legajo;

-- ¿Cual es el promedio del salario de los empleados contratados que cumplen sus horas comun?
select avg((horaComun * valorHoraComun) * 30) as promedio_comun from contratados;

-- ¿Cual es el promedio del salario de los empleados contratados que cumplen sus horas extras?
select avg((horaExtra * valorHoraExtra) + (horaComun * valorHoraComun) * 30) as promedio_extra from contratados;

-- se les va aumentar un 20% de su salario a los efectivos ¿Cuanto seria el salario mensual? 
select (salario * 1.20) as aumento from efectivos;

-- se les va aumentar un 20% de lo que ganan en el mes por horas comun y 18% por horas extra a los contratados ¿Cuanto seria lo que ganan por mes?
select ((HoraComun * valorHoraComun) * 1.20 *30)  as aumento_mes, ((HoraExtra * valorHoraExtra) * 1.18) as aumento_extra from contratados;

select empleados.nombre,empleados.apellido,contratados.horaComun,departamentos.descripcion,consultora.nombre as nombre_consultora
from empleados
left join contratados on contratados.nro_Legajo = empleados.nro_Legajo
left join departamentos on departamentos.codigo = empleados.codigo_departamento
left join consultora on consultora.cuil = contratados.cuil_Consultora;


