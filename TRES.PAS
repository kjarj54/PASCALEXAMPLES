program CalificacionAlfabeticaANumerica;
Uses CRT;
var
  calificacion: char;
  valorNumerico: integer;

begin
  CLRSCR;
  writeln('Ingrese la calificacion (A, B, C, D, E): ');
  readln(calificacion);

  case calificacion of
    'A': valorNumerico := 4;
    'B': valorNumerico := 5;
    'C': valorNumerico := 6;
    'D': valorNumerico := 7;
    'E': valorNumerico := 8;
  else
    writeln('Calificacion no valida.');
    halt(1);
  end;

  writeln('El valor numerico equivalente es: ', valorNumerico);
  readln
end.