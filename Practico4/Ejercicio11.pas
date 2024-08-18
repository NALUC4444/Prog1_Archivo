program P4Ej11;

var
    i, m, n : integer;

begin
    write('Ingrese el valor de m: ');
    readln(m);
    write('Ingrese el valor de n: ');
    readln(n);
    if (m > n) then
        writeln('Vuelva a ingresar nuevos valores...')
    else
    begin
        writeln('Empieza el programa...');
    end;
end.

(*Letra ejercicio:
Considere la funci ́on f tal que f(x) = x^2 − 18x +5, donde x es un valor entero en el entorno
de m a n, siendo m y n dos enteros tales que m ≤ n.
Escriba un programa en Pascal que lea los valores para m y n de la entrada estandar y
despliegue en la salida estandar el valor maximo de f(x) para x en ese entorno. Incluya
mensajes de salida con etiquetas descriptivas para solicitar y/o exhibir los valores.*)