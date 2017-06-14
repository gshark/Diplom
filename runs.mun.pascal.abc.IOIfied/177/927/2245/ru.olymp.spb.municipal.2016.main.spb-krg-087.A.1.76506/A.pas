program abc;

var
  k, n: integer;

begin
  readln(k);
  n := 0;
  while (k mod 10) = 0 do 
  begin
    k := k div 10;
  end;
  while k > 0 do
  begin
    if (k mod 10) <> 0 then k := k div 10 else 
    begin
      n := n + 1;
      k := k div 10;
    end;
  end;
  writeln(n);
end.