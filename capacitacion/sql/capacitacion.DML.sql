insert into instructores(dni,nombre,tel) values(32523523,'Adrian',5363663);
insert into instructores(dni,nombre,tel) values(74357435,'Gonzalo',null);
insert into instructores(dni,nombre,tel) values(6463453,'Daniel',43253656);

insert into cursos(codigo,nombre,cuota,duracion,dni_instructores) values(3243,'JavaScript',43.4323,4,32523523);
insert into cursos(codigo,nombre,cuota,duracion,dni_instructores) values(7534,'Unity',70.4222,2,74357435);
insert into cursos(codigo,nombre,cuota,duracion,dni_instructores) values(5321,'Unreal',60.32523,3,6463453);
insert into cursos(codigo,nombre,cuota,duracion,dni_instructores) values(4313,'SQL',345344,3,6463453);
insert into cursos(codigo,nombre,cuota,duracion,dni_instructores) values(5323,'UNIX',345344,3,6463453);

insert into alumnos(dni,nombre,tel,email) values(34252351,'Jose',36534634,'josecristo@gmail.com');
insert into alumnos(dni,nombre,tel,email) values(75463242,'Esteban',null,'estebanmengolo@gmail.com');
insert into alumnos(dni,nombre,tel,email) values(14325346,'Ivan',34265346,'ivancitomung@gmail.com');
insert into alumnos(dni,nombre,tel,email) values(64353253,'Javier',null,'javierno@gmail.com');

insert into alumnos_cursos(dni_alumnos,codigo_cursos) values(34252351,3243);
insert into alumnos_cursos(dni_alumnos,codigo_cursos) values(34252351,7534);
insert into alumnos_cursos(dni_alumnos,codigo_cursos) values(64353253,7534);
insert into alumnos_cursos(dni_alumnos,codigo_cursos) values(75463242,5321);
insert into alumnos_cursos(dni_alumnos,codigo_cursos) values(14325346,4313);
insert into alumnos_cursos(dni_alumnos,codigo_cursos) values(14325346,5323);