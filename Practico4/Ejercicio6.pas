program P4Ej6;

var 
    i, maximoValor, minimoValor, n, numActual : integer;

begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese 8 enteros: ');
    maximoValor := 0;
    minimoValor := maxint; (*Para asegurar que siempre se encuentren menores*)
    (*Los pasos anteriores se pueden asumir por primera lectura*)
    for i := 2 to n do 
    (*El bucle comienza en 2 porque ya se leyeron los valores antes*) 
    begin
        read(numActual); (*Si queremos comparar todos los valores debemos leer recien en el bucle*)
        if (numActual > maximoValor) then
            maximoValor := numActual;
        if (numActual < minimoValor) then
            minimoValor := numActual;
    end;
    writeln('El mayor entero ingresado es: ', maximoValor);
    writeln('El menor entero ingresado es: ', minimoValor);
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un numero natural n. A
continuacion, el programa debera leer n enteros y luego desplegar en pantalla el mayor y
el menor de ellos. Incluya mensajes de salida con etiquetas descriptivas para solicitar y
exhibir los valores.*)