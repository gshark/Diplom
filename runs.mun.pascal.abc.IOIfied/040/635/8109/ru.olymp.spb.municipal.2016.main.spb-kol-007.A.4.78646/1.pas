program ZADANIE 1;
var x, i, g: integer;
begin
g:=0;
readln(x);
while(x mod 10) = 0 do
x:= x div 10;
for i:=1 to 1000000000 do
begin
if(x mod 10) = 0 then g:=g+1;
x:= x div 10;
if x=0 then break;
end;
writeln(g);
end.