program good;
uses crt;
var n,p,q,i,j,k,z:integer;r:real;
a:array  [1..1000]of integer;
b:array  [1..1000]of integer;
c:array  [1..1000]of real;
begin

read(n,p,q);

for i:=1 to n do
for j:=i+1 to n-1 do
if  (((i mod 2=0)and(j mod 2=0))or
    ((i mod 3=0)and(j mod 3=0))or
    ((i mod 5=0)and(j mod 5=0))or
    ((i mod 7=0)and(j mod 7=0))or
    ((i mod 11=0)and(j mod 11=0))or
    ((i mod 13=0)and(j mod 13=0))or
    ((i mod 17=0)and(j mod 17=0)))and
    ((i/j)<(1/p))or((i/j)>(1/q))
    then
    else begin k:=k+1; a[k]:=i; b[k]:=j; end;
for i:=1 to k do
c[i]:=a[i]/b[i];

for i:=1 to k-1 do
for j:=1 to k-1 do
  if c[j]>c[j+1] then
  begin
  r:=c[j];
  c[j]:=c[j+1];
  c[j+1]:=r;
  z:=a[j];
  a[j]:=a[j+1];
  a[j+1]:=z;
  z:=b[j];
  b[j]:=b[j+1];
  b[j+1]:=z;
  end;
for i:=1 to k do
writeln (a[i],'/',b[i]);
end.