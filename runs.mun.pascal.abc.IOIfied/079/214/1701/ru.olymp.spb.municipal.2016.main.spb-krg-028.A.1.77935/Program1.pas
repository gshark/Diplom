Program lubitel;
var k,a: integer;
begin
readln (k);
a:=0;
while k mod 10= 0
do  k:=k div 10;
while k mod 10<>0
do begin
k:= k div 10;
if k mod 100= 0
then a:=2 else If k mod 10=0 then a:=1
end;
writeln (a);
end.