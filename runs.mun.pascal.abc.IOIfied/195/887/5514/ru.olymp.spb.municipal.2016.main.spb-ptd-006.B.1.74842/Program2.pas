var
n,p,q,i,j:integer;
begin
readln(n,p,q);
for i:=1 to 9 do
for j:=1 to 9 do
begin
if i mod j<>0 then
if (i/j<1/q) and (i/j>1/p) then writeln(i,'/',j);
end;
end.