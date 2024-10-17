program P6Ej7;

var 
    m, n, i, resultado : integer;

begin
    write('Ingrese m: ');
    readln(m);
    write('Ingrese n: ');
    readln(n);
    if (m > 10) or (m < 1) or (n > 10) or (n < 1) then
        writeln('m y n deben estar entre 1 y 10')
    else
    begin
        for i := m to n do
        begin
            
        end;
    end;
end.

(*Letra Ejercicio:
Escriba un programa que lea dos enteros positivos m y n (entre 1 y 10), 
y exhiba para cada entero en el rango su correspondiente tabla de multiplicar. 
En caso de que m sea mayor que n no se exhibira nada.*)