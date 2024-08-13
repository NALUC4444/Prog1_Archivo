program P2Ej9;

var
    x, resultado1, resultadoExp : real;

begin
    x := 0;
    write('Ingrese un valor entre 0.0 y 1.0 a continuacion: ');
    readln(x);
    resultado1 := 1 + (x/1) + (sqr(x) / (x + 2)) + ((sqr(x) * x) / (1 + 2 + 3)) + ((sqr(x) * x) / (1 + 2 + 3))
    resultadoExp := exp(x);
end.


(*Letra Ejercicio:
La funcion exp de Pascal calcula un valor igual a la suma de la serie infinita 
1 + [x/1!] + [(x^2)/2!] + [(x^3)/3!] + [(x^4)/4!], 
siendo x un numero real. Escriba un programa en Pascal que lea por la entrada estandar 
un valor real para x entre 0,0 y 1,0. El programa debe
determinar, por un lado, la suma de los primeros cinco t ́erminos de la serie infinita y, por
otro lado, el valor de exp(x) mediante la funcion predefinida. Como resultado, exhiba por
la salida est ́andar ambos valores calculados junto con el valor de x. Incluya mensajes de
salida con etiquetas descriptivas para los valores exhibidos.*)
