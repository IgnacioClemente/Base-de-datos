drop database if exists sistemas;
create database sistemas;
use sistemas;

create table sistema(
nivel enum ("bajo","medio","alto") primary key
);

create table archivos(
modo enum("input","output","input-output") primary key
);

create table programas(
freq_ejec enum("baja","media","alta") primary key
);

create table sistemas_programas(
id int primary key auto_increment,
nivel_sistema enum("bajo","medio","alto"),
freq_ejec_programa enum("baja","media","alta")
);

create table programas_archivos(
id int primary key auto_increment,
freq_ejec enum("baja","media","alta"),
modo enum("input","output","input-output") 
);

alter table programas_archivos
CHANGE freq_ejec freq_ejec_programa enum("baja","media","alta");

alter table programas_archivos
CHANGE modo modo_archivo enum("input","output","input-output") ;

alter table programas_archivos
add foreign key(freq_ejec_programa)
references programas(freq_ejec);

alter table programas_archivos
add foreign key(modo_archivo)
references archivos(modo);

alter table sistemas_programas
add foreign key(nivel_sistema)
references sistema(nivel);

alter table sistemas_programas
add foreign key(freq_ejec_programa)
references programas(freq_ejec);