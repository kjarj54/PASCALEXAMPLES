PROGRAM CalcularAreaYVolumenTetraedro;
USES CRT, Math;

VAR
    a, area, volumen: Real;

BEGIN
    CLRSCR;
    Writeln('Ingrese la longitud del lado del tetraedro: ');
    Readln(a);

    { Calcular el área }
    area := a * a * sqrt(3);

    { Calcular el volumen }
    volumen := (a * a * a / 12) * sqrt(2);

    Writeln('El área del tetraedro es: ', area:0:2);
    Writeln('El volumen del tetraedro es: ', volumen:0:2);
    Readln;
END.