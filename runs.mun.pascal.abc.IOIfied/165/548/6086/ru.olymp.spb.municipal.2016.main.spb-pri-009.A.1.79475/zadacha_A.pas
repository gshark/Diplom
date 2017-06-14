program zadachaA;
var k,a:integer;
begin
writeln('¬ведите число k');
readln(k);
a:=0;
repeat
if k mod 10=0 then
k:=k div 10;
until k mod 10<>0;

repeat
k:=k div 10;
if k mod 10=0 then
a:=a+1;
until k=1;
writeln(a);
end.
