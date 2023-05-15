-- cuantas veces se ejecuto un programa de frequencia media en los sistemas
-- cuantos archivos input-output hay en la frequencia media de un programa 
-- mostrar el sistema y los archivos input-output que haya en la frequencia media de un programa 

select count(*) as cantidad_total from programas where freq_ejec = 'media';
select count(*) as cantidad_freq from programas_archivos where freq_ejec_programa = 'media';
select nivel,modo,freq_ejec from sistema -- llamar cada campo de distintas tablas
join sistemas_programas on sistema.nivel = sistemas_programas.nivel_sistema
join programas on programas.freq_ejec = sistemas_programas.freq_ejec_programa
join programas_archivos on programas.frec_ejec = programas_archivos.freq_ejec
join archivos on programas_archivos.modo_archivo = archivos.modo
where modo = 'input-output';
