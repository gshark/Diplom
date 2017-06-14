var
  i, k: integer;

begin
  readln(k);
  while (k mod 10 <> 1) do begin
    i := 0;
    while(k mod 10 > 0) do k := k div 10;
    while(k mod 10 = 0) do 
    begin
      k := k div 10;
      Inc(i);
    end;
  end;
  writeln(i);
end.