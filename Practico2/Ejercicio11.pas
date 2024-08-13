program P2Ej11;

var num1, num2, num3, numero, numeroInicial, resultado : integer;

begin
    write('Ingrese un numero de tres cifras : ');
    readln(numero);
    (*Dividimos en tres el numero general*)
    numeroInicial := numero;
    num1 := numero MOD 10; (*Consigo el 7*)
    numero := numero DIV 10;
    num2 := numero MOD 10; (*Consigo el 1*)
    numero := numero DIV 10;
    num3 := numero MOD 10; (*Consigo el 2*)
    resultado := (num3 * sqr(8)) + (num2 * 8) + (num1 * 1); (*x^0 = 1, x e R*)
    writeln('Octal ', numeroInicial, ' = Decimal:', resultado);
end.

(*Escriba un programa en Pascal que transforme un numero octal (base ocho) de tres dıgitos
en su correspondiente numero equivalente en base 10. Por ejemplo, el numero octal de tres
dıgitos 415 equivale al valor decimal 4 × 8^2 + 1 × 8^1 + 5 × 8^0, o sea, 269. El programa
debera leer por la entrada est ́andar el numero octal y realizar las operaciones aritm ́eticas
necesarias para calcular el n ́umero equivalente en base 10. Como resultado, exhiba por la
salida est ́andar el valor octal ingresado junto con el n ́umero equivalente en base 10. Incluya
mensajes de salida con etiquetas descriptivas para los valores exhibidos.*)

(*Ejemplo:
Entrada = 217
Salida : "Octal 217 = Decimal 143"*)