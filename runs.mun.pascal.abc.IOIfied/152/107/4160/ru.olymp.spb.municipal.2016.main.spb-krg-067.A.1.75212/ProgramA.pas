program A;
var i, k:integer;

begin
i:=0;
readln(k);
while k mod 10 = 0 do
begin
k:=k div 10;
end;
while k div 10 <> 0 do
begin
if (k mod 10 = 0) then
i:=i+1;
k:=k div 10;
end;
writeln(i);

end.