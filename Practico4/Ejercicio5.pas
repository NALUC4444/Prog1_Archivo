program P4Ej5;

var 
    i, n : integer;

begin
    write('Ingrese el valor del que desea buscar los divisores: ');
    readln(n);
    if (n <= 0) then (*Comprobacion de que no sea menor a 0*)
        write('El valor ingresado es incorrecto...')
    else
    begin
        for i := 1 to n do
        begin
            if (n MOD i = 0) then
                writeln('El resto de dividir ', i, ' entre ', n, ' es: ', n MOD i);
        end;
    end;
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un numero natural n y
despliegue en pantalla todos los divisores naturales de n.*)