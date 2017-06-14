Program A;
var b,x:integer; 


Begin
b:=1;
readln(x);
while(b=1) do
if (x mod 10 = 0) then x:=x div 10
else b:=0;
while (x>=10) do
begin
if (x mod 10 = 0) then b:=b+1;
x:=x div 10;
end;
writeln(b);
end.
