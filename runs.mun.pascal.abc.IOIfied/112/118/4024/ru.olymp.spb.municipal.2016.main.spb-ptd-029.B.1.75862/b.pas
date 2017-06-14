program zadacha_b;

var
  n, p, q, i, j: integer;

begin
  read(n, p, q);
  
  
  for i := 1 to n - 1 do
  begin
    for j := 1 to i do
    begin
      if ((i mod j) <> 0) and (j / i > 1 / p) and (j / i < 1 / q) and ((j mod i) <> 0) then writeln(j, '/', i);
    end;
  end;
end.