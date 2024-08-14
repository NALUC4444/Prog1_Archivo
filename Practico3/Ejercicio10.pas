program P3Ej10;

CONST
    Precio = 77;
    Extra = 56;

var kilogramo : real;

begin
    write('Ingrese peso del paquete: ');
    readln(kilogramo);
    (*3 casos: 
    1: Kilogramo = 1 => $77
    2: kilogramo > 1 => $77 * 56*)
end.

(*Letra Ejercicio:
El costo de enviar por correo un paquete es:

-$77 para paquetes que pesan hasta un kilogramo (inclusive)
-$77 mas $56 por kilogramo adicional o fraccion para paquetes que pesan mas de un
kilogramo.

Escriba un programa en Pascal que, dado el peso de un paquete como un numero real de
kilogramos (leido de la entrada est ́andar), exhiba en la salida estandar el peso junto al costo
de enviar el mismo, segun se muestra en los siguientes ejemplos. Incluya mensajes de salida
con etiquetas descriptivas para los valores exhibidos.*)