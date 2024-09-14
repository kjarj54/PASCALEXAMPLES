PROGRAM figura;

USES CRT;

function primo(num:Integer):Boolean;
BEGIN
     if (num MOD 2)= 0 then
        primo:= False;
     if(num MOD 2)=1 then
            primo:=True
END;

function primoNeg(numNeg:Integer):Boolean;
BEGIN
    if ((numNeg*numNeg) MOD 2)= 0 then
        primoNeg:= False;
     if((numNeg*numNeg) MOD 2)=1 then
            primoNeg:=True
END;

VAR
   numUsu,i,j, y,aux:Integer;
BEGIN
     CLRSCR;
     WriteLn('Escriba un numero impar');
     ReadLn(numUsu);
     aux:=numUsu;
     IF(primo(numUsu)) then
        FOR i:=1 To numUsu do
        BEGIN
             FOR y:=aux DOWNTO 0 do
             BEGIN
                  WRITE(' ')
            END;
            FOR j:=1 To i do
            BEGIN
                Write('* ');
            END;
            WriteLn;
            aux:=aux-1;
        END
     ELSE
     BEGIN
         IF (primoNeg(numUsu)) THEN
            BEGIN
               aux:=aux*aux;
               WRITE(aux);
               FOR i:=1 TO numUsu*numUsu DO
               BEGIN
                FOR y:=1 TO numUsu*numUsu do
                BEGIN
                      WRITE(' ')
                 END;
                  FOR j:=aux DOWNTO 1 do
                  BEGIN
                       Write('* ');
                  END;
                  WriteLn;
                  aux:=aux-1;
               END;
            END
         ElSE
             Writeln('El numero no es primo');
       END;

     READLN;

END.