program qq;
var k,b:integer;
begin
read (k);
b:=0;
repeat k:=k div 10
until k mod 10 > 0;
if k mod 10=0 then 
b:=b+1
else k:=k div 10;
if k mod 10=0 then 
b:=b+1
else k:=k div 10;
if k mod 10=0 then 
b:=b+1
else k:=k div 10;
write (b)
end.