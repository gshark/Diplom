program v;
begin
var 
k,i,c,x,n,z,p,q,j:integer;
var
q1,p1:double;
var 
A:array[1..100] of integer;
var
B:array[1..100] of integer;
x:=0;
begin
read(n);
read(p);
read(q);


q1:=q/ 1;

p1:=1/p;
for i:=1 to 100 do
begin
        A[i]:=x+1;
B[i]:=x+1;
end;



for j:=1 to 100 do
for i:=1 to 100 do
begin
c:=A[j] div B[i];
if (p1<c)and(c<q1) then 
write(A[j],'/',B[i])
end ;
end;
end.


