var
  n, p, q, i, i1: integer;

begin
  readln(n, p, q);
  
  for i := 1 to n - 1 do
    for i1 := 1 to n - 2 do
    if (i1 / i > 1 /p)and(i1 / i < 1 / q) then writeln(i1,'/',i);
end.