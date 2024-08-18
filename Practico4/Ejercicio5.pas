program P4Ej5;

var 
    i, n : integer;

begin
    write('Ingrese el valor del que desea buscar los divisores: ');
    readln(n);
    for i := 0 to n do
        begin
            writeln(i);
            if (i MOD n = 0) then
                writeln('El resto de dividir ', i, ' entre ', n, ' es: ', i MOD n);
        end;
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un numero natural n y
despliegue en pantalla todos los divisores naturales de n.*)