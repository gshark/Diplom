program a1;
var i,j,n,q,p:Integer;
g,z,x,f,d:Real; 
begin
read(n,p,q);
For j:=1 to n-2 do
For i:=1 to n-1 do begin
g:=j/i;
z:=1/p;
x:=1/q;
f:=max(g,z);
d:=max(g,x);
If (f=g)and(d=x)and(g<>z)and(g<>x) then
writeln(j,'/',i);
end;
end.