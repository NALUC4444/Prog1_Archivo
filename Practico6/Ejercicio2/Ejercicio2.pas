program P6Ej2;

const
    CENTINELA = '.';
    ESPACIO = ' ';

var
    letra, Lectura, LecturaAnterior : char;
    Anterior, letraActual : char; (*Para la parte b*)
    repeticion, fraseInicio, cantPalabras : integer; (*fraseInicio para la parte b*)
    Unico : boolean;

begin
    write('Ingrese la letra a buscar: ');
    readln(letra);
    write('Ingrese la oracion: ');
    read(Lectura); (*Para el primer caracter*)
    repeticion := 0; (*No debemos asumir que se encuentra la letra*)
    fraseInicio := 0;
    Anterior := Lectura;
    Unico := true;
    cantPalabras := 0; (*Para la parte c del ejercicio*)
    while (Lectura <> CENTINELA) do
    begin
        LecturaAnterior := Lectura; (*Para avanzar*)
        read(Lectura);
        letraActual := Lectura;
        if (LecturaAnterior = letra) and (Lectura = ESPACIO) or (Lectura = CENTINELA) then
            repeticion := repeticion + 1;
        (*Empieza la parte b:*)
        if (Anterior = ESPACIO) and (letraActual = letra) then
            fraseInicio := fraseInicio + 1;
        (*Empieza la parte c:*)
        LecturaAnterior := Lectura;
        (*Para avanzar en la oracion*)
        if (Lectura = LecturaAnterior) then
            Unico := false (*Significa que estaria dos veces en la misma palabra*)
        else if (Lectura = ESPACIO) then
            Unico := true (*Para que vuelva a estar lista para la siguiente oracion*)
        else if ((Lectura <> ESPACIO) or (Lectura = CENTINELA)) and (Unico) and (Lectura = letra) then
            cantPalabras := cantPalabras + 1;
        Anterior := Lectura (*Esto es para que se guarde la letra anterior*)
    end;
    writeln('La oracion tiene ', repeticion, ' palabras que terminan con ', letra);
    writeln('La cantidad de palabras que empiezan por ', letra, ' son: ', fraseInicio);
    writeln(cantPalabras, ' veces que las palabras tienen solo una vez la letra: ', letra);
end.

(*Letra ejercicio:
(a) Escriba un programa que lea una letra y una oracion y 
despliegue la cantidad depalabras de la oracion
que terminan con la letra dada. Se asume que la oracion es una secuencia de palabras separadas solo
por espacios, y que terminan con el car ́acter punto (.). La oracion siempre tiene al menos una palabra.

(b) Escriba un programa que despliegue la cantidad de palabras que comienzan con la letra leida

(c) Escriba un programa que despliegue la cantidad de palabras que contienen la letra una sola vez.*)