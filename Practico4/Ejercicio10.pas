program P4Ej10;

var
    i, n, resultado : integer;

begin
    write('Ingrese un valor para n: ');
    readln(n);
    resultado := 1; (*Inicio del bucle futuro*)
    (*factorial es por ejemplo 4! = 1*2*3*4, asi siempre*)
    for i := 1 to n do 
        resultado := i * resultado;
    writeln('El factorial de ', n, ' es ', resultado);
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que calcule el factorial de un numero natural n (leido
de la entrada estandar). Para este ejercicio, solamente se permite utilizar las operaciones
aritm ́eticas elementales de Pascal (+, -, *, /, DIV, MOD). Incluya mensajes de salida con
etiquetas descriptivas para solicitar y exhibir los valores.*)