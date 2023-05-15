-- - Ingreso registros de "sistema"
insert into sistema (nivel) values('alto');
insert into sistema (nivel) values('medio');
insert into sistema (nivel) values('bajo');

-- - Ingreso registros de "archivos"
insert into archivos (modo) values('input');
insert into archivos (modo) values('output');
insert into archivos (modo) values('input-output');

-- - Ingreso registros de "programas"
insert into programas (freq_ejec) values('alta');
insert into programas (freq_ejec) values('media');
insert into programas (freq_ejec) values('baja');

-- - Ingreso registros de "sistemas_programas"
insert into sistemas_programas(nivel_sistema,freq_ejec_programa) values('alto','alta');
insert into sistemas_programas(nivel_sistema,freq_ejec_programa) values('medio','media');
insert into sistemas_programas(nivel_sistema,freq_ejec_programa) values('bajo','baja');

-- - Ingreso registros de "programas_archivos"
insert into programas_archivos(freq_ejec_programa,modo_archivo) values('alta','input');
insert into programas_archivos(freq_ejec_programa,modo_archivo) values('media','output');
insert into programas_archivos(freq_ejec_programa,modo_archivo) values('baja','input-output');