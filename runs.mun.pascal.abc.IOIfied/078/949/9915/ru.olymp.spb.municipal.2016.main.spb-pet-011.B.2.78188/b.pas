function sokrat(a,b:integer):boolean;
var i,cnt:integer;
begin
cnt:=1;
for i:=2 to floor(sqrt(a))+1 do
if(a mod i = 0) and (b mod i=0) then
begin
sokrat:=false;
exit;
end;
sokrat:=true;
end;

var aofx,aofy:array[1..100000] of integer;n,p,q,x,y,i,j,tmpx,tmpy,cnt:integer;

begin
read(n,p,q);
cnt:=1;
for y:=1 to n do
for x:=1 to y do
if (y<x*p) and (x*q<y) and sokrat(x,y) then
begin
aofx[cnt]:=x;
aofy[cnt]:=y;
cnt+=1;
end;
cnt-=1;
for i:=1 to cnt-1 do
for j:=1 to cnt-i do
if(aofx[j]*aofy[j+1]>aofx[j+1]*aofy[j]) then
begin
tmpx:=aofx[j];
tmpy:=aofy[j];
aofx[j]:=aofx[j+1];
aofy[j]:=aofy[j+1];
aofx[j+1]:=tmpx;
aofy[j+1]:=tmpy;
end;
for i:=1 to cnt do
writeln(aofx[i],'/',aofy[i]);
end.