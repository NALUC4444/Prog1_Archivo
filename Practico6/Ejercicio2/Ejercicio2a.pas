program P6Ej2a;

const
    CENTINELA = '.';
    ESPACIO = ' ';

var
    letra, Lectura, LecturaAnterior : char;
    repeticion, fraseInicio : integer;

begin
    write('Ingrese la letra a buscar: ');
    readln(letra);
    write('Ingrese la oracion: ');
    read(Lectura); (*Para el primer caracter*)
    repeticion := 0; (*No debemos asumir que se encuentra la letra*)
    while (Lectura <> CENTINELA) do
    begin
        LecturaAnterior := Lectura; (*Para avanzar*)
        read(Lectura);
        if (LecturaAnterior = letra) and (Lectura = ESPACIO) or (Lectura = CENTINELA) then
            repeticion := repeticion + 1;
    end;
    writeln('La oracion tiene ', repeticion, ' palabras que terminan con ', letra);
end.

(*Letra parte a:
(a) Escriba un programa que lea una letra y una oracion y 
despliegue la cantidad depalabras de la oracion
que terminan con la letra dada. Se asume que la oracion es una secuencia de palabras separadas solo
por espacios, y que terminan con el car ́acter punto (.). La oracion siempre tiene al menos una palabra.*)