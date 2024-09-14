Program Suma; {Ejemplo de un programa que suma dos numeros}
Uses CRT;
Var
   A,B,Resultado:integer;
Begin
     CLRSCR;

     gotoxy(10,8);Write('Ingrese primer numero: ');
     Readln(A);
     Write('Ingreses segundo numero: ');
     Readln(B);
     Resultado:=A+B;
     Writeln('El Resultado es: ', Resultado);
     Readln;
            delay(2000);
            repeat until keypressed;
End.