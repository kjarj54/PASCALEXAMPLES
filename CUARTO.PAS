  PROGRAM CalcularFactorial(INPUT,OUTPUT);
Uses CRT;
{*Funcion que calcula el factorial de n (n! de forma recursiva.)}
FUNCTION Factorial(CONST N:INTEGER):INTEGER;
BEGIN
     IF N>1 THEN BEGIN
        Factorial:=N*(Factorial(N-1));
     END
     ELSE
         Factorial:=N;
     END;

VAR
   Base: INTEGER;
BEGIN
     CLRSCR;
     Write('Valor de N: '); Readln(Base);
     WriteLn('N!=', Factorial(Base));
     Write('Pulse[intro] para finalizar...');
     Readln;
END.