var p,q,n,i,j:integer;
begin
readln(n,p,q);
for j := 1 to n-1 do
for i:=1 to n do
if (i mod j <>0 ) and (1/p<j/i) and (j/i<1/q)
then writeln(j,'/',i)
end.


