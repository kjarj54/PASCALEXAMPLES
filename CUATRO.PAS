PROGRAM CalculoImporteNeto;

USES CRT;

var
    ImporteBruto, ImporteNeto:Real;
begin
    ClrScr;
    Write('Ingrese el importe bruto: ');
    ReadLn(ImporteBruto);
    ImporteNeto:=ImporteBruto*0.8;
    WriteLn('El importe neto es: ', ImporteNeto:0:2);
    ReadKey;
end.