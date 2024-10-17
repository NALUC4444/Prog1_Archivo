program P7Ej7;

function distancia(x1, y1, x2, y2 : real): real;
var resultado : real;
begin
    resultado := sqrt(sqr(x2 - x1) + sqr(y2 - y1));
    writeln('d(A,B): A(', x1:7:2, ',', y1:7:2, ') y B(', x2:7:2, ',', y2:7:2, ') = ', resultado:7:2);
    distancia := resultado;
end;

(*Ejemplo:
A(1,2)
B(5,7)
d(A,B) = 6.40*)

var
    Ax, Ay, Bx, yB : real;

begin
    write('Ingrese las coordenadas del punto A: ');
    readln(Ax, Ay);
    write('Ingrese las coordenadas del punto B: ');
    readln(Bx, yB);
    distancia(Ax, Ay, Bx, yB);
end.

(*Letra Ejercicio:
(a) Escriba una funcion llamada distancia que tenga cuatro parametros de entrada (reales) llamados x1,
y1, x2, y2, que representan las coordenadas en el plano de los puntos (x1, y1) y (x2, y2). La funcion
debe calcular y retornar la distancia entre ambos puntos.
(b) Escriba un programa principal que lea las coordenadas de dos puntos y exhiba la distancia entre ambos.
El programa debe invocar a la funcion distancia.*)