select nro_legajo,descripcion from empleados join efectivos on nro_legajo = nro_legajo_empleados
join departamentos on codigo = codigo_departamento;

select nro_legajo,descripcion from empleados join contratados on nro_legajo = nro_legajo_empleados
join departamentos on codigo = codigo_departamento;

-- no terminado
select count(efectivos.nro_legajo_empleados) as cantidad_efectivos, count(contratados.nro_legajo_empleados) as cantidad_contratados from empleados 
join efectivos on nro_legajo = efectivos.nro_legajo_empleados 
join contratados on nro_legajo = contratados.nro_legajo_empleados; 

select avg(salario) as promedio from efectivos;

select precio_comun from contratados;

select (precio_extra *30) as total from contratados;

select avg(precio_comun) as promedio_comun from contratados;

select avg(precio_extra) as promedio_extra from contratados;

select (salario * 1.20) as aumento from efectivos;

select ((precio_comun *1.20) *30) as aumento_mes, (precio_extra * 1.18) as aumento_extra from contratados;

