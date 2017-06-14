program task_e;
var r,c,q,i,j,l,k:integer;
a:array [1..100] of longint;
function countdiagonalsum(L:integer):longint;
var o,k,max,min:integer;
res:longint;
begin
if r>c then begin
max:=r;
min:=c;
end
else begin
max:=c;
min:=r;
end;
k:=1;
res:=0;
for o:=1 to l do begin
res:=res+k;
if(k<min)and(o<max) then k:=k+1;
if(o>=max) then k:=k-1;
end;
countdiagonalsum:=res;
end;
begin
readln(r,c,q);

for i:=1 to q do
read(a[i]);
for i:=1 to q do begin
l:=1;
k:=countdiagonalsum(l);
while(k<a[i]) do begin
l:=l+1;
k:=countdiagonalsum(l);
end;
l:=l-1;
k:=countdiagonalsum(l);
if(l<c) then
writeln(a[i]-k,' ',l+2-a[i]+k)
else
writeln(a[i]-k+(l+1-c),' ',l+2-a[i]+k-(l+1-c))
end;
end.