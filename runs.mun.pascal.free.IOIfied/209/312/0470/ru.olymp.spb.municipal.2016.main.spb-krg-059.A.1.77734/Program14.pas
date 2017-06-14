program first;
var k,j:longint;
i,d:integer;
begin
read(k);
j:=10;
for i:=1 to 9 do begin
if k mod j=0 then k:=k div j else
j:=j*10;
end;
repeat
if k mod 10=0 then d:=d+1;
k:=k div 10;
until k=0;
writeln (d);
end.