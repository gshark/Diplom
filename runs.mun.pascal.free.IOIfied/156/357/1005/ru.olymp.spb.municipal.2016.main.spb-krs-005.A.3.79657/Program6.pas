program nomera;

var
  a, k, n: integer;

begin
  read(a);
  k := 0;
  while a >= 1 do
  begin
    n := a mod 100;
    if n < 10 then 
    begin
      k := k + 1;
    end;
    a := a mod 100;
  end;
  write(k);
end.