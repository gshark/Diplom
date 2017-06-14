program za;
var n,k :integer;
begin
readln(k);
if (k mod 10=0) then
repeat
k:=k div 10;
n:=0;
until (k mod 10>0);
repeat
begin
if (k mod 10=0) then
n:=n+1;
k:=k div 10;
end;
until k<10;
writeln(n);
readln();
end.


