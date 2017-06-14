program numberB;

var
  p, f, q, x, y: integer;

begin
  x := 1;
  y := 1;
  readln(p, f, q);
  
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