program B;

var
  n, p, q, i, l: integer;

begin
  readln(n, p, q);
  for i := 2 to (n - 1) do
  begin
    for l := 1 to (i - 1) do
      if ((q * i) < (p * q * l)) and ((p * q * l) < (p * i)) and (l mod i <> 0) then
        writeln(l, '/', i);
  end;  
end.