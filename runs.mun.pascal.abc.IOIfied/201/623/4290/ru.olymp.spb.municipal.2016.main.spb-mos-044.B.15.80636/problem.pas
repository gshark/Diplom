var
  i, j, z: integer;
  a: array[1..2, 1..2000]of byte;
  u, c: integer;
  r: boolean;
  n, p, q: byte;

begin
  read(n, p, q);
  for i := 1 to n  do
    for j := 1 to n do
      if ((j / i) > (1 / p)) and ((j / i) < (1 / q)) then
      begin
        r := TRUE;z:=2;
        if u > 0 then while (z<=j)and r do begin if ((j mod z) = 0) and ((i mod z) = 0) then r := false;z:=z+1;end;
        if r then begin
          u := u + 1;
          a[1, u] := j;
          a[2, u] := i; 
        end;
      end;
  for i := 1 to u  do
    for j := 1 to i do
      if (a[1, i] * a[2, j]) > (a[1, j] * a[2, i])
      then
      begin
        c := a[1, i];a[1, i] := a[1, j];a[1, j] := c;
        c := a[2, i];a[2, i] := a[2, j];a[2, j] := c;
      end;
  for i := u downto 1 do writeln(a[1, i], '/', a[2, i]);
end.