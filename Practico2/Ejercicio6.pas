program P2Ej6;

var 
    valor1, valor2, resultado: integer;

begin
    (*Inicializacion variables*)
    valor1 := 0;
    valor2 := 0;
    (*Fin de inicializacion*)
    write('Ingrese dos valores enteros de cuatro cifras: ');
    readln(valor1, valor2);
    resultado := valor1 + valor2;
    writeln(resultado);
end.


(*Letra ejercicio 6:
Escriba un programa en Pascal que, dados dos enteros de la forma hhmm (ingresados por la
entrada est ́andar), donde hh representa las horas (menos de 24) y mm los minutos (menos
de 60), determine la suma de estos dos tiempos, y exhiba el resultado en la salida est ́andar,
en la forma d hhmm, donde d es d ́ıas (ya sea cero o uno).*)