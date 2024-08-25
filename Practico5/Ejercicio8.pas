program P5Ej8;

CONST
    CENTINELA = '=';

var
    valor1, valor2, resultado : real;
    lectura : char;

begin
    write('Ingrese la operacion: ');
    read(lectura);
    valor1 := 0; (*Inicializar las variables*)
    resultado := valor1;
    while (lectura <> CENTINELA) do
    begin
        writeln('Lo leido es: ', lectura);
        if (lectura <> '+') then
            if (lectura <> '-') then
                if (lectura <> '/') then
                    if (lectura <> '*') then
                    begin
                        valor2 := resultado;
                        valor1 := ord(lectura) - ord('0');
                    end
                    else (*Cierra if de multiplicacion*)
                        resultado := valor1 * valor2
                else (*Cierra if de division*)
                    resultado := valor1 / valor2
            else (*Cierra if de resta*)
                resultado := valor1 - valor2
        else (*Cierra if de suma*)
            resultado := valor1 + valor2;
        writeln('El valor1 es: ', valor1:7:2);
        writeln('El valor2 es: ', valor2:7:2);
        read(lectura); (*Avanzar en la seccion luego del analisis*)
    end;
    writeln('El resultado de la operacion es: ', resultado:7:2);
    readln();
end.

(*Letra ejercicio:
Se desea implementar un programa que realice las funciones de una calculadora simple. Los
datos de entrada son una secuencia de enteros sin signo y los operadores +, *, / y -, seguida
de un signo =. Cada entero de la entrada est ́a seguido por un operador salvo el  ́ultimo que
est ́a seguido por el sımbolo =. Los operadores se aplican en el orden en que aparecen sin
importar la precedencia. Si bien se ingresa el operador de la division con el sımbolo /, el
comportamiento debe ser el de DIV. Asuma que se ingresa al menos un n ́umero.
(a) Escriba un programa en Pascal que resuelva lo pedido, suponiendo que no hay espacios
en la entrada.

(b)*)