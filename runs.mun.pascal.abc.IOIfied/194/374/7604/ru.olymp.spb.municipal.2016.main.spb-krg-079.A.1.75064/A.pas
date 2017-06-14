program nilover;

var
  a: int64;
  i, n: integer;

begin
  read(a);
  n := 0;
  while a mod 10 = 0 do
    a := a div 10;
  repeat
    if a mod 10 = 0 then
      n := n + 1;
    a := a div 10;
  until a = 0;
  writeln(n);
end.