program principal;

{ Con esta directiva queda incluido el archivo definiciones.pas }
{$INCLUDE definiciones.pas}

{ Con esta directiva queda incluido el archivo tarea1.pas }
{$INCLUDE tarea1.pas}

var 
	clave : integer;
	accion : char;
	
begin
	write('Ingrese la clave: ');
	readln(clave);
	write('Ingrese la letra "C" para cifrar o "D" para descifrar: ');
	readln(accion);	
	write('Ingrese el mensaje que desea procesar seguido de un punto ("."): ');
	procesarMensaje(clave, accion);
end.
