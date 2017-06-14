begin
  var x, k: integer;
  read(x);
  
  while (x > 0) and (x mod 10 = 0) do
    x := x div 10;
  
  while (x > 0) do
  begin
    if(x mod 10 = 0)
      then inc(k);
    x := x div 10;
  end;
  
  writeln(k);
end.