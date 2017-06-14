type
  dr = record
    u: integer;
    d: integer;
    r: real;
  end;

var
  k1, k, i, j, n, p, q, f: integer;
  min, min1: real;
  a: array [1..100000] of dr;

begin
  read(n, p, q);
  k := 1;
  for i := 1 to n do
    for j := 1 to n do
      if ((i / j) > (1 / p)) and ((i / j) < (1 / q)) then
      begin
        a[k].u := i;
        a[k].d := j;
        a[k].r := (i / j);
        k := k + 1;
      end;
  min1 := a[1].r;
  min := a[1].r;
  for i := 1 to 100000 do
    if (a[i].r < min1) and (a[i].r <> 0) then min := a[i].r;
  f := 0;for i := 1 to 10000 do if a[i].r <> 0 then f := f + 1;
  k1:=0;
  for j := 1 to f do
  begin
    min := 1;
    for i := 1 to f do
    begin
      if (a[i].r < min) and (a[i].r <> 0) then 
      begin
        min := a[i].r;
        k := i;
      end;
    end;
    for i := k + 1 to 10000 do
      if a[i].r = min then a[i].r := 1;
    if (k1<>k) then writeln(a[k].u, '/', a[k].d);
    a[k].r := 1;
    k1:=k;
  end;
end.