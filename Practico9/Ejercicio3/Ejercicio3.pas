program P9Ej3;

const
    N = 10; {valor mayor estricto a 1}

type
    CadenaN = array [1..N] of integer;

procedure CargarArray(VAR cadena : CadenaN);
var i, numeros : integer;
begin
    for i := 1 to N do
    begin
        read(numeros);
        cadena[i] := numeros;
    end;
end;

{$INCLUDE Ejercicio3a.pas} {Para agregar la parte A}

{$INCLUDE Ejercicio3b.pas} {Para agregar la parte B}

{$INCLUDE Ejercicio3c.pas} {Para agregar la parte C}

{Programa principal}
var 
    numero : integer; {Para la parte A}
    A : CadenaN;
    valor, posicion : integer; {Para la parte C}

begin
    {Primero cargar el array}
    write('Ingrese serie de numeros: ');
    CargarArray(A);
    {Empieza parte A del ejercicio}
    writeln('Ingrese el valor a buscar mayores: ');
    readln(numero);
    {numero es usado aqui para buscar mayores a ese numero especifico en el array}
    cantMayores(A, numero);
    {Empieza parte B del ejercicio}
    ordenado(A);
    {Empieza parte C del ejercicio}
    posicion := 0;
    valor := 0;
    maxValorPos(A, valor, posicion);
end.