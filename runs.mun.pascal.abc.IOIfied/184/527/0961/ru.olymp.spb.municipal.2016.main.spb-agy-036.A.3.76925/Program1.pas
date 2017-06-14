program EX;
var a,b,c,d,x,y,o,k: integer;
r,t:longint;
begin
read(a);
x:=0;
o:=0;
b:=10;
while ( a>b) do
begin
if ((a mod(b) <> 0) and ( (a div(b))mod(10) = 0)) then begin
o:=o+1;  end;
b:=b*10;
end;
writeln(o);
end.