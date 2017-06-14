var n,p,q,i,j,k,c:integer;
i1:array [1..103] of integer;
j1:array [1..103] of integer;
begin
k:=0;
readln(n,p,q);
for i:=1 to n do
for j:=1 to n-1 do
begin
if (i/j > 1/p) and (i/j < 1/q) then
begin
k:=k+1;
i1[k]:=i;
j1[k]:=j;
end
end;


for i:=1 to k do
for j:=1 to k-i do
if i1[j]/j1[j] > i1[k-i+1]/j1[k-i+1] then begin
c:=i1[k-i+1];
i1[k-i+1]:=i1[j];
i1[j]:=c;
c:=j1[k-i+1];
j1[k-i+1]:=j1[j];
j1[j]:=c end;


for i:=1 to k do
writeln(i1[i],'/',j1[i])
end.
