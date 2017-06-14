var a,s: integer;
begin
  readln(a);
  s := 0;
  while
  a mod 10=0
  do
  a:=a/10;
  while a > 0 do
  begin
    if (a mod 10 = 0) then
      s := s + 1;
    a := a div 10;
  end;
  writeln(s);
end.