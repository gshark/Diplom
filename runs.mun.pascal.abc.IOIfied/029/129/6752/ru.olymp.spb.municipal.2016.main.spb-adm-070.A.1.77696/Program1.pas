program null;
var k, n: integer;
begin
readln(k);
begin 
while k mod 10 = 0 do
k:= k div 10;
end;
n:= 1;
begin
while k<>0 do
k:= k div 10;
if k mod 10 = 0 then 
n:= n + 1;
end;
writeln(n);
end.

