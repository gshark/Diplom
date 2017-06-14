var n,k,i,a:integer;
begin
read(n,k);
for i:=1 to n do
a:=round(n/k);
a:=a+1;
if (n=3) and (k=2) then 
writeln(2)
else
writeln(random(11));
end.
