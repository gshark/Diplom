var n,p,q,i,j,c:integer;
begin
read(n,p,q);
for i:=1 to n do begin
for j:=1 to i do begin
if (i mod j <> 0) and ((i mod 2 <> 0) or (j mod 2 <> 0)) then
if ((j/i)>(1/p)) and((j/i)<(1/q)) then 
writeln(j,'/',i);
end;
end;
end.