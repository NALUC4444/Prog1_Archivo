program P10Ej6;

type
    TipoMes = (
        Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, 
        Agosto, Septiembre, Octubre, Noviembre, Diciembre
    ); {Parte A}
    TipoMesRango = (1..12); {Parte C}

procedure Mes(tM : TipoMes); {Parte B}
begin
    write('Escoge un mes: ');
    readln(tM);
    write('El mes seleccionado es: ', tM);
end;

procedure PasarNumeroMes(tMR : TipoMesRango);
var mes : TipoMes;
begin
    mes := TipoMes(tMR);
    write('El mes seleccionado es: ', mes);
end;

{Programa Principal}
var numero : TipoMesRango;
begin
    write('Ingrese un mes del 1 al 12: ');
    readln(numero);
    PasarNumeroMes(numero);
end.

{Letra Ejercicio:
(a) Defina el tipo enumerado TipoMes que represente los meses del anio.

(b) Escriba un procedimiento que reciba un parametro de entrada del tipo TipoMes e imprima el nombre
completo del mes correspondiente.

(c) Defina un tipo subrango de los enteros TipoMesRango que represente los meses del anio (entre 1 y 12).

(d) Escriba un procedimiento que lea de la entrada un mes representado por el n ́umero (entre 1 y 12) y
retorne en un parametro de salida una variable de tipo TipoMes.}