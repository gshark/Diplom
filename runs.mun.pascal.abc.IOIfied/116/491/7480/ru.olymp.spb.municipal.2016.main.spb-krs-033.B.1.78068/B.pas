program qq;
function nod(a,b:real):real;
var k:real;
begin
while(a<>b)do
if a>b then a:=a-b
else b:=b-a;
nod:=a;
end;
var n,p,q:integer;
i,k:real;
begin
k:=1;
readln(n,p,q);
while(k<=n)do
begin
i:=1;
while(i<=k)do
begin
if((nod(i,k)=1)and(1/p<i/k)and(i/k<1/q))then writeln(i,'/',k);
i:=i+1;
end;
k:=k+1;
end;
end.