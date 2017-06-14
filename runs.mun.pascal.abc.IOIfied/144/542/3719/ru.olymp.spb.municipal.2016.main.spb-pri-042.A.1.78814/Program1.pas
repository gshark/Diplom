Program XXX;
uses crt;
var b,h,a,i,j:integer;
k:array[1..10] of integer;
begin
h:=0;
j:=0;
for a:=1 to 10 do
begin
readln(k[a]);
end;
for i:=1 to 10 do
if k[i]> 0 then
repeat
if k[i+1] = 0 then
j:=j+1
until k[a+1]>0;
writeln(j);
end.




end