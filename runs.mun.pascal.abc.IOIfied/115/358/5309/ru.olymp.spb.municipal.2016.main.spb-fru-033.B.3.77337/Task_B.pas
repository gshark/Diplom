program task_B;
var n,p,q,k,i,j,swap:integer;
var p1,q1:real;
var a:array[1..1000] of integer;
var b:array[1..1000] of integer;
function checkDelimost(a,b:integer):boolean;
var o:integer;
var res:boolean;
begin
res:=true;
if (a>b) then begin
for o:=2 to b do
if(trunc(a/o)=a/o)and(trunc(b/o)=b/o) then
res:=false;
end
else
for o:=2 to a do
if(trunc(a/o)=a/o)and(trunc(b/o)=b/o) then
res:=false;
checkdelimost:=res;
end;
begin
K:=0;
readln(n,p,q);
p1:=1/p;
q1:=1/q;
for i:=1 to n-1 do
for j:=i+1 to n do
if (p1<(i/j))and((i/j)<q1) and(checkDelimost(i,j))then begin
k:=k+1;
a[k]:=i;
b[k]:=j;
end;
for i:=1 to k do
for j:=i to k do
if (a[j]/b[j]<a[i]/b[i]) then begin
swap:=a[j];
a[j]:=a[i];
a[i]:=swap;
swap:=b[j];
b[j]:=b[i];
b[i]:=swap;
end;
for i:=1 to k do
writeln(a[i],'/',b[i]);
end.