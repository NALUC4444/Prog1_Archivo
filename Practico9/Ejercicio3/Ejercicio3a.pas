{Parte A del ejercicio 3}
function cantMayores(cadn:CadenaN; num : integer): integer;
var mayores, i: integer;
begin
    mayores := 0; {Porque no sabemos cuantos son mayores}
    for i := 1 to N do
        if (num < cadn[i]) then
            mayores := mayores + 1;
    writeln('La cantidad de valores mayores a ', num, ' Son: ', mayores);
end;

(*5 9 62 2 40 6 3 98 45 1 4*)

(*Escriba la funcion llamada cantMayores que, dados un arreglo de enteros y un entero num, devuelve la
cantidad de valores almacenados en el arreglo que son mayores que num.
function cantMayores(cadn:CadenaN; num:integer) : integer;*)