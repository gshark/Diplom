program second;
var p,q,a:real;
n,i,j,m:integer;
begin
read (n,p,q);
p:=1/p;
q:=1/q;
for i:=2 to n do
for j:=1 to i-1 do begin
a:=j/i;
for m:=2 to i do 
if(i mod m=0)and(j mod m=0) then a:=0;
if (a>p)and(a<q) then writeln (j,'/',i);
end;
end.