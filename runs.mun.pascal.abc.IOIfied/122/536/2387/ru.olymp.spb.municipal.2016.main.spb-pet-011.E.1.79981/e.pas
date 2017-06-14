var a:array[1..10000,1..10000]of integer;aofq:array[1..100] of integer; k,cnty,x,y,cnt,i,r,c,q,j:integer;
begin
read(r,c,q);
for i:=1 to q do
read(aofq[i]);
x:=1;
y:=1;
cnt:=1;
cnty:=1;
for i:=1 to r*c do
begin
a[x,y]:=i;
if (x+1<=r) and((y-1)>=1) then
begin
x+=1;
y-=1;
end
else if cnty+1<=c then
begin
x:=1;
cnty+=1;
y:=cnty;
end
else begin
y:=c;
cnt+=1;
x:=cnt;
end;
end;
for k:=1 to q do
for i:=1 to r do
for j:=1 to c do
if a[i,j]=aofq[k] then
writeln(i,' ',j);
end.