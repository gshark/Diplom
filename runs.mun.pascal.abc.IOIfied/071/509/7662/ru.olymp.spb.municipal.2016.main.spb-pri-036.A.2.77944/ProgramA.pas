program A;
var k,b,n,d:integer;
begin
write('k=');
read(k);
b:=k;
n:=0;
d:=0;
repeat
if k mod 10<>0 then b:=1
else k:=k div 10;
until b=1;
repeat
k:=k div 10;
if k mod 10=0 then n:=n+1;
if k div 10=0 then d:=1;
until d=1;
writeln(n);
end.

