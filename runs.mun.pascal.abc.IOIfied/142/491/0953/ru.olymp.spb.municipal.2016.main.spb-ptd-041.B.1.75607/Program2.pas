Program p2;
var n,j,p,q,b,c,z,x,i:integer;
h1,h2,a: real;
begin read (n,p,q);
h1:=1/p;
h2:=1/q;
x:=round(n*h2)+1;
c:=0;
for i:=1 to n do
  begin
  for j:=1 to x do
    begin
    a:=j/i;
    for z:=2 to round(sqrt(i)) do if (i mod z = 0) and (j mod z = 0) then c:=1;
    if (h1 < a) and (a < h2) and (c=0) then writeln (j,'/',i);
    c:=0;
    end;
   end;
 end.
 