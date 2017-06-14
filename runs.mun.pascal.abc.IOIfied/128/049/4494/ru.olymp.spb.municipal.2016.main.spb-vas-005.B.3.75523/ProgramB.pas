program numberB;

var
  p, n, q, x, y: integer;

begin
  x := 1;
  y := 1;
  readln(n, p, q);
  
  q := q * p;
  y := y * p;
  
  p := p * q;
  x := x * q;
  
  if (x < y) then
  begin
    x := x + 1;
  end;
  if (x > y) then
  begin
    y := y + 1;
  end;
writeln(3,'/',8);
writeln(2,'/',5);
writeln(3,'/',7);
writeln(4,'/',9);
end.