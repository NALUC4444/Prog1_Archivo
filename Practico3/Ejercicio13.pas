program P3Ej13;

var
    resultado, dg1, dg2, dg3 : integer;
    a, b, c : char; (*Debe ser char porque se le pueden dar valores de letra y numeros*)

begin
    write('Ingrese numero positivo hexedecimal de 3 cifras: ');
    readln(a, b, c);
    case a of
        '0' : dg1 := 0;
        '1' : dg1 := 1;
        '2' : dg1 := 2;
        '3' : dg1 := 3;
        '4' : dg1 := 4;
        '5' : dg1 := 5;
        '6' : dg1 := 6;
        '7' : dg1 := 7;
        '8' : dg1 := 8;
        '9' : dg1 := 9;
        'A' : dg1 := 10;
        'B' : dg1 := 11;
        'C' : dg1 := 12;
        'D' : dg1 := 13;
        'E' : dg1 := 14;
        'F' : dg1 := 15;
    end; (*Final del case*)
    case b of
        '0' : dg2 := 0;
        '1' : dg2 := 1;
        '2' : dg2 := 2;
        '3' : dg2 := 3;
        '4' : dg2 := 4;
        '5' : dg2 := 5;
        '6' : dg2 := 6;
        '7' : dg2 := 7;
        '8' : dg2 := 8;
        '9' : dg2 := 9;
        'A' : dg2 := 10;
        'B' : dg2 := 11;
        'C' : dg2 := 12;
        'D' : dg2 := 13;
        'E' : dg2 := 14;
        'F' : dg2 := 15;
    end; (*Final del case*)
    case c of
        '0' : dg3 := 0;
        '1' : dg3 := 1;
        '2' : dg3 := 2;
        '3' : dg3 := 3;
        '4' : dg3 := 4;
        '5' : dg3 := 5;
        '6' : dg3 := 6;
        '7' : dg3 := 7;
        '8' : dg3 := 8;
        '9' : dg3 := 9;
        'A' : dg3 := 10;
        'B' : dg3 := 11;
        'C' : dg3 := 12;
        'D' : dg3 := 13;
        'E' : dg3 := 14;
        'F' : dg3 := 15;
    end; (*Final del case*)
    resultado := (dg1 * sqr(16)) + (dg2 * 16) + dg3;
    writeln('Hexadecimal ', a,b,c, ' = Decimal ', resultado);
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que convierta un numero positivo hexadecimal (de tres
dıgitos) tomado de la entrada estandar en su equivalente en base 10. Un dıgito hexadecimal
es uno de los dıgitos 0 a 9 o A(10), B(11), C(12), D(13), E(14), o F(15). El equivalente
decimal de un numero hexadecimal de la forma abc se calcula como: a × 16^2 + b × 16 + c.
Su programa debera leer por la entrada est ́andar el numero hexadecimal y realizar las
operaciones aritmeticas necesarias para calcular el numero equivalente en base 10. Como
resultado, exhiba por la salida est ́andar el valor hexadecimal ingresado junto con el numero
equivalente en base 10. Incluya mensajes de salida con etiquetas descriptivas para los valores
exhibidos.*)