
Var n,p,q,i,j,h: integer;
f: real;
begin
readln (n,p,q);
j:=1;
repeat
for i:= 1 to n do 
begin
for h:= 1 to n do
begin
if (j mod h<>0) and (i mod h<>0) then f:=j/i;
end;
if (f>1/p) and (f<1/q)then 
writeln(j,'/',i);
end;
j:=j+1;
until j=n;


end.