program P3Ej11;

CONST Repeticion = '+';

var
    n, d, dg1, dg2, dg3, dg4 : integer;

begin
    write('Ingrese un entero de 4 digitos: ');
    readln(n);
    write('Ingrese un entero de 1 digito: ');
    readln(d);
    dg1 := n DIV 1000;
    dg2 := (n MOD 1000) DIV 100;
    dg3 := (n MOD 100) DIV 10;
    dg4 := (n MOD 10);
    writeln(n);
    if (d = dg1) then
        write(Repeticion);
    if (d = dg2) then
        write(Repeticion);
    if (d = dg3) then
        write(Repeticion);
    if (d = dg4) then
        write(Repeticion);
    if (d <> dg1) and (d <> dg2) and (d <> dg3) and (d <> dg4) then
        writeln(d, ' No esta en ', n);
    (*writeln(dg1);
    writeln(dg2);
    writeln(dg3);
    writeln(dg4);*)
end.



(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un entero positivo n de
exactamente cuatro dıgitos y otro entero positivo d de exactamente 1 d ́ıgito. Si d aparece
en la representacion decimal de n, entonces exhiba en la salida estandar el numero n con
un signo de suma (+) debajo de cada aparici ́on de d. En caso contrario, exhiba el mensaje
’d no aparece en n’. Su programa no necesita controlar que los enteros ingresados tengan
cada uno la cantidad de cifras indicada (asuma que as ́ı sera). Incluya mensajes de salida
con etiquetas descriptivas para solicitar los valores para n y d.*)

(*Ejemplo:

Entrada : Ingrese un entero de 4 digitos: 1100
: Ingrese un entero de 1 digito: 0
Salida  :
1100
++*)

(*
Entrada : Ingrese un entero de 4 digitos: 1100
        : Ingrese un entero de 1 digito: 5
Salida  :
1100
5 no aparece en 1100*)