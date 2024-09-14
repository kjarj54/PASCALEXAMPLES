 Program Mayorque100;
 Uses CRT;
 Var
    A:INTEGER;
 Begin
      CLRSCR;
     Write('Digite un numero:'); Readln(A);
      IF(A>=100) THEN BEGIN
               Writeln('Es mayor a 100');
      END
      ELSE
      Writeln('Es menor a 100');
      Readln;
END.