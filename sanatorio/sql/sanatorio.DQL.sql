-- Cual es el numero de telefono y la direccion del sanatorio?
select telefono, direccion from institucion;

-- cuantas especialidades tiene el sanatorio?
select count(*) tipoEspecialidad from especialidades;

-- Que medicos estan atendiendo en turno mañana?
select nombre, apellido from doctores where diaTurno = 'Mañana';

-- Que medicos estan atendiendo en turno tarde?
select nombre, apellido from doctores where diaTurno = 'Tarde';

-- cuales son las especializaciones, el nombre y apellido de los doctores?
select nombre,apellido,tipoEspecialidad from doctores
join especialidades on idEspecialidad = especialidades.id;

-- Lista de nombre, apellido, edad y dni de los pacientes del doctor Mariano lopez
select pacientes.nombre,pacientes.apellido,pacientes.edad,pacientes.dni,doctores.nombre,doctores.apellido 
from pacientes
join turnos on pacientes.id = turnos.idPaciente
join doctores on turnos.idDoctor = doctores.id
where doctores.nombre = "Mariano" and doctores.apellido = "Lopez";

-- Lista de paciente con horario y fecha de la odontologa Miranda Melo 
select pacientes.nombre,pacientes.apellido,turnos.horario,turnos.fecha,doctores.nombre,doctores.apellido 
from pacientes
join turnos on pacientes.id = turnos.idPaciente
join doctores on turnos.idDoctor = doctores.id
where doctores.nombre = "Miranda" and doctores.apellido = "Melo";

-- Cual es el listado de pacientes de neumologia?
select pacientes.nombre,pacientes.apellido,especialidades.tipoEspecialidad
from pacientes
join turnos on pacientes.id = turnos.idPaciente
join doctores on turnos.idDoctor = doctores.id
join especialidades on doctores.idEspecialidad = especialidades.id
where especialidades.tipoEspecialidad = "NEUMOLOGIA";

-- Quienes son medicos cardiologos?
select doctores.nombre, doctores.apellido, especialidades.tipoEspecialidad
from doctores
join especialidades on doctores.idEspecialidad = especialidades.id
where especialidades.tipoEspecialidad = "CARDIOLOGIA";

-- Que fecha y horario de atencion tiene el paciente Patricio Ledezma?
select pacientes.nombre,pacientes.apellido,turnos.fecha,turnos.horario
from pacientes
join turnos on pacientes.id = turnos.idPaciente
where pacientes.nombre = 'Patricio' and pacientes.apellido = 'Ledezma';

-- Mostrar a los medicos y sus pacientes, con todos sus datos, con la fecha y horario de atencion 
select concat_ws(',', doctores.nombre,doctores.apellido) as doctores, doctores.dia,doctores.diaTurno,
concat_ws(',', pacientes.nombre,pacientes.apellido) as pacientes, pacientes.dni,pacientes.edad,especialidades.tipoEspecialidad,
turnos.fecha,turnos.horario
from pacientes
join turnos on turnos.idPaciente = pacientes.id
join doctores on doctores.id = turnos.idDoctor
join especialidades on especialidades.id = doctores.idEspecialidad;