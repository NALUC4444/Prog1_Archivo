program P5Ej6;

CONST
    CENTINELA = '$';

var
    letraActual, letraAnterior : char;

begin
    write('Ingrese la frase a continuacion: ');
    read(letraActual);
    letraAnterior := ' ';
    write('Las consonantes y vocales duplicadas son: ');
    while (letraActual <> '$') do 
    begin
        if (letraActual = letraAnterior) then (*La primera letra no se cumplira*)
            write(letraActual, letraAnterior, ' . ');
        letraAnterior := letraActual; (*Para guardar la primera letra leida*)
        read(letraActual); (*Avanzar en la frase*)
    end;
end.

(*Letra Ejercicio:
Dado un fragmento de texto que debe ser le ́ıdo de la entrada estandar, todo en una lınea,
y terminado por el caracter $ (centinela), escriba un programa en Pascal que determine
y exhiba las consonantes y vocales que aparecen duplicadas en forma contigua. Asuma
que todas las letras ingresadas son minusculas. Incluya mensajes de salida con etiquetas
descriptivas para solicitar y exhibir los valores.*)