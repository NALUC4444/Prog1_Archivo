program P6Ej1;

var
    m, n, k, divisorActual, divisorMayor : integer;

begin
    divisorActual := 1;
    divisorMayor :=  divisorActual;
    write('Ingrese m: ');
    readln(m);
    write('Ingrese n: ');
    readln(n);
    if (m < n) then
    begin
        for k := m to n do
            if (k MOD n = 0) and (k MOD m = 0) then
            begin
                divisorActual := k; (*Asi actualizo la variable de divisor*)
                if (k > divisorActual) then 
            end;
    end
    else if (m > n) then
    begin
        
    end;
end.

(*Letra Ejercicio:
Escriba un programa que calcule el MCD (Maximo Comun Divisor) para dos naturales m y n con m ̸= 0.
Se recuerda que el maximo comun divisor se define como:
MCD(m, n) = max{k : k es divisor de m y k es divisor de n}
Se sugiere aplicar el algoritmo de Euclides que se basa en las siguientes igualdades:

MCD(m, 0) = m
MCD(m, n) = MCD(n, m mod n)*)