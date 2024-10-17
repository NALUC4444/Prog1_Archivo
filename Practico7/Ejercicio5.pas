program P7Ej5;

var valor1, valor2, valor3 : integer;

procedure Corrimiento(var a, b, c : integer);
begin
    writeln('El corrimiento es: ', c, a, b);
end;

begin
    write('Ingrese los tres valores enteros: ');
    readln(valor1, valor2, valor3);
    Corrimiento(valor1, valor2, valor3); (*Para llamar la funcion*)
end.

(*Letra Ejercicio:
(a) Escriba un procedimiento llamado corrimiento con tres parametros enteros: a, b y c. El procedimiento
debe hacer un corrimiento a la derecha de los valores de los parametros de manera que, despues de la
invocacion, el valor que originalmente estaba en a quede en b, el que estaba en b quede en c y el que
estaba en c quede en a.
(b) Escriba un programa principal que lea tres valores y exhiba el resultado de invocar al procedimiento
corrimiento.*)