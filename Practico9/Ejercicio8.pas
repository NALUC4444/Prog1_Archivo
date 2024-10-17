program P9Ej8;

const
    N = 10; {valor mayor estricto a 1}

type
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;

{Parte A}
procedure leerArreglo(VAR a:Digitos);
var 
    i : integer;
    digito : char;
begin
    write('Introduce ', N, ' digitos (valores 1 al 9): ');
    for i := 1 to N do
    begin
        read(digito); 
        a[i] := digito;
    end;
end;

{Parte B}
function conversion(a:Digitos) : integer;
var 
    i, numeros : integer;
    dg : char; {Para guardar los valores}
begin
    for i := 1 to N do {Recorrer el array}
    begin
        dg := a[i];
        case dg of
            '1' : numeros := 1;
            '2' : numeros := 2;
            '3' : numeros := 3;
            '4' : numeros := 4;
            '5' : numeros := 5;
            '6' : numeros := 6;
            '7' : numeros := 7;
            '8' : numeros := 8;
            '9' : numeros := 9;
        end;
        write(numeros); {Para mostrar los valores}
    end;
    conversion := numeros;
end;

{Programa principal (PARTE C)}
var digitoArray : Digitos;
begin
    leerArreglo(digitoArray);
    conversion(digitoArray);
end.

{Letra Ejercicio:

(a) Escriba el procedimiento que cargue un arreglo de dıgitos con valores leıdos desde
la entrada.

(b) Escriba la funcion llamada conversion que, dado un arreglo de dıgitos, convierta la secuencia de dıgitos
al entero equivalente. Por ejemplo, si N=5 y el arreglo es ['0','0','1','2','3'], entonces el entero
resultante sera 123.

(c) Escriba un programa principal que lea un arreglo de dıgitos (usando parte (a)) e imprima el entero
equivalente (usando parte b).}