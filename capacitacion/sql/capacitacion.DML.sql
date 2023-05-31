insert into instructores(documento,nombre,tel) values(32523523,'Adrian',5363663);
insert into instructores(documento,nombre,tel) values(74357435,'Gonzalo',null);
insert into instructores(documento,nombre,tel) values(6463453,'Daniel',43253656);

insert into cursos(codigo,nombre,cuota,duracion,documento_instructores) values(3243,'JavaScript',43.4323,4,32523523);
insert into cursos(codigo,nombre,cuota,duracion,documento_instructores) values(7534,'Unity',70.4222,2,74357435);
insert into cursos(codigo,nombre,cuota,duracion,documento_instructores) values(5321,'Unreal',60.32523,3,6463453);

insert into alumnos(nombre,tel,email,codigo_cursos) values('Jose',36534634,'josecristo@gmail.com',3243);
insert into alumnos(nombre,tel,email,codigo_cursos) values('Esteban',null,'estebanmengolo@gmail.com',7534);
insert into alumnos(nombre,tel,email,codigo_cursos) values('Ivan',34265346,'ivancitomung@gmail.com',5321);