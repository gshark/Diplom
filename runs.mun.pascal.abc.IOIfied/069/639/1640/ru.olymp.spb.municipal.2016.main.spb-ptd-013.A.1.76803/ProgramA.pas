program a;
var k,i: integer;
begin
readln(k);
i:=0;
while k>1 do
begin
while k mod 10 = 0 do k:=k div 10;
while k mod 10 > 0 do k:=k div 10;
while k mod 10 = 0 do 
begin
k:=k div 10;
i:=i+1;
end
end;
writeln(i);
end.
