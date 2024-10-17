{Parte C del ejercicio 3}
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);
var i : integer;
begin
    for i := 1 to N do
    begin
        if (valor < cadn[i]) then {Asegura que se guarde el más grande siempre, con su primera aparicion}
        begin
            pos := i;
            valor := cadn[i];
        end;
    end;
    writeln('El valor mas grande es: ', valor, ' Se encuentra en la posicion: ', pos);
end;

{Letra ejercicio:
(c) Escriba el procedimiento llamado maxValorPos que, dado un arreglo de enteros, devuelve el valor mas
grande y el primer ındice en que este ocurre.}