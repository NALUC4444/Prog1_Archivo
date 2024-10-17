program P9Ej5;

const 
    M = 10; {valor mayor estricto a 1}
    N = 10; {valor mayor estricto a M}

type
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;

function indiceSubCadena(cadn : CadenaN; cadm : CadenaM):integer;
var i, indice : integer;
begin
    indice := -1;
    for i := 1 to M do
    if (cadn[i] = cadm[i]) then
        indice := i;
    if (indice <> -1) then
        write('La cadena se encuentra a partir de la posicion: ', indice)
    else
        write('La cadena no se encuentra');
    indiceSubCadena := indice;
end;

{Parte B}
procedure leerCadenaM(var cadenaM : CadenaM);
var 
    letra : char;
    i : integer;
begin
    write('Escribe ', M, ' caracteres a continuacion: ');
    for i := 1 to M do
    begin
        read(letra);
        cadenaM[i] := letra;
    end;
end;

procedure leerCadenaN(var cadenaN : CadenaN);
var 
    letra : char;
    i : integer;
begin
    write('Escribe ', N, ' caracteres a continuacion: ');
    for i := 1 to M do
    begin
        read(letra);
        cadenaN[i] := letra;
    end;
end;

{Programa principal}
var
    cadena1 : CadenaM;
    cadena2 : CadenaN;

begin
    leerCadenaM(cadena1);
    leerCadenaM(cadena2);
    {Lo anterior para cargar los dos arrays}
    indiceSubCadena(cadena1, cadena2);
end.

{Letra Ejercicio:
(a) Escriba una funcion llamada indiceSubCadena que dadas dos cadenas (de largo M y N respectivamente)
determine si la primera cadena ocurre al menos una vez como parte de la segunda cadena. En caso
afirmativo, se devuelve la posicion (ındice) en que comienza la primera coincidencia. En caso contrario,
se devuelve 0.
(b) Escriba dos procedimientos llamados leerCadenaM y leerCadenaN que carguen una cadena de largo M
y N respectivamente con caracteres leıdos desde la entrada.
(c) Escriba un programa principal que lea dos cadenas de largo M y N y despliegue si la primer cadena ocurre
como parte de la segunda. Si la cadena ocurre, se debe mostrar la posici ́on de la primera coincidencia.}