program p1;
var n,p:integer;
begin
readln(n);
p:=0;
while n <>0 do
begin
n:=n div 10;
if n mod 10 <>0 then p:=p+1;
n:=n-(n mod 10);
end;
writeln(p);
end.









