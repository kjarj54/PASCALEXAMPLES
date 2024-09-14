PROGRAM CalcularVelocidadProyectil;

USES CRT;

VAR
    distanciaKm, tiempoMinutos, distanciaMts,tiempoEnSegundos:Real;
    velocidadMps:Real;
BEGIN
    CLRSCR;
    Writeln('Ingrese la distancia en kilometros: ');
    Readln(distanciaKm);
    Writeln('Ingrese el tiempo en minutos: ');
    Readln(tiempoMinutos);
    distanciaMts:=distanciaKm*1000;
    tiempoEnSegundos:=tiempoMinutos*60;
    velocidadMps:=distanciaMts/tiempoEnSegundos;
    Writeln('La velocidad del proyectil es de: ',velocidadMps:0:2,' m/s');
    Readln;
END.
