program n1;
var b,p,q,j,n,i,x,y:integer;
a:array [1..1000,1..2]of integer;

begin
b:=1;
read(n,p,q);
for i:=1 to n do
for j:=1 to n do
begin
if (i mod j <>0) and(i/j<1/q)and(i/j>1/p)
then
begin
a[b,1]:=i;
a[b,2]:=j;
b:=b+1;
end;
end;
for i:=1 to b-1 do
begin
if a[i,1]/a[i,2]>a[i+1,1]/a[i+1,2] then
begin
x:=a[i,1];
y:=a[i,2];
a[i,1]:=a[i+1,1];
a[i,2]:=a[i+1,2];
a[i+1,1]:=x;
a[i+1,2]:=y;
end;
end;
for i:=1 to b-1 do
writeln(a[i,1],'/',a[i,2]);
end.