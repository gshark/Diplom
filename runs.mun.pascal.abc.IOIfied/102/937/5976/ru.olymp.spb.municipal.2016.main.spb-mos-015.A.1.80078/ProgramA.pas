program a1;
var k,kr,pe:integer;
begin
writeln('1<k<10^9');
kr:= 1;
read(k);

if (k/100000000 - k div 100000000 )=0  then kr:=kr+1;
if (k/100000 - k div 100000 )=0  then kr:=kr+1;
if (k/100 - k div 100 )=0  then kr:=kr+1;
writeln(kr)

end.
