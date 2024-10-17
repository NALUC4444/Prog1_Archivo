program P7Ej9;

function multiplo(m, n: integer): boolean;
var esMultiplo : boolean;
begin
    if (m > 0) or (n > 0) then
    begin
        if (m MOD n = 0) or (n MOD m = 0) then
        begin
            esMultiplo := true;
            writeln('Si');
        end
        else
        begin
            esMultiplo := false;
            writeln('No');
        end;
        multiplo := esMultiplo;
    end
end;

var valor1, valor2 : integer;
begin
    valor1 := 0;
    valor2 := 0;
    while (valor1 <> -1) or (valor2 <> -1) do
    begin
        write('Ingrese pareja de valores: ');
        readln(valor1, valor2);
        multiplo(valor1, valor2);
    end;
end.

(*Letra Ejercicio:
(a)Escriba una funcion llamada multiplo que, dados dos enteros positivos m y n, devuelva true si m es
multiplo de n o si n es multiplo de m. En otro caso contrario, devuelve false.
(b)Escriba un programa principal, que lea, en una misma lınea, parejas de enteros positivos e invoque a la
funcion multiplo para indicar si uno de los dos numeros es multiplo del otro. La secuencia de numeros
terminar con el valor -1.*)