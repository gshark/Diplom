Program Maxim;
var k,a,b,i,c:integer;
begin
readln(a);
c:=0;
if a>10 then
a:=a div 100;
begin
while a<>0 do
begin
if (a mod 10 =0)then
c:=c+1;
a:=a div 10;
end;
end;
writeln(c);
end.