Program first;
var k,r,sum,slag:integer;
begin
Readln(k);
while k>0 do
begin
r:=k mod 10;
k:=k div 10;
if ((r=0)and(slag>0))then sum+=1;
if r<>0 then slag+=1;
end;
writeln(sum);
end.

