drop database if exists capacitacion;
create database capacitacion;
use capacitacion;

create table cursos(
codigo int primary key,
nombre varchar(45),
cuota int,
duracion int,
documento_instructores int
);

create table instructores(
documento int primary key,
nombre varchar(45),
tel int
);

create table alumnos(
nombre varchar(45),
tel int,
email varchar(45),
codigo_cursos int
);

alter table cursos
add foreign key(documento_instructores)
references instructores(documento);

alter table alumnos
add foreign key(codigo_cursos)
references cursos(codigo);
