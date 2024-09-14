program AnalisisCadenas;

uses crt;

var
  inputFile, outputFile: text;
  line: string;
  totalLetras, totalMinusculas, totalDigitosPares, totalSignosPuntuacion, totalBlancos: integer;
  i: integer;

function EsLetra(c: char): boolean;
begin
  EsLetra := (c in ['a'..'z']) or (c in ['A'..'Z']);
end;

function EsMinuscula(c: char): boolean;
begin
  EsMinuscula := c in ['a'..'z'];
end;

function EsDigitoPar(c: char): boolean;
begin
  EsDigitoPar := (c in ['0', '2', '4', '6', '8']);
end;

function EsSignoPuntuacion(c: char): boolean;
begin
  EsSignoPuntuacion := c in [',', ';', ':', '.', '?', '!'];
end;

function EsBlanco(c: char): boolean;
begin
  EsBlanco := c = ' ';
end;

procedure AnalizarLinea(linea: string);
begin
  for i := 1 to length(linea) do
  begin
    if EsLetra(linea[i]) then
      Inc(totalLetras);
    if EsMinuscula(linea[i]) then
      Inc(totalMinusculas);
    if EsDigitoPar(linea[i]) then
      Inc(totalDigitosPares);
    if EsSignoPuntuacion(linea[i]) then
      Inc(totalSignosPuntuacion);
    if EsBlanco(linea[i]) then
      Inc(totalBlancos);
  end;
end;

begin
  clrscr;
  
  totalLetras := 0;
  totalMinusculas := 0;
  totalDigitosPares := 0;
  totalSignosPuntuacion := 0;
  totalBlancos := 0;

  assign(inputFile, '\TPWDB\EXAMPLES\INPUT.TXT');
  reset(inputFile);

  assign(outputFile, '\TPWDB\EXAMPLES\OUTPUT.TXT');
  rewrite(outputFile);

  while not eof(inputFile) do
  begin
    readln(inputFile, line);
    AnalizarLinea(line);
  end;

  writeln(outputFile, 'Total de letras: ', totalLetras);
  writeln(outputFile, 'Total de letras minsculas: ', totalMinusculas);
  writeln(outputFile, 'Total de d√≠gitos pares: ', totalDigitosPares);
  writeln(outputFile, 'Total de signos de puntuacin: ', totalSignosPuntuacion);
  writeln(outputFile, 'Total de espacios en blanco: ', totalBlancos);

  close(inputFile);
  close(outputFile);

  writeln('An°lisis completado. Resultados guardados en "OUTPUT.TXT".');
end.
