var
n,i,a,b,c:integer;
begin
b:=0;
a:=0;
i:=10;
readln(n);
repeat
c:=n mod i;
if a=0 then
if c<>0 then a:=1;
if a=1 then
if c=0 then b:=b+1;
n:=n div 10;
until n=0;
writeln(b);
end.
