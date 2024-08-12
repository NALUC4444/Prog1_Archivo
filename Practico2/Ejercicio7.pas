program P2Ej7;

var
    m, v, relativo : real;

begin
    m := 0;
    v := 0;
    write('Ingrese el valor de la medicion: ');
    readln(m);
    write('Ingrese el valor verdadero: ');
    readln(v);
    relativo := abs(m - v) / v; (*Esto dara el error realtivo*)
    writeln('Medicion = ', m);
    writeln('Valor verdadero = ', v);
    writeln('Error relativo = ', relativo);
end.


(*Letra ejercicio:
El error relativo en una medici ́on m es la raz ́on de la diferencia absoluta entre la medici ́on
y el valor verdadero v al valor verdadero, la cual se calcula como |m − v|/v. Escriba un
programa en Pascal que lea por la entrada est ́andar dos n ́umeros reales que representan
la medici ́on m y el valor verdadero v. El programa debe calcular el error relativo de la
medici ́on y exhibirlo en la salida est ́andar junto con la medici ́on y el valor verdadero.
Incluya mensajes de salida con etiquetas descriptivas para los valores exhibidos.*)