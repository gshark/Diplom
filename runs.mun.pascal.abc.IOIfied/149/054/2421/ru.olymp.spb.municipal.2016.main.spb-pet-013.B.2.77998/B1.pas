Function NOD(a,b:integer):integer;
begin
if a=b then NOD:=a
else
begin
Repeat
if a>b then a:=a mod b
else b:=b mod a;
Until (a=0) or (b=0);
Nod:=a+b;
end;
end;
Var k,i,j,n,p,q,max,i1,i2,index:integer; min:real;
a,b:array[1..10000] of integer;
begin
k:=1;
Read(n,p,q);
for i:=1 to n do
for j:=1 to i-1 do
if (NOD(i,j)=1) and ((j/i)>(1/p)) and ((j/i)<(1/q)) then
begin
a[k]:=j;
b[k]:=i;
k+=1;
max:=k-1;
end;
min:=2;
While (max<>0) do
begin
for i:=1 to k-1 do
if (a[i]/b[i]<min) then
begin
min:=a[i]/b[i];
i1:=a[i];
i2:=b[i];
index:=i;
end;
a[index]:=5;
b[index]:=2;
Writeln(i1,'/',i2);
max-=1;
min:=2;
end;
end.