drop database if exists capacitacion;
create database capacitacion;
use capacitacion;

create table cursos(
codigo int primary key,
nombre varchar(45),
cuota int,
duracion int,
dni_instructores int
);

create table instructores(
dni int primary key,
nombre varchar(45),
tel int
);

create table alumnos(
dni int primary key,
nombre varchar(45),
tel int,
email varchar(45)
);

create table alumnos_cursos(
id int AUTO_INCREMENT primary key,
dni_alumnos int,
codigo_cursos int
);

alter table cursos
add foreign key(dni_instructores)
references instructores(dni);

alter table alumnos_cursos
add foreign key(codigo_cursos)
references cursos(codigo);

alter table alumnos_cursos
add foreign key(dni_alumnos)
references alumnos(dni);
