program z1;
var a,b,c:integer;
begin 
  write('a:='); read(a);
  while a <> 0 do begin
    If a mod 10 = 0 then b:=b+1;
    a:= a div 10;
  end;
end.
    