program number1;
var k,S: integer;
begin
readln(k);
S:=0;
repeat
k:=k div 10;
until k mod 10>0;
repeat
if k mod 10=0 then
   begin
   k:=k div 10;
   S:=S+1;
   end
else
   begin
   k:=k div 10;
   end
until k=0;
writeln(S);
end.
   
