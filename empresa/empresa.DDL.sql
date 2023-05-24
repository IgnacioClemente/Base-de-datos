drop database if exists empresa;
create database empresa;
use empresa;

create table empleados(
nro_Legajo int primary key,
nombre varchar(45),
apellido varchar(45),
tipo enum('efectivo','contratado'),
codigo_departamento int
);

create table departamentos(
codigo int primary key,
descripcion text
);

create table efectivos(
nro_Legajo int primary key,
salario double
);

create table contratados(
nro_Legajo int primary key,
cuil_Consultora int,
horaComun double,
horaExtra double
);

create table consultora(
cuil int primary key,
nombre varchar(50)
);

alter table empleados
add foreign key(codigo_departamento)
references departamentos(codigo);

alter table contratados
add foreign key(cuil_Consultora)
references consultora(cuil);

alter table efectivos
add foreign key(nro_Legajo)
references empleados(nro_Legajo);

alter table contratados
add foreign key(nro_Legajo)
references empleados(nro_Legajo);

alter table contratados
add column valorHoraComun int, add column valorHoraExtra int;


