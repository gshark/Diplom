program b;

var
  f, p, q, c, i, n: integer;
  t: real;

begin
  readln(n, p, q);
  for i := 1 to n do 
    for c := 1 to n do
    begin
      t := i / c;
      if (t > 1 / p) and (t < 1 / q) then   
      begin
        f := c mod i;
        if f <> 1 then
        begin
          if (i mod f <> 0) or (c mod f  <> 0) then 
            writeln(i, '/', c);
        end
        else
          writeln(i, '/', c);
        
      end;
    end;
end.