program lubitelb;
var k,x,s,i,y:integer;
begin
readln(k);
while k mod 10=0 do k:=k div 10;
y:=k;
while k div 10 >0 do begin
                     k:=k div 10;
                     x:=x+1;
                     end;
x:=x+1;
s:=0;
for i:=1 to x do begin
                 if y mod 10>0
                 then s:=s+1;
                 y:=y div 10;
                 end;
                 

writeln(s);
end.