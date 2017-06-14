var
  n, k, t:longint;
begin
  readln(n);
  k:=0;
  t:=n mod 10;
  while (t=0) and (n>0) do
  begin
   t:=n mod 10;
   n:=n div 10;
  end;
  while (n>0) do
  begin
    t:=n mod 10;
    if t=0 then inc(k);
    n:=n div 10;
  end;
  writeln(k);
end.