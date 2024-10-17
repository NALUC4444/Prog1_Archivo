{Parte B del ejercicio 4}
procedure cargarArray(VAR cadena : TipoMatriz); {Parte b}
var i, j, valor : integer;
begin
    valor := 1;
    for i := 1 to 10 do
        for j := 1 to 10 do
        begin
            cadena[i, j] := valor;
            valor := valor + 1; {Para ir aumentando automaticamente hasta 100}
        end;
    for i := 1 to 10 do
        for j := 1 to 10 do
            writeln(cadena[i, j]);
end;

{Letra Ejercicio:
(b) Escriba un procedimiento que cargue una variable de tipo TipoMatriz con valores leıdos desde la
entrada.}