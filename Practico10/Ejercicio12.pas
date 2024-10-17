program P10Ej12;

const
    CANT_LETRAS = ...; { valor entero mayor a 0 }
    CANT_ARTICULOS = ...; { valor entero mayor a 0 }

type
    TIdioma = (es, en, pt);
    TFecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999 (* La wikipedia comienza en 2001 *)
    end;
    TNombre = array [1..CANT_LETRAS] of char;
    TArticulo = record
        nombre : TNombre;
        idioma : TIdioma;
        visitas : Integer;
        ultima_act : TFecha;
    end;
    Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;

{Parte A}
function esPosterior (f1, f2: TFecha) : boolean
var Postreior : boolean;
begin
    if (f1.anio = f2.anio) then
        Postreior := TRUE
    else
        Postreior := FALSE;
    esPosterior := Postreior;
end;

{Parte B}
procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);


{Letra ejercicio:

(a) Implemente la funcion esPosterior tal que dadas dos fechas f1 y f2, devuelve TRUE si la fecha f1 es
posterior que la fecha f2 y FALSE en caso contrario.

(b) Teniendo en cuenta que cada artıculo tiene la fecha de su ultima actualizacion, implemente el procedi-
miento articuloMasReciente tal que dados la wikipedia y un idioma, devuelve el artıculo que tiene
la fecha mas reciente en el idioma especificado. Asuma que en la wikipedia hay al menos un artıculo
en el idioma especificado.

(c) Implemente el procedimiento imprimirArticulosMasRecientes tal que para cada idioma imprime el
nombre del art ́ıculo m ́as reciente en dicho idioma, junto con su cantidad de visitas y la fecha de su
ultima actualizaci ́on. Asuma que en la wikipedia hay al menos hay un articulo en cada uno de los tres
idiomas.}