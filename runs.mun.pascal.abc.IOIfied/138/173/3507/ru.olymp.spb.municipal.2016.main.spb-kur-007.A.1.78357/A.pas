var k:int64;
    n:integer;
begin
n:=0;
readln(k);
if k>100 then
begin
while k mod 10 = 0 do k:= k div 10;
while k > 9 do
begin
if k mod 10 = 0 then n:=n+1;
k:=k div 10;
end;
end;
writeln(n)
end.