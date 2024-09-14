PROGRAM MultiploDe3(INPUT,OUTPUT);
Uses CRT;
VAR
   Numero,Cnt:INTEGER;

BEGIN
     CLRSCR;
     Cnt:=0;
     Write('Entra el primer numero de la serie: ');Readln(Numero);
     WHILE (Numero <>0) DO
           BEGIN
                IF(Numero MOD 3)=0 THEN
                          INC(Cnt);
                          Write('Dame otro numero (0 para terminar):'); Readln(Numero);
                END;
           Writeln('La cantidad de multiplos de 3 ingresados es',Cnt);
           Write('Pulse[intro] para finalizar...');
     Readln;
END.