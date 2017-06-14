program chisla;
var k, y:integer;
begin
readln (k);
y:=0;
while (k mod 10 = 0) do
k:=k div 10;
while k>10 do begin
k:=k div 10;
if k mod 10 = 0 then y:=y+1;
end; 
write(y);
end.
