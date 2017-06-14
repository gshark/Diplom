var
  k, x, c, d: longword;

begin
  writeln('¬ведите k');
  readln(k);
  c := k;
  x := 0;
  d := 0;
  while x = 0 do 
  begin
    x := c mod 10;
    if x = 0 then c := c div 10;
  end;
  while c > 0 do 
  begin
    x := c mod 10;
    if x = 0 then
      d := d + 1;
    c := c div 10;
  end;
  writeln(d);
  readln;
end.