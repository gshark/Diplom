program good;
var n,p,q,i,j,k,z:integer;r:real;
t:text;
a:array  [1..1000]of integer;
b:array  [1..1000]of integer;
c:array  [1..1000]of real;
begin
assign(t, 'input.txt');reset(t);
read(t,n,p,q); close (t);

for i:=1 to n do
for j:=i+1 to n-1 do
if  (((i mod 2<>0)and(j mod 2<>0))or
    ((i mod 3<>0)and(j mod 3<>0))or
    ((i mod 4<>0)and(j mod 4<>0))or
    ((i mod 5<>0)and(j mod 5<>0))or
    ((i mod 6<>0)and(j mod 6<>0))or
    ((i mod 7<>0)and(j mod 7<>0))or
    ((i mod 8<>0)and(j mod 8<>0))or
    ((i mod 9<>0)and(j mod 9<>0))or
    ((i mod 10<>0)and(j mod 10<>0)))and
    ((i/j)>(1/p))and((i/j)<(1/q))
    then begin k:=k+1; a[k]:=i; b[k]:=j; end;

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

assign(t,'output.txt');rewrite(t);
for i:=1 to k do
writeln (t,a[i],'/',b[i]);
close(t);

end.