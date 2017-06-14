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
    writeln(x,'/',q*p);
  end;
  if (x > y) then
  begin
    y := y + 1;
    writeln(y,'/',q*p);
  end;
  if(x = y) then
    writeln(' ');
end.