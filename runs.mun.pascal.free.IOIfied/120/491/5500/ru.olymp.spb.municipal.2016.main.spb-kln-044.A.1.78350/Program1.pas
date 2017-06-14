program tmp;
var m,i,k,c:integer;
begin
read(k);
i:=k mod 10;
k:=k div 10;
repeat
i:=k mod 10;
k:=k div 10;
if i=0 then
begin
if c=0 then
begin
c:=1;
m:=m+1;
end
else 
c:=0;
end
else c:=0;
until k=0;
writeln(m);
end.