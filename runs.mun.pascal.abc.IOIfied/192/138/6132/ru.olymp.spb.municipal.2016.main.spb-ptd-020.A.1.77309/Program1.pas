program a;
var k,k1,s: integer;
begin
read(k);
s:=0;
repeat 
  begin
  k1:=k mod 10;
  k:= k div 10
  end;
until k1<>0;
while k>=10 do
  begin
  k1:=k mod 10; 
  if k1=0 then s:=s+1;
  k:= k div 10;
  end;
write(s)
end.