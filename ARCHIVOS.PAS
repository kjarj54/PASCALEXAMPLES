PROGRAM fichT01;

VAR fichero:text;
BEGIN
     assign(fichero, 'DATOS.TXT');
     rewrite(fichero);
     writeln(fichero,'Hola');
     writeln(fichero,'Segunda linea');
     close(fichero);
end.