program p1;
var  k,x:integer;
begin
x:=0;
read(k);
while k mod 10 = 0 do k:= k div 10;
while k<>0 do begin if k mod 10 = 0 then x:=x+1; k:=k div 10 end;
write(x)
end.