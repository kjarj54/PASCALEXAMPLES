PROGRAM TiempoEnUnSegundo;

USES CRT;

VAR 
    hora,minuto,segundo:integer;
BEGIN
    CLRSCR;
    Writeln('Ingrese las horas'); Readln(hora);
    Writeln('Ingrese los minutos'); Readln(minuto);
    Writeln('Ingrese los segundos'); Readln(segundo);
    segundo:=segundo+1;
    if segundo= 60 then 
    begin
        segundo:=0;
        minuto:=minuto+1;
    end;
    if minuto=60 then
    begin
        minuto:=0;
        hora:=hora+1;
    end;
    if hora=24 then
    begin
        hora:=0;
    end;
    Writeln('La hora un segundo despues es: ',hora,':',minuto,':',segundo);
    Readln;
END.