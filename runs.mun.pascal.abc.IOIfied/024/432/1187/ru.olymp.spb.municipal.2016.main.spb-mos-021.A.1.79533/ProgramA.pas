var
  k, i: integer;

begin
  readln(k);
  i := 0;
  while k mod 10 = 0 do k := k div 10;
  while k div 10 <> 0 do 
  begin
    if k mod 10 = 0 then begin
      i := i + 1;
          end;
          k:=k div 10;
  end;
  writeln(i);
end.