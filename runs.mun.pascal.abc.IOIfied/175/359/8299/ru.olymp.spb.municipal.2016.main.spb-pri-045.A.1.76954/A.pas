var k,x,a:integer;
begin
a:=0;
x:=0;
read(k);
repeat
if ((k mod 10)>0) then x:=1;
if ((k mod 10)=0) and (x=1)then a:=a+1;
k:=k div 10;
until ((k div 10)=0);
write(a);
end.