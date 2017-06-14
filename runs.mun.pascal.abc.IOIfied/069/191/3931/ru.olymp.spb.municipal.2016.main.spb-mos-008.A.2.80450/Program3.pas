program one;

var
  n, i, q, x, m: integer;
  k: longint;
  a: array[1..100] of integer;

begin
  readln(k);
  i := 1;
  x := 10;
  for m := 1 to 9 do 
  begin
    if (k mod x = 0) then 
      k := k div x;
  end;
  while k >= 10 do 
  begin
    a[i] := k mod 10;
    k := k div 10;
    i := i + 1;
  end;
  a[i] := k;
  for n := 1 to i do 
    if a[n] = 0 then inc(q);
  writeln(q);
end.