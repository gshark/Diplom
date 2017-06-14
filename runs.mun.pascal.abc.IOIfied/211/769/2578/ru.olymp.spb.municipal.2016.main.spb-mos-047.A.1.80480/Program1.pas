program abc;

var
  k: longint;
  a: integer;

begin

  readln(k);
  while k mod 10 = 0 do k := k div 10;
  
  k := k div 10;
  while k div 10 > 0 do 
  begin
    if k mod 10 = 0 then a := a + 1;
    k := k div 10;
  end;
  writeln(a);
end.  