var
  i, j, n, p, q: integer;
  a: array[1..2, 1..10000]of byte;
  u, c: integer;

begin
  read(n, p, q);
  for i := 1 to n - 1 do
    for j := 1 to n do
      if ((j / i) > (1 / p)) and ((j / i) < (1 / q)) then 
      begin
        u := u + 1;
        a[1, u] := j;
        a[2, u] := i; 
      end;
  for i := 1 to u  do
    for j := 1 to u do
      if (a[1, i] / a[2, i]) > (a[1, j] / a[2, j])
      then begin
        c := a[1, i];a[1, i] := a[1, j];a[1, j] := c;
        c := a[2, i];a[2, i] := a[2, j];a[2, j] := c;
      end;
  for i := u downto 1 do writeln(a[1, i], '/', a[2, i]);
end.