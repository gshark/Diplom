var f, p, q: real;
    i, n: integer;
 
begin

readln(n, p, q);

i := 1;
f := 0;

  for i := 1 to n do
  begin
    if (f > 1/p) and (f < 1/q) then
      writeln(f)
    else f := f + 1/q;
  end;

end.