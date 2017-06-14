Program Problem_A;
var k,a:cardinal;
begin
readln(k);
while k mod 10 = 0 do k:= k div 10;
while k > 0 do begin
if k mod 10 = 0 then a:=a+1;
k:= k div 10;
end;
write(a);
end.