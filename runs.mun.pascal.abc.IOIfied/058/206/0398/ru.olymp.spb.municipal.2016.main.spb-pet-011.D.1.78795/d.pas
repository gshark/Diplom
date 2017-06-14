var n,k,sum,cnt,i,j,t:integer; a:array [1..10] of integer;
begin
read(n,k);
for i:=1 to n do
a[i]:=i;
for i:=1 to n-1 do
for j:=1 to n-i do
begin
sum:=0;
for t:=1 to n-1 do
sum+=a[t]*a[t+1];
if sum mod k =0 then
cnt+=2;
t:=a[j];
a[j]:=a[j+1];
a[j+1]:=t;
end;
write(cnt);
end.