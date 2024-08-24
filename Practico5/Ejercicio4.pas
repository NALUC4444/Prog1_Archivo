program P5Ej4;

CONST 
    CENTINELA = -1; (*Limite para salir del while*)

var 
    numeroActual, numeroAnterior, promedio, resultadoSuma, cantNumeros, menor, mayor  : integer;

(*Parte A*)
begin
    write('Ingrese la cantidad de numero para analizar, finalizado por un -1: ');
    read(numeroActual);
    cantNumeros := 0; (*Se ingresa al menos un valor*)
    resultadoSuma := 0;
    menor := maxint; (*Para que el primer leido sea el minimo*)
    mayor := -1; (*El minimo valor posible*)
    while (numeroActual <> CENTINELA) do 
    begin
        (*Analisis de valor mayor y menor, parte(b) del ejercicio*)
        if (numeroActual < menor) then
            menor := numeroActual;
        if (numeroActual > mayor) then
            mayor := numeroActual;
        (*Comienza parte (a) del ejercicio*)
        numeroAnterior := numeroActual;
        cantNumeros := cantNumeros + 1; (*Para ir aumentando los numeros para el promedio*)
        resultadoSuma := numeroActual + resultadoSuma;
        read(numeroActual); (*Avanzar en la lista de numeros*)
    end;
    promedio := resultadoSuma DIV cantNumeros; (*Ecuacion para el promedio*)
    writeln('El resultado de la suma es: ', resultadoSuma);
    writeln('El resultado del promedio es: ', promedio);
    writeln('El menor valor ingresado es: ', menor);
    writeln('El maximo valor ingresado es: ', mayor);
end.

(*Letra Ejercicio:
4. Suponga que se ingresa una secuencia de numeros enteros positivos que debe ser leıda de
la entrada estandar. La secuencia contiene al menos un numero entero positivo y se indica
su fin con el entero -1. Para los siguientes programas responda: ¿cu ́al es la instrucci ́on de
iteraci ́on m ́as adecuada para utilizar (for, while, repeat)? ¿Por que?
(Debe usarse el bucle while, ya que sabemos que el primer valor sera positivo, pero
pero nos da un sentinela que es el -1 (Hasta donde va el bucle)).

(a) Escriba un programa en Pascal que determine la suma y el promedio de todos los
enteros positivos le ́ıdos. Exhiba ambos resultados en la salida estandar

(b) Escriba un programa en Pascal que determine el numero mas grande y el mas pequeno
de todos los enteros positivos leıdos. Exhiba ambos resultados en la salida estandar.*)