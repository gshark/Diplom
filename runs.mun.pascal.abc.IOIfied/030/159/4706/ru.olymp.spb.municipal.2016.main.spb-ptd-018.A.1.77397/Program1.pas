program zadacha1;
var k,a,b,v,c:integer;
begin
read(k);
c:=0;
b:=0;
while k mod 10 = 0 do 
k:=k div 10;
while k<>0 do begin
if k mod 10 = 0 then begin
c:=c+1;
k:=k div 10;
end
else k:=k div 10;
end;
writeln (c);
end.

