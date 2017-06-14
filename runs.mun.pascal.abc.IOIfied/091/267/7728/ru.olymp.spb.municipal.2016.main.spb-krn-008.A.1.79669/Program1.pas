var k, n: integer;
begin
readln(k);
n:=0;
while k mod 10=0 do
k:=k div 10;
repeat 
if k mod 10=0 then n:=n+1;
k:=k div 10;
until k=0;
writeln(n);
end.
