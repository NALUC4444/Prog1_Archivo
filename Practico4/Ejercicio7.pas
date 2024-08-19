program P4Ej7;

CONST 
    ASTERISCOS = '*';

var
    i, i2, cantAsterisco, n : integer;

begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese ', n, ' enteros positivos: ');
    read(cantAsterisco);
    for i := 1 to n do (*Este bucle recorre los numeros*)
    begin
        for i2 := 0 to cantAsterisco do (*Este recorre la cantidad de asteriscos que se crean*)
        begin
            write(ASTERISCOS);
        end;
        writeln();
        read(cantAsterisco); (*Para avanzar al siguiente valor*)
    end;
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar n enteros positivos, todos
menores que 60 y produzca una gr ́afica de n barras horizontales formadas por asteriscos
(similar a la que se muestra en el ejemplo). La k-esima barra debera tener tantos asteriscos
como indique el k-esimo entero (de entre los n enteros ingresados). Su programa no necesita
controlar que los enteros ingresados sean menores que 60 (asuma que ası sera). Incluya
mensajes de salida con etiquetas descriptivas para solicitar y exhibir los valores.*)