program P4Ej9;

var 
    i, x, n, resultado : integer;

begin
    write('Ingrese un valor para x: ');
    readln(x);
    resultado := x; 
    (*Ya que la potencia es x *x * x y en este caso x se remplazaria en la operacion por resultado*)
    write('Ingrese un valor para n: ');
    readln(n);
    (*x es la base y la n es la potencia*)
    for i := 1 to (n-1) do
        begin
            resultado := x * resultado;
            (*2^4 = 2*2*2*2, entonces debo replicar ese caso*)
        end;
    writeln('El resultado de ', x, ' elevado a ', n, ' es: ', resultado);
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea dos numeros naturales x, n de la entrada estandar
y calcule la potencia de x elevado a la n. Para este ejercicio, solamente se permite utilizar
las operaciones aritmeticas elementales de Pascal (+, -, *, /, DIV, MOD). Incluya mensajes
de salida con etiquetas descriptivas para solicitar y exhibir los valores.*)