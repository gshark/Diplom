program B;

var
  i, n, n2, p, q: integer;

begin
  read(n);
  read(p);
  read(q);
  for i := 1 to n do
  begin
    for n2 := 1 to n - 1 do
    begin
      if (i / n2 > 1 / p) and (i / n2 < 1 / q) then
        writeln(i, '/', n2);
    end;
  end;
end.