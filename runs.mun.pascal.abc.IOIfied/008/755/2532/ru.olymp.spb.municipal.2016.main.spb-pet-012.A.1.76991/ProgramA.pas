var k: longword; z: byte;
begin
read(k);
z:=0;
while (k mod 10=0) do k:=(k div 10);
while k>0 do
begin
if (k mod 10=0) then z+=1;
k:=k div 10; end;
write (z); end.