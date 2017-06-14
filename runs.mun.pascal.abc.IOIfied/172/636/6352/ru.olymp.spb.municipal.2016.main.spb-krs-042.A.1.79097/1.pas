var k,x,y: integer;
begin
y:=0;
readln(k);
while k<>0 do 
begin
x:=k mod 10;
if x=0 then k:=k div 10 
else while k<>0 do begin
k:=k div 10;
x:=k mod 10;
if x=0 then inc(y);
end;
end;
writeln(y-1);
end.

