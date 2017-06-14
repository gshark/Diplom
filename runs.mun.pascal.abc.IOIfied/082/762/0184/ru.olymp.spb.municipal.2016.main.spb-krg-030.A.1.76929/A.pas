program name;
var n, k :integer;
begin
  readln(n);
  k := 0;
  while n mod 10 = 0 do
    n := n div 10;
  n := n div 10;
  while n > 9 do
  begin
    if n mod 10 = 0 then
      k := k + 1;
    n := n div 10;
  end;
  writeln(k);
end.