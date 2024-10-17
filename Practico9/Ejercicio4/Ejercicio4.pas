program P9Ej4;

type
    TipoMatriz = array[1..10 , 1..10] of integer; {Parte a}
    arrayAux = array[1..10] of integer;

{$INCLUDE Ejercicio4b.pas} {Para agregar la parte B}

{$INCLUDE Ejercicio4c.pas} {Para agregar la parte C}


{Programa Principal}
var 
    fila1, fila2 : integer;
    cadenaValores : TipoMatriz;

begin
    cargarArray(cadenaValores); {Para empezar a cargar los valores}
    write('Ingresa primera fila a cambiar: ');
    readln(fila1);
    write('Ingresa segunda fila a cambiar: ');
    readln(fila2);
    if ((fila1 <= 10) or (fila2 <= 10)) and ((fila1 > 0) or (fila2 > 0)) then
        Invertir(fila1, fila2, cadenaValores)
    else
    begin
        if (fila1 > 10) then
            writeln(fila1, ' Debe ser menor a 10 y mayor a 0')
        else
            writeln(fila2, ' Debe ser menor a 10 y mayor a 0')
    end;
end.


{Letra ejercicio:
(a) Defina un tipo TipoMatriz (arreglo bidimensional) de enteros de diez filas y diez columnas

(d) Escriba un programa principal que lea de la entrada una matriz (usando la parte b) y dos valores m y
n y despliegue el resultado de intercambiar las filas m y n (usando la parte c). En caso de que m y/o n
no correspondan a n ́umeros de fila v ́alidos, se debe emitir un mensaje de error.}