drop database if exists empresa;
create database empresa;
use empresa;

create table empleados(
nro_legajo int primary key,
nombre varchar(25),
apellido varchar(50),
codigo_departamento int
);

create table departamentos(
codigo int primary key,
descripcion text
);

create table efectivos(
nro_legajo_empleados int primary key,
salario int
);

create table contratados(
nro_legajo_empleados int primary key,
cuit_consultora int,
precio_comun int,
precio_extra int
);

create table consultora(
cuit int primary key,
social text
);

alter table empleados
add foreign key(codigo_departamento)
references departamentos(codigo);

alter table contratados
add foreign key(cuit_consultora)
references consultora(cuit);

alter table efectivos
add foreign key(nro_legajo_empleados)
references empleados(nro_legajo);

alter table contratados
add foreign key(nro_legajo_empleados)
references empleados(nro_legajo);


