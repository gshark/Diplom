program qq;

var
  m, k: integer;

begin
  m := 0;
  read(k);
  while k mod 10 = 0 do
    k := k div 10;
  while k >= 1 do 
  begin
    if k mod 10 = 0 then begin
      m := m + 1;
    end;
    k := k div 10;
  end;
  writeln(m);
end.