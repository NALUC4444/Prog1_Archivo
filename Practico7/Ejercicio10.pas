(*Necesito ayuda con algo en un codigo de Pascal, en el siguiente codigo:
program P7Ej10;

procedure multiplicidadFactor(numero, factor : integer; var multiplicidad, residuo : integer); 
begin
    writeln(numero MOD factor);
end;

Programa principal
var
    n, m : integer;

begin
    write('Ingrese el primer numero: ');
    readln(n);
    write('Ingrese el factor: ');
    readln(m);
    multiplicidadFactor(n, m, 0, 0);
end.

Me sale el siguiente error:
"Ejercicio10.pas(17,35) Error: Variable identifier expected"

Y no entiendo que es lo que sale en el error...*)