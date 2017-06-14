var
  n, p, q, c, i, a: integer;
  i1, a1: real;

begin
  readln(n, p, q);
  for i := 1 to 50 do
  begin
    i1 := i;
    for a := 1 to n-1 do
    begin
      a1 := a;
      if (i1 / a1) > 1 / p then if (i1 / a1) < 1 / q then writeln(i1, '/', a1);
    end;
  end;
  readln();
end.