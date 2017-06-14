
var
n,c,r,i,j,i1,t,num:longint;
a:array[1..10000,1..10000] of longint;
arr:array[1..100] of integer;
begin
read(c);
read(r);
read(n);
for i:=1 to n do read(arr[i]);
num:=2;
a[1,1]:=1;
a[c,r]:=c*r;
for i:=2 to r do begin
i1:=1;
while(i1<=c) and(i1<=i) do  begin a[i1,i-i1+1]:=num; num:=num+1; i1:=i1+1; end;
end;
for i:=2 to c do begin
i1:=i;
while(i1<=c) and(i1<=r) do  begin a[i1,r-i1+i]:=num; num:=num+1; i1:=i1+1; end;
end;
for t:=1 to n do 
for i:=1 to c do 
for j:=1 to r do if(arr[t]=a[i,j]) then writeln(i,' ',j);
end.