var k,i,d:integer;
a: array [1..1000] of integer;
begin
readln(k);
d:=1;
while k mod 10 = 0 do
k:=k div 10;
while k div 10 > 1 do
begin
if k mod 10 = 0 then d:=d+1;
k:=k div 10
end;
writeln(d);
end.
