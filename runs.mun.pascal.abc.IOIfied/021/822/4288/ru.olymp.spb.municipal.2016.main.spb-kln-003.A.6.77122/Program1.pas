var k, i, n:integer;
begin
readln(k);
if k mod 10 = 0 then begin
repeat k:= k div 10
until k mod 10 <> 0
end;
repeat if k mod 10 = 0 then n+=1;
k:= k div 10;1
until k div 10 <1;
write(n);
end.