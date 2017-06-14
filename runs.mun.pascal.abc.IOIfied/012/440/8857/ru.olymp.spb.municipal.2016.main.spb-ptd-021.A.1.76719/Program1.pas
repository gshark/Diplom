var k,n:longint
begin
n:=0
readln(k);
write k > 0 do
begin
if (n mod 10) = 0 then inc(n)
k:=k div 10
end;
writeln(n)
end.