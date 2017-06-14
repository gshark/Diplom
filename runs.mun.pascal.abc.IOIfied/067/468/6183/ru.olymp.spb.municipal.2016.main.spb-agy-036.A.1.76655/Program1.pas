program EX;
var a,b,c,d,x,y,o,k: integer;
r,t:longint;
begin
read(a);
x:=1;
o:=0;
b:=1;
while ( a>b) do
begin
for k:= 1 to x do begin
b:=b*10; end;
if (a mod(b) <> 0) and ( (a mod(b))mod(10) = 0) then begin
o:=o+1; end;
 
x:=x+1;
end;
writeln(o);
end.