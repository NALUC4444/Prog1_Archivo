program P4Ej4;

var 
    i, a, b, n : integer;

begin
    write('Ingrese el valor natural a: ');
    readln(a);
    write('Ingrese el valor natural b mayor al valor anterior: ');
    readln(b);
    write('Ingrese el valor natural n: ');
    readln(n);
    if (a > b) then
        write('Valor introducido no disponible...')
    else
    begin
        for i := a to b do 
        begin
            if (i MOD n = 0) then
                write(i, ' , ');
        end;
    end;
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar tres numeros naturales a, b
y n. El programa debe exhibir en pantalla todos los multiplos de n que haya entre a y b.*)