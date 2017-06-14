var
a:array [1..1000000,1..2] of integer;
n,p,q,j,k,z,d,y,s,l,i:integer;
begin
k:=1;
readln(n,p,q);
for i:=2 to n do
for j:=1 to n-1 do
begin
if i<j then d:=i+1 else d:=j+1;
repeat d:=d-1
until (i mod d=0) and (j mod d =0);
if ((j/i)<(1/q)) and ((j/i)>(1/p)) and (d=1) then
begin
a[k,1]:=j;
a[k,2]:=i;
k:=k+1;
end;
end;
k:=k-1;
//for i:=1 to k-1 do
//for j:=i+1 to k-1 do
//if (a[i,1]/a[i,2]) = (a[j,1]/a[j,2]) then
//begin
//z:=z+1;
//if a[i,1]>a[j,1] then
//for q:=i+1 to k-1 do
//begin
//a[q,1]:=a[q+1,1];
//a[q,2]:=a[q+1,2];
//end
//else 
//for q:=j+1 to k-1 do
//begin
//a[q,1]:=a[q+1,1];
//a[q,2]:=a[q+1,2];
//end
//end;
//k:=k-z-1;
s:=k;
for j:=1 to k-1 do
begin
for i:=j to k do
if (a[i,1]/a[i,2])<(a[s,1]/a[s,2]) then s:=i;
//writeln(a[s,1],'/',a[s,2]);
l:=a[s,1];
y:=a[s,2];
a[s,1]:=a[j,1];
a[s,2]:=a[j,2];
a[j,1]:=l;
a[j,2]:=y;
s:=k;
end;
for i:=1 to k do
writeln(a[i,1],'/',a[i,2]);
end.