var p, q, k, i, j, j1, n, x: integer; max, d: real;
a:array[1..10000,1..2] of real;
function f(a, b: integer):integer;
begin
while a<>b do
begin
if a>b then a:=a-b;
if a<b then b:=b-a;
end;
f:=a;
end;

begin
k:=0;
read(n);
read(p);
read(q);
for i:=1 to n do
for j:=1 to i do
if (p*j>i) and (q*j<i) and (f(i,j)=1) then
begin
a[k+1,1]:=j;
a[k+1,2]:=i;
k:=k+1;
end;

x:=k;
for i:=1 to k do
begin
 max:=-maxint;
 for j:=1 to x do
 if (a[j,1]/a[j,2])>max then
 begin 
 max:=a[j,1]/a[j,2];
 j1:=j;
 end;
 d:=a[j1,1];
 a[j1,1]:=a[x,1];
 a[x,1]:=d;
 d:=a[j1,2];
 a[j1,2]:=a[x,2];
 a[x,2]:=d;
 x:=x-1;
end;
for i:=1 to k do writeln(a[i,1],'/',a[i,2]);
end.