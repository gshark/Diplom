var
  f, p, n, q: integer;
  e, k, s: real;

begin
  writeln('n,p,q');
  readln(n, p, q);
  for var i := 1 to n do
    for var j := 1 to (n - 1) do    
    begin
      e := (1 / p);k := (j / i);s := (1 / q);
      if (e < k) and (k < s)
        then
        writeln(j, '/', i);
    end;
end.