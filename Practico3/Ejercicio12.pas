program P3Ej12;

var
    a, b, c, Discriminante, raiz1, raiz2 : real;

(*El discriminante se calcula correctamente, faltan las raices*)

begin
    write('Ingrese coeficientes de la ecuacion: ');
    readln(a, b, c);
    Discriminante := sqr(b) - (4*a*c);
    writeln(Discriminante:7:2);
    Discriminante := sqrt(Discriminante);
    writeln(Discriminante:7:2);
    if (Discriminante > 0) then (*En caso de dos raices*)
        begin
            raiz1 := (-b + Discriminante) / 2*a;
            raiz2 := (-b - Discriminante) / 2*a;
            writeln('Dos raices reales diferentes: ', raiz2:7:2,raiz1:7:2);
        end;
    if (Discriminante = 0) then (*En caso de una raiz*)
        begin
            raiz1 := (-b + sqrt(Discriminante)) / 2*a;
            writeln('Dos raices reales iguales: ', raiz1:7:2);
        end;
    if (Discriminante < 0) then
        begin
            raiz1 := (-b + sqrt(Discriminante)) / 2*a;
            raiz2 := (-b - sqrt(Discriminante)) / 2*a;
            writeln('Dos raices complejas diferentes: ', raiz1:7:2, raiz2:7:2);
        end;
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que encuentre las raıces de la ecuacion cuadratica ax^2 + bx + c = 0
donde a, b, y c son valores reales leıdos de la entrada estandar. El programa debera imprimir
en la salida estandar uno de los siguientes mensajes, segun corresponda (Incluya mensajes
de salida con etiquetas descriptivas para los valores exhibidos)
Dos raices reales diferentes: xxx.xx y xxx.xx
Dos raices reales iguales: xxx.xx
Dos raices complejas diferentes: xxx.xx (+/-) i xxx.xx*)