{Parte C del ejercicio 4}
procedure Invertir(m, n : integer; VAR cadena : TipoMatriz);
var 
    i : integer;
    auxMatriz : arrayAux; {Array auxiliar}
begin
    for i := 1 to 10 do {Porque solo va a mover una fila}
    begin
        auxMatriz[i] := cadena[i, m];
        cadena[i, m] := cadena[i, n];
        cadena[i, n] := auxMatriz[i]; {Para ir actualizando}
    end;
end;

{Letra Ejercicio:
(c) Escriba un procedimiento que dada una matriz de tipo TipoMatriz y dos variables enteras m y n,
intercambie las filas m y n de la matriz. Es decir, todos los valores de la fila m deben quedar en la fila n
y viceversa.}