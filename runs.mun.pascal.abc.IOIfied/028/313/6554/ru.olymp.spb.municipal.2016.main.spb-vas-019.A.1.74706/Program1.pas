var a, kol:integer;

begin
  read(a);
  while a mod 10 = 0 do
    a := a div 10;
  while a > 0 do
  begin
    if a mod 10 = 0 then
      kol := kol + 1;
    a:=a div 10;
  end;
  write(kol);
end.