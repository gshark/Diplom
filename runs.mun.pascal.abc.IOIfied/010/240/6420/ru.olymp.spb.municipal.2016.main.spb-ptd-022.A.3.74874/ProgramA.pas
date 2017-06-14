program nuli;
var k, p: integer;
begin
readln(k);
if k mod 10=0 then
begin
while k mod 10=0 do k:= k div 10;
end;
p:=0;
while k div 10<>0 do
begin
if k mod 10=0 then
begin
p:=p+1;
k:=k div 10;
end;
if k mod 10<>0 then k:=k div 10;
end;
writeln(p)
end.
