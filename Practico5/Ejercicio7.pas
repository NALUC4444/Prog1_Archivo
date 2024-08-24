program P5Ej7;

var
    n, numero : integer;
    centinela : real;
    esPrimo : boolean;

begin
    write('Ingrese el valor a continuacion: ');
    readln(n);
    centinela := sqrt(n);
    esPrimo := false;
    centinela := trunc(centinela);
    numero := 0; (*para que el bucle cumpla su proposito*)
    (*Si no encuentro un divisior antes de la raiz sera primo*)
    while (numero <> centinela) do 
    begin
        numero := numero + 1; (*Sigue avanzando el analisis*)
        if (n MOD numero = 0) then
            esPrimo := false
        else
            esPrimo := true;
    end; (*Saldra del while cuando llegue a la raiz cuadrada de n*)
    if (esPrimo) then
        write(n, ' Es primo')
    else
        write(n, ' No es primo');
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que determine si un numero n es primo o no, siendo n
un entero positivo leıdo de la entrada estandar. Exhiba un mensaje de salida indicando el
resultado. Incluya mensajes de salida con etiquetas descriptivas para solicitar los valores.*)

(*Definicion primo:
En matemáticas, un número primo es un número natural mayor que 1 que tiene 
únicamente dos divisores positivos distintos: él mismo y el 1*)