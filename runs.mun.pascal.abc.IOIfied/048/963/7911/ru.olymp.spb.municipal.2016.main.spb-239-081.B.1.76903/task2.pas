function nod(m,n:integer):integer;
var a,b:integer;
begin a:=m; b:=n;
while a<>b do begin
if a>b then begin a:=a-b
end
else
begin b:=b-a;
end;
if a=b then nod:=a;
end;
end;





var a,b:array[byte] of integer;
c:array[byte] of real;

n,p,q,i,j,k,x,y,z,r:integer;
p1,q1,t,s,d:real;
begin read(n,p,q);
k:=0;
p1:=1/p;
q1:=1/q;
for j:=1 to n do
for i:=1 to j do
begin
s:=0;
t:=i/j;
if (t>p1) and (t<q1) and (nod(i,j)=1) then
begin
k:=k+1;
a[k]:=i;
b[k]:=j;

end;
end;
for z:=1 to k do
c[z]:=a[z]/b[z];





for x:=1 to k do
for y:=1 to x do begin

if c[y]>c[x] then begin
d:=c[x];
c[x]:=c[y];
c[y]:=d;

r:=a[x];
a[x]:=a[y];
a[y]:=r;

r:=b[x];
b[x]:=b[y];
b[y]:=r;

end;
end;

for z:=1 to k do
begin
writeln(a[z],'/',b[z]);
end;
end.







