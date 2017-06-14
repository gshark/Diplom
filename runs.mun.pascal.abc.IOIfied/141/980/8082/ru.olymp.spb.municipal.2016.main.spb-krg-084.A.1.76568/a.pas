var
  n, k, x, p: integer;

begin
  read(n);
  x := n;
  while x > 0 do
  begin
    x := x div 10;
    k := k + 1;
  end;
  while n mod 10 = 0 do
    n := n div 10;
  while n > 0 do
  begin
    if n mod 2 = 0 then 
      p := p + 1;
    n := n div 2;
  end;
  writeln(p);
end.