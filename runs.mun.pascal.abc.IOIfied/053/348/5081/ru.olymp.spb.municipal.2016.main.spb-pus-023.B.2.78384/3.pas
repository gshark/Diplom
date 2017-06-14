Function NOD(m,n:integer):integer;
begin
repeat
if m>n then m:=m mod n
else n:=n mod m;
until (m=0) or (n=0);
NOD:=m+n;
end;
var
mas:array[1..1000,1..2] of integer;
t:array[1..1000,1..2] of integer;
a,n,i,j,e:integer;
f,p,q:real;
begin
readln(n,p,q);
p:=1/p;
e:=1;
q:=1/q;
for i:=1 to n-1 do
for j:=1 to n-1 do
begin
f:=i / j;
if (f>p) and (f<q) then
begin
mas[e,1]:=i;
mas[e,2]:=j;
e:=e+1;
end;
end;

for j:=1 to e do
for i:=1 to e do
if mas[i,1]/mas[i,2] > mas[i+1,1]/mas[i+1,2] then
begin
t[1,1]:=mas[i,1];
t[1,2]:=mas[i,2];
mas[i,1]:=mas[i+1,1];
mas[i,2]:=mas[i+1,2];
mas[i+1,1]:=t[1,1];
mas[i+1,2]:=t[1,2];
end;

for i:=1 to e-1 do
if NOD(mas[i,1],mas[i,2])=1 then
writeln(mas[i,1],'/',mas[i,2]);

end.