program P3Ej10;

CONST
    Precio = 77;
    Extra = 56;

var kilogramo, costo : real;

begin
    write('Ingrese peso del paquete: ');
    readln(kilogramo);
    if (kilogramo <= 1.00) then (*Caso 1*)
        begin
            costo := Precio;
            writeln('Peso - Costo');
            writeln(kilogramo:7:2, costo:7:2);
            writeln('Entre al caso 1');
        end;
    if (kilogramo > 1.00) and (round(kilogramo) < 3.00) then (*Caso 2*)
        begin
            costo := Precio + Extra;
            writeln('Peso - Costo');
            writeln(kilogramo:7:2, costo:7:2);
            writeln('Entre al caso 2');
        end;
    if (kilogramo = 3.00) then (*Caso 3*)
        begin
            costo := Precio + (Extra * 2);
            writeln('Peso - Costo');
            writeln(kilogramo:7:2, costo:7:2);
            writeln('Entre al caso 3');
        end;
    if (kilogramo > 3.00) then (*Caso 4*)
        begin
            costo := Precio + (Extra * round(kilogramo));
            writeln('Peso - Costo');
            writeln(kilogramo:7:2, costo:7:2);
            writeln('Entre al caso 4');
        end;
    writeln(kilogramo:7:2);
    (*4 casos: 
    1: Kilogramo = 1 => $77
    2: kilogramo < 3 y kilogramo > 1 => $77 + 56
    3: kilogramo = 3 => $77 + (56*2)
    4: kilogramo > 1 => $77 + (56 * round(Kilogramo))*)
end.

(*De todos los casos falla el caso de ingresar 3.00 gramos*)

(*Letra Ejercicio:
El costo de enviar por correo un paquete es:

-$77 para paquetes que pesan hasta un kilogramo (inclusive)
-$77 mas $56 por kilogramo adicional o fraccion para paquetes que pesan mas de un
kilogramo.

Escriba un programa en Pascal que, dado el peso de un paquete como un numero real de
kilogramos (leido de la entrada est ́andar), exhiba en la salida estandar el peso junto al costo
de enviar el mismo, segun se muestra en los siguientes ejemplos. Incluya mensajes de salida
con etiquetas descriptivas para los valores exhibidos.*)