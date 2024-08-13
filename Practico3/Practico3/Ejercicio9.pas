program P2Ej9;

var
    numero, num1, num2, num3, num4 : integer;

begin
    write('Ingrese un numero de cuatro cifras: ');
    readln(numero);
    num4 := numero MOD 10; (*Obtenemos la unidad*)
    num3 := (numero DIV 10) MOD 10; (*Obtenemos la decena*)
    num2 := (numero DIV 100) MOD 10; (*Obtenemos la centena*)
    num1 := (numero DIV 1000) MOD 10; (*Obtenemos el millar*)
    if (num1 > 0) then
        write(num1 ,' . ', num2 , num3 , num4)
    else
        write(num2 , num3 , num4);
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que ingrese de la entrada estandar un entero de hasta cuatro
cifras y lo despliegue en la salida estandar con un punto de la siguiente manera: separando
la cifra de los millares (si la hay) de la cifra de las centenas. Su programa no necesita
controlar que el entero ingresado tenga hasta cuatro cifras (asuma que ası sera).*)

(*Ejemplos:
Entrada : 1234,  Salida : 1.234
Entrada : 3004,  Salida : 3.004
Entrada : 567,   Salida : 567*)