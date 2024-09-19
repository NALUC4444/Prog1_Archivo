function sustituirLetra (letra : char; desplazamiento : integer): char;
var 
    codificado : char; 
    numerosFaltantes : integer; {Para la cuenta de numeros restantes por sumar}
    esMinuscula : integer; {Para comprobar si es mayuscula o minuscula}
begin
    codificado := letra;
    {Analisis de booleano}
    if (ord(codificado) >= 97) and (ord(codificado) <= 122) then
        esMinuscula := 1
    else if (ord(codificado) <= 90) and (ord(codificado) >= 65) then
        esMinuscula := 0
    else
        esMinuscula := -1;
    {Fin de analisis}
    codificado := chr(ord(letra) + desplazamiento); {Realiza el desplazamiento}
    desplazamiento := desplazamiento - 1; {Porque ya me desplace un lugar}
    if (letra = 'u') then
        codificado := 'c';
    if (letra = 'U') then
        codificado := 'C';

    if (ord(codificado) > 122) and (esMinuscula = 1) then {(Orden de "z"}
    begin
        numerosFaltantes := desplazamiento - 1;
        codificado := chr(ord('a') + numerosFaltantes); {Para que aumente las letras}
    end;

    if (ord(codificado) < 97) and (esMinuscula = 1) then {orden de "a"}
    begin
        numerosFaltantes := desplazamiento + 2;
        codificado := chr(ord('z') + numerosFaltantes );
    end;

    if (ord(codificado) < 65) and (esMinuscula = 0) then {orden de "A"}
    begin
        numerosFaltantes := desplazamiento + 2;
        codificado := chr(ord('Z') + numerosFaltantes ); 
    end;

    if (ord(codificado) > 90) and (esMinuscula = 0) then {orden de "Z"}
    begin
        numerosFaltantes := desplazamiento - 1;
        codificado := chr(ord('A') + numerosFaltantes);
    end;

    if (esMinuscula = -1) then
        codificado := letra;
    write(codificado);
    sustituirLetra := codificado;
end;

procedure procesarMensaje (clave: integer; accion : char);
var
    nuevaLetra : char;
begin
    if (accion = 'C') or (accion = 'c') then
        clave := clave * 1;
    if (accion = 'D') or (accion = 'd') then
        clave := clave * (-1);
    write('Ingrese el mensaje que desea procesar seguido de un punto: ');
    read(nuevaLetra); {Encargada de ir leyendo el mensaje}
    if (clave < 0) then write('El texto descifrado es: ')
    else write('El texto cifrado es: ');
    while (nuevaLetra <> FINALIZADOR) do
    begin
        sustituirLetra(nuevaLetra, clave); {Para ir cifrando o descifrando}
        read(nuevaLetra); {Para ir avanzando en la frase y seguir en el bucle}
    end;
    write('.'); {Asi se escribe el "." al final}
end;