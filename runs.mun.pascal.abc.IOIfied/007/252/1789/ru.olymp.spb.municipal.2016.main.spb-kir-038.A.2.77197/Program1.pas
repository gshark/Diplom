program A;

var
  k, q: integer;
  i: byte;

begin
  read(k);
  repeat
    q := k mod 10;
    k := k div 10;
    
  until (q <> 0) and (k mod 10 = 0);
  repeat
    q := k mod 10;
    k := k div 10;
    if (q = 0) and (k <> 0) then
      i := i + 1;
  until ((q <> 0) or (k = 0)) and (q mod 10 = 0);
  writeln(i);
  
end.