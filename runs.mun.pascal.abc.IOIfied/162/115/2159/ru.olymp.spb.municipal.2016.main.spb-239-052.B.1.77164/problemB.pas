var
  a: array[1..10001] of integer;
  b: array[1..10001] of integer;
  c, d, e: real;
  n, p, q, i, j, g, l,k, m: integer;

begin
  g := 0;
  read(n, p, q);
  c := 1 / q;
  d := 1 / p;
  for i := 1 to n do 
  begin
    for j := 1 to i do
    begin
      e := j / i;
      if (d < e) and (e < c) then
      begin
        k := 0;
        for l := 1 to g do
        begin
          if ((b[l] / a[l]) = j / i) then
            k := 1;
        end;
        if (k = 0) then
        begin
          g := g + 1;
          a[g] := i;
          b[g] := j;
        end;
      end;
    end;
  end;
  while (g > 0) do
  begin
    m := 1;
    for i := 2 to g  do
      if ((b[i] / a[i]) < (b[m] / a[m])) then
        m := i;
    writeln(b[m], '/', a[m]);
    for i := m to g - 1 do begin
      a[i] := a[i + 1];
      b[i] := b[i + 1];
    end;
    g := g - 1;
  end;
end.