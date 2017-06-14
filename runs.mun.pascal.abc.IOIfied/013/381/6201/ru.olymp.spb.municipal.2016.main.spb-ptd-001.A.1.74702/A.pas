program prgA;

var
  i, k: integer;

begin
  readln(k);
  
  i := 0;
  while (k mod 10) = 0 do k := k div 10;
  while k > 0 do
  begin
    if k mod 10 = 0 then i := i + 1;
    k := k div 10;
  end;
  
  writeln(i);
end.