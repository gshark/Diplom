var k, t: integer;
begin
t:=0;
readln(k);
while (k mod 10)=0 do
k:=k div 10;
while k<>0 do
begin
if (k mod 10)=0 then t:=t+1;
k:=k div 10;
end;
writeln(t);
end.
