program P5Ej5;

CONST
    CENTINELA = 'X';

var
    Opcion : char;
    saldoFinal, saldoInicial, depositar, retirar : real;

begin
    write('Ingrese su saldo inicial: ');
    readln(saldoInicial);
    writeln('Escriba "D" para deposito y "r" para retiro, "X" para finalizar: ');
    readln(Opcion);
    saldoFinal := saldoInicial;
    while(Opcion <> CENTINELA) do 
    begin
        if (Opcion = 'D') then
        begin
            write('Cuanto desea depositar: ');
            readln(depositar);
            saldoFinal := saldoInicial + depositar;
            writeln('El saldo final es: ', saldoFinal:7:2);
        end;
        if (Opcion = 'R') then
        begin
            write('Cuanto desea retirar: ');
            readln(retirar);
            saldoFinal := saldoInicial - retirar;
            writeln('El saldo final es: ', saldoFinal:7:2);
        end;
        writeln('Escriba "D" para deposito y "r" para retiro, "X" para finalizar: ');
        readln(Opcion);
        saldoInicial := saldoFinal;
    end;
    writeln('El saldo final es: ', saldoFinal:7:2);
end.

(*Letra Ejercicio:
Se desea implementar un programa que calcule el saldo final de una cuenta. Suponga que
los datos son leıdos de la entrada estandar y que constan de renglones. El primer renglon
contiene el saldo inicial de la cuenta. Los siguientes renglones contienen una letra y un valor
real para indicar las transacciones (posiblemente ninguna). La letra puede ser la D para
efectuar un dep ́osito o la R para efectuar un retiro. El ultimo rengl ́on contiene unicamente la
letra X. Escriba un programa en Pascal que determine el saldo exacto de la cuenta despu ́es
de procesar las transacciones. Incluya mensajes de salida con etiquetas descriptivas para
exhibir los valores.*)

(*Letra Ejercicio:
Se desea implementar un programa que calcule el saldo final de una cuenta. Suponga que
los datos son leıdos de la entrada estandar y que constan de renglones. El primer renglon
contiene el saldo inicial de la cuenta. Los siguientes renglones contienen una letra y un valor
real para indicar las transacciones (posiblemente ninguna). La letra puede ser la D para
efectuar un dep ́osito o la R para efectuar un retiro. El ultimo rengl ́on contiene unicamente la
letra X. Escriba un programa en Pascal que determine el saldo exacto de la cuenta despu ́es
de procesar las transacciones. Incluya mensajes de salida con etiquetas descriptivas para
exhibir los valores.*)