program v;
begin
var 
k,i,x,n,z,j,q,p,y,s,h,hg:integer;
var
q1,p1,c,r:single;
var 
A:array[1..100] of integer;
var
B:array[1..100] of integer;
x:=0;

read(n);
read(p);

read(q);





p1:=1/p;
q1:= 1 / (q);
for i:=1 to 100 do begin
A[i]:=x+1;
x:=x+1;
end ;
x:=0;

for i:=1 to 100 do begin
B[i]:=x;
x:=x+1;
end;



for j:=1 to 100 do
for y:=1 to 100 do
begin
if B[y]<n then begin 
c:=A[j] / B[y];
{r:= A[i] div 2 ;
h:= A[i] div 3 ;
s:= A[i] div 5 ;}
h:=B[y] mod A[j];
s:= h mod 5 ;
r:= h mod 2 ;

hg:= h mod 3 ;
if(s>0)then begin 
   if(r>0)then begin 
     if(hg>0)then begin 
if (p1<=c)and(c<=q1)and(h<>0) then 

writeln(A[j],'/',B[y]);
end;
end;
end;
end;
end;
end.



