program P5Ej9;

CONST 
    centinela = 0.0; (*Sera el valor negativo*)

var 
    valor1, a, s, desviacion : real;
    n : integer;
(*n es la cantidad de valores*)

begin
    write('Ingrese lista de valores decimales: ');
    read(valor1);
    n := 1;
    s := 1;
    a := 0;
    if (valor1 < centinela) then (*Caso excepcional*)
        writeln('El valor debe ser mayor a 0')
    else
    begin
        while (valor1 >= centinela) do
        begin
            a := valor1 + a; (*Con esto sumo constantemente*)
            s := sqr(valor1) + s;
            read(valor1); (*Avanzar en la lista*)
            n := n + 1; (*Aumenta la cantidad de valores*)
            (*Ahora calcular s, es la suma de los cuadrados*)
        end;
    end;
    (*Salio del while porque encontro un valor negativo*)
    a := a / n;
    writeln('La n es: ', n);
    writeln('El s es: ', s:7:2);
    writeln('El a es: ', a:7:2);
    (*Programacion de la desviacion:*)
    desviacion := sqrt(s/n-sqr(a));
    writeln('La desviacion es: ', desviacion:7:2);
end.





(*Letra EJercicio
Escriba un programa en Pascal que determine y exhiba la desviacion estandar de n numeros
reales positivos. Los numeros deben ser leıdos de la entrada estandar, donde se ingresara un
numero negativo al final como centinela. La desviacion estandar de un conjunto de numeros
x1, x2, ..., xn se define como la raız cuadrada de la expresion s/n−a^2 donde a es el promedio
de los valores xi ((x1 + x2 + ... + xn)/n) y s es la suma de los cuadrados de los valores xi
(x1^2 + x2^2 + ... + xn^2). 
Incluya mensajes de salida con etiquetas descriptivas para solicitary/o exhibir los valores.*)

(*Valores de prueba: 5.0 7.0 4.0 9.0 10.0 -1.0*)

(*Ejemplo profesores:
25.0 23.0 22.0 21.0 17.0 9.0 6.0 5.0 -1.0
Resultado: 7.60*)