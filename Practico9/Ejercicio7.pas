program P9Ej7;

const
    M = ...; {valor mayor estricto a 1}
    N = ...; {valor mayor estricto a 1}
    P = ...; {valor mayor estricto a 1}

type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;

procedure productoMatrices(a:MatrizMN; b:MatrizNP; VAR c:MatrizMP); {a*b = c}
var i, j, u : integer; {Para recorrer todas las matrices}
begin
    for i := 1 to M do
        for j := 1 to N do
            for u := 1 to P do
            begin
                c[i, u] := a[i, j] * b[j, u]; {Para guardar la matriz}
            end;
end;

{Letra ejercicio:
Escriba el procedimiento productoMatrices que dadas una matriz a (de dimensiones MxN) y una matriz
b (de dimensiones NxP), calcule su producto almacenando el resultado en una matriz c (de dimensiones
MxP).}