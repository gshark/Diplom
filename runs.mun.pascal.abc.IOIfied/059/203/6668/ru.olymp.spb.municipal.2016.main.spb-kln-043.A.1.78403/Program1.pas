program qq;
var k,b:integer;
begin
write();
read (k);
b:=0;
repeat k:=k div 10
until k mod 10 = 0;
while (k mod 10 = 0) do begin
k:=k div 10;
b:=b+1;
end;
write (b);
end.