program qq;

var
  n, p, q, i, j: integer;


begin
  readln(n, p, q);
  for i := n downto 2 do 
  begin
    for j := 1 to n - 1 do 
    begin
      if (j / i > 1 / p) and (j / i < 1 / q) then 
        if ((i mod 2 <> 0) or (j mod 2 <> 0)) and ((i mod 3 <> 0) or (j mod 3 <> 0)) and ((i mod 5 <> 0) or (j mod 5 <> 0)) and ((i mod 7 <> 0) or (j mod 7 <> 0)) and ((i mod 10 <> 0) or (j mod 10 <> 0)) then
          writeln(j, '/', i);
    end;
  end;
end.