{Parte B del ejercicio 3}
function ordenado(cadn:CadenaN) : boolean;
var valorActual, valorAnterior, i : integer; isOrd : boolean;
begin
    i := 1;
    isOrd := true; {Asumimos que estara ordenado}
    valorActual := cadn[i];
    i := 2;
    while (isOrd) and (i <= N) do
    begin
        valorAnterior := valorActual; {Para mantener el valor anterior}
        valorActual := cadn[i]; {Este avanza en el bucle}
        if (valorAnterior < valorActual) then
            isOrd := true
        else if (valorAnterior > valorActual) then
            isOrd := false;
        i := i + 1;
    end;
    if NOT (isOrd) then {Con el fin de asegurar si salio del bucle porque encontro un desorden}
        writeln('No esta en orden')
    else
        writeln('Esta ordenado');
    ordenado := isOrd;
end;

(*Letra Ejercicio:
Escriba la funcion llamada ordenado que, dado un arreglo de enteros, devuelve true si el arreglo esta
ordenado en forma ascendente y false en caso contrario.
function ordenado(cadn:CadenaN) : boolean;*)