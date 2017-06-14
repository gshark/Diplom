var k,s:integer;
begin
readln (k);
s:=0;
repeat 
if (k mod 10 = 0) then k:=k div 10;
until (k mod 10)<>0;
repeat 
if (k mod 10=0) then 
s:=s+1;
k:=k div 10;
until k div 10=0;
writeln(s);
end.