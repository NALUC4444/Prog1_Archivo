program P6Ej2b;

CONST 
    CENTINELA = '.';
    ESPACIO = ' ';

var 
    letra, Lectura, LecturaAnterior : char;
    fraseInicio : integer;

begin
    write('Ingrese la letra a buscar: ');
    readln(letra);
    write('Ingrese la oracion: ');
    read(Lectura);
    fraseInicio := 0;
    while (Lectura <> CENTINELA) do 
    begin
        LecturaAnterior := Lectura;
        read(Lectura);
        if (LecturaAnterior = ESPACIO) and (Lectura = letra) then
            fraseInicio := fraseInicio + 1;
    end;
    writeln('La cantidad de palabras que empiezan por ', letra, ' son: ', fraseInicio);
end.

