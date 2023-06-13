select nombre, apellido from Empleados order by edad;

select nombre, apellido from Empleados group by edad;

select salario *1.20 from Empleados;

select nombre from Empleados where nombre = 'Juan';

select nombre, apellido, fecha_asignacion from Empleados
join Asignaciones on Empleados.id = empleado_id;

select salario from Empleados group by nombre HAVING salario > 200;

select avg(salario) from Empleados;

select nombre_dep,empleado_id from departamentos 
left join Asignaciones on departamentos.id = asignaciones.departamento_id;

select nombre, apellido,empleado_id  from Empleados
left join Asignaciones on Asignaciones.empleado_id = Empleados.id;

select nombre, apellido,empleado_id  from Asignaciones
right join Empleados on Asignaciones.empleado_id = Empleados.id;