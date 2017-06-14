Program b;
var n,p,q,i,j:integer;
    z:real; 
Begin
read(n,p,q);
for i:= 1 to n do
for j:=1 to n-1 do
if ((i/j)>(1/p)) and ((i/j)<(1/q)) then 
writeln(i,'/',j);
end.
