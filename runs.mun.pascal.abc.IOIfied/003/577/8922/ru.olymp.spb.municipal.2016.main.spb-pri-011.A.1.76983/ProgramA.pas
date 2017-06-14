var k,c,s,b:integer;
begin
read(k);
s:=0;
repeat
c:=k mod 10;
k:=k div 10;
until c <>0;
repeat
b:=k mod 10;
if b=0 then  s:=s+1;
k:=k div 10;
until k=0;
write(s);
end.