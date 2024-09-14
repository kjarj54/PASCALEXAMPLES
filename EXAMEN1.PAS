PROGRAM examenuno;
USES CRT;

VAR
  velocidadKm,velocidadMts,tiempoMinutos,tiempoSeg,total:Real;
BEGIN
     CLRSCR;
     WriteLn('Digite la velocidad del proyectil en kilometros');
     ReadLn(velocidadKm);
     WriteLn('Digite el tiempo en minutos');
     ReadLn(tiempoMinutos);
     velocidadMts:=velocidadKm*1000;
     tiempoSeg:=tiempoMinutos*60;
     total:=velocidadMts/tiempoSeg;
     WriteLn('La velocidad en metros por seg es ',total:0:2, 'm/s');
     ReadLn;

END.