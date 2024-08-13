program P2Ej10;

var 
    a, raizCuadrada, raizSqrt : real;

begin
    write('Introduce el valor para calcular la raiz cuadrada: ');
    readln(a);
    raizSqrt := sqrt(a);
    raizCuadrada := exp(0.5 * ln(a));
    writeln('Valor introducido: ', a);
    writeln('Raiz cuadrada calculada: ', raizCuadrada);
    writeln('Valor de Sqrt (a): ', raizSqrt); 
end.

(*Letra Ejercicio:
Con el resultado del ejercicio 11 del Practico 1, escriba un programa en Pascal para de-
terminar la raız cuadrada de un numero real positivo a mediante el calculo de a^0,5. El
programa debera leer el valor para a por la entrada estandar. Como resultado, exhiba por
la salida estandar el valor de a, el valor de a^0,5, y el valor de sqrt(a) (el cual se calculara
con la funcion predefinida). Incluya mensajes de salida con etiquetas descriptivas para los
valores exhibidos.*)

(*Ejemplo:
Entrada = 12.7
Salida:
Valor introducido: a = 1.2700000000e+01
Raiz cuadrada calculada = 3.5637059362e+00
Valor de Sqrt (a) = 3.5637059362e+00*)