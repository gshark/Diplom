program olymp_a; 
var k:integer; b:boolean;l,s:byte;
begin
read(k);
s:=0;
b:=false;
repeat
l:=k mod 10;
if (l=0) and b then s:=s+1;
if (l<>0) and not(b) then b:=true;
k:=k div 10;
until k=0;
writeln('Красота числа=', s);
end.
