program P4Ej11;

var
 i, m, n, maximo : integer;
 anteriorValor, nuevoValor : integer;

begin 
 write('Ingrese m: ');
 readln(m);
 write('Ingrede n: ');
 readln(n);
 if (m > n) then
  writeln('Valores invalidos...')
 else (*Cierra el if*)
  begin
   maximo := m;
   for i := m to n do
    begin
     anteriorValor := sqr(i-1) - (18*(i-1)) + 5;
     nuevoValor := sqr(i) - (18*i) + 5;
     if (anteriorValor <=  nuevoValor) then
      maximo := nuevoValor;
    end;
   writeln('El valor maximo para x en el entorno', m, ' a ', n, ' es: ', maximo);
   end; (*Cierra begin del else*)
end.