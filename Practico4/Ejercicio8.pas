program P4Ej8;

var
    n, i, i2 : integer;
    c : char;

begin
    write('Ingrese un caracter c: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);
    for i2 := n downto 1 do
    begin
        for i := n downto 1 do (*Debe recorrer desde n hasta 0*)
            write(c);
        n := n - 1;
        writeln();
    end;
end.

(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un caracter c y un natural n.
El programa debe desplegar un triangulo de n lıneas formado por el caracter c (similar al
que se muestra en el ejemplo). La primera lınea debe tener n ocurrencias de c. La segunda
lınea debe tener n-1 ocurrencias de c (y ası sucesivamente). La ultima lınea debe tener
1 ocurrencia de c. Incluya mensajes de salida con etiquetas descriptivas para solicitar y
exhibir los valores.*)