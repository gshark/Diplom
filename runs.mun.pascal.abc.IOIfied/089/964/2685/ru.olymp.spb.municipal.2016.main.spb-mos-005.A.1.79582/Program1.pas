var k:integer;
begin
read(k);
while (k mod 10 =  0) do
k:=k div 10;
var i:integer;
while (k<> 0) do begin
if k mod 10 =  0 then i+=1;
k:=k div 10; end;
write(i);
end.