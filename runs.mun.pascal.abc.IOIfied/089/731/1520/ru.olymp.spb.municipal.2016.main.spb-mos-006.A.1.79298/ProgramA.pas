program new;
var k,x :longint;
begin
readln (k);
x:=0;
while ((k mod 10)=0) do
k:=k div 10;
while ((k div 10)<>0) do begin
if ((k mod 10)=0) then x:=x+1;
k:=k div 10;
end;
writeln(x);
end.



