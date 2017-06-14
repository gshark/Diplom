var
  a, c,d: integer;
begin
  readln(a);
  while a mod 10 = 0 do 
  begin
  a := a div 10;
  end;
  while a div 10 > 0 do
  begin
  c:= a mod 10;
  if c = 0 then d:= d+1;
  a:= a div 10;
  end;
  writeln(d);
  readln();
end.