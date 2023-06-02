-- Un instructor puede dictar varios cursos
-- los alumnos pueden tomar varios cursos al mismo tiempo y muchos de ellos lo hacen
--  Algunos alumnos e instructores no nos dan sus números de teléfono

-- traer el nombre de los alumnos que esten inscriptos en el curso de unreal
select alumnos.nombre, cursos.nombre from alumnos
join alumnos_cursos on dni = dni_alumnos
join cursos on codigo = codigo_cursos
where cursos.nombre = 'Unreal';

-- saber el nombre del profesor de un alumno
select alumnos.nombre, instructores.nombre as "nombre instructor" from instructores
join cursos on dni = dni_instructores
join alumnos_cursos on codigo = codigo_cursos
join alumnos on alumnos.dni = dni_alumnos;

-- cual es el curso que tiene mas alumnos
select count(*),cursos.nombre,max(alumnos.dni) from cursos
join alumnos_cursos on codigo_cursos = cursos.codigo
join alumnos on dni_alumnos = alumnos.dni group by cursos.nombre;

-- cual es el instructor con mas cursos
select count(*), instructores.nombre, cursos.nombre from instructores
join cursos on cursos.dni_instructores = instructores.dni GROUP BY instructores.nombre;

-- cual es el promedio del profesor de algun curso
select avg(cursos.cuota) as promedio,instructores.nombre from instructores
join cursos on cursos.dni_instructores = instructores.dni where instructores.dni = 74357435;