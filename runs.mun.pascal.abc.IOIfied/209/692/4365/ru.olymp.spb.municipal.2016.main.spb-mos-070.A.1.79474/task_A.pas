program taskA;

var
  k, n, i, z, a: int64;

begin
  readln(k);
  z := 1;
  a := 0;
  for i := 0 to 8 do begin
    n := (k mod round(power(10, (i + 1)))) - (k mod round(power(10, i)));
    if n <> 0 then
      z := 0;
    if ((n = 0) and (z = 0)) and (round(power(10, (i + 1))) <= k) then
      a := a + 1;
  end;
  writeln(a);
end.