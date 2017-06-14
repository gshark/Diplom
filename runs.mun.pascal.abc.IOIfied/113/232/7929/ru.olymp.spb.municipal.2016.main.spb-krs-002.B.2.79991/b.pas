program n1;
var b,p,q,j,n,i,x,y:integer;
t,z:real;
a:array [1..1000,1..2]of integer;

begin
b:=1;
read(n,p,q);
for i:=1 to n do
for j:=1 to n do
begin
if (i mod j <>0) and(i/j<1/q)and(i/j>1/p)and not((i mod 2=0)and(j mod 2=0))
then
begin
a[b,1]:=i;
a[b,2]:=j;
b:=b+1;
end;
end;
for j:=1 to b-1do
for i:=1 to b-1 do
begin
t:=a[i,1]/a[i,2];
z:=a[i+1,1]/a[i+1,2];

if t>z then
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