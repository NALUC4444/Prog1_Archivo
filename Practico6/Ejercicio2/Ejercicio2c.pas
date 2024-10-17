program P6Ej2c;

const
    CENTINELA = '.';
    ESPACIO = ' ';

var
    letra, Lectura, LecturaAnterior : char;
    Unico : boolean;
    cantPalabras : integer;

begin
    write('Ingrese la letra para buscar: ');
    readln(letra);
    write('Escriba la oracion: ');
    read(Lectura);
    cantPalabras := 0;
    Unico := true; (*Podemos asumir que sera unica*)
    while (Lectura <> CENTINELA) do 
    begin
        LecturaAnterior := Lectura;
        read(Lectura); (*Para avanzar en la oracion*)
        if (Lectura = LecturaAnterior) then
            Unico := false (*Significa que estaria dos veces en la misma palabra*)
        else if (Lectura = ESPACIO) then
            Unico := true (*Para que vuelva a estar lista para la siguiente oracion*)
        else if ((Lectura <> ESPACIO) or (Lectura = CENTINELA)) and (Unico) and (Lectura = letra) then
            cantPalabras := cantPalabras + 1;
    end;
    writeln(cantPalabras, ' veces que las palabras tienen solo una vez la letra: ', letra);
end.

(*Letra Ejercicio:
(c) Escriba un programa que despliegue la cantidad de palabras que contienen la letra una sola vez.*)