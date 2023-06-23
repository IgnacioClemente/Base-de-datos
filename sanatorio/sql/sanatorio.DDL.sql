drop database if exists sanatorio;
create database sanatorio;
use sanatorio;

/*drop table if exists turnos;
drop table if exists doctores;
drop table if exists pacientes;
drop table if exists especialidades;
drop table if exists institucion;

show tables;*/

create table institucion(
	id int auto_increment primary key, -- FK con especialidades
	nombre varchar (30) not null,
	cuit varchar (15) not null,
	telefono int,
	direccion varchar (50) not null,
	horario varchar (10) not null
);

create table doctores(
	id int auto_increment primary key, -- FK turnos
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	dia enum ('LUNES','MARTES','MIERCOLES','JUEVES','VIERNES','SABADO','DOMINGO'),
	diaTurno enum ('MAÑANA','TARDE'),
	idEspecialidad int not null
);

create table especialidades(
	id int auto_increment primary key,
        id_institucion int,
	tipoEspecialidad enum ('GASTROENTEROLOGIA','CARDIOLOGIA','PEDIATRIA','NEUMOLOGIA','ODONTOLOGIA','OFTALMOLOGIA','OTORRINOLARINGOLOGIA','ENDOCRINOLOGIA')
);

create table turnos(
    id int auto_increment primary key,
    idDoctor int, -- KF doctor (id)
    idPaciente int, -- KF pacientes (id)
    fecha varchar (10),
    horario varchar(5)
);

create table pacientes(
	id int auto_increment primary key,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	edad int,
	dni int,
	obra_social varchar (30) not null
);

alter table turnos
    add constraint FK_Doctor_Id
    foreign key(idDoctor)
    references doctores(id);

alter table turnos
    add constraint FK_Paciente_Id
    foreign key(idPaciente)
    references pacientes(id);
    
alter table especialidades
    add constraint FK_institucion_Id
    foreign key(id_institucion)
    references institucion(id);
    
alter table doctores
    add constraint FK_Especialidades_Id
    foreign key(idEspecialidad)
    references especialidades(id);