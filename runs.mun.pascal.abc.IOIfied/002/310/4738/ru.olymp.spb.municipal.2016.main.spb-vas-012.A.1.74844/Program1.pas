Program A;
var b,x,c:integer ; 


Begin
b:=1;
c:=1;
readln(x);
while(b=1) do
if (x mod 10 = 0) then x:=x div 10
else b:=0;

if (x<10) then c:=0;
while (c=1) do
begin
if (x<10) then c:=0;

if (x mod 10 = 0) then b:=b+1;

x:=x div 10;

end;
writeln(b);

end.
