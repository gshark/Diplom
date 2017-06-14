program one;
var k,i :longint;
begin
readln(k);
while k mod 10=0 do
 k:=k div 10;
while k <>0 do begin
 if k mod 10=0 then i:=i+1;
 k:=k div 10;
end;
write(i);
end.