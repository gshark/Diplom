begin
var k,a:integer;
read(k);
while a=0 do
 begin
 a:=k mod 10;
 if a>0 then 
 break;
 k:= k div 10;
 end;
a:=0; 
while k>0 do
 begin
 if k mod 10=0 then
 a:=a+1;
 k:=k div 10;
 end;
writeln(a); 
end.
