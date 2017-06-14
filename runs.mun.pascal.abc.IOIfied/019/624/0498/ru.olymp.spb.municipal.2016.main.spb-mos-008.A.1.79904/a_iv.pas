program one;

var
  n, i, q, m, s: integer;
  k: longint;
  a: array[1..100] of integer;

begin
  readln(k);
  i := 1;
  q := 0;
  while k >= 10 do 
  begin
    a[i] := k mod 10;
    k := k div 10;
    i := i + 1;
  end;
  a[i] := k;
  for n := i downto 1 do 
  begin
    if (a[n] <> 0) and (a[n - 1] = 0) then m := n;
  end;
  for s := m to i do 
    if a[s] = 0 then inc(q);
  writeln(q);
  
end.