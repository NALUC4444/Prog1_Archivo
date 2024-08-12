program P2Ej8;

var
    a, cuadrado, valor1, valorBase : integer;

begin
    write('Ingrese el numero de dos cifras: ');
    readln(a);
    cuadrado := sqr(a);
    valor1 := cuadrado DIV 10; (*Quita la unidad del numero*)
    valorBase := cuadrado DIV 1000; (*Para obtener la unidad en el millar*)
    valorBase := valorBase * 100;
    valor1 := valor1 - valorBase;
    writeln('Numero introducido = ', a);
    writeln('Cuadrado del numero = ', cuadrado);
    writeln('Siguiente numero seudoaleatorio = ', valor1);
end.


(*Un valor a que es el inicial se va a elevar al cuadrado
Una vez se toma la centena y la decena del resultado del cuadrado de a,
El numero formado por la centena y decena dara como resultado el numero seudoaleatorio*)