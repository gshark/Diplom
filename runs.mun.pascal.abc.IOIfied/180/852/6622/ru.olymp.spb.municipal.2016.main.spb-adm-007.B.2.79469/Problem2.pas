Program problem2;
var b,d,c,k,n,i,p,q:integer; a:array[0..1000000, 0..1] of integer; f:boolean;
begin
readln(n,p,q);
for i:=1 to n do 
begin
for k:=ceil(i/p) to floor(i/q) do
begin
if ((i mod k) <> 0) and ( (((i mod 2) <> 0) or ((k mod 2) <> 0)) and (((i mod 3) <> 0) or ((k mod 3) <> 0)) and (((i mod 5) <> 0) or ((k mod 5) <> 0)) and (((i mod 7) <> 0) or ((k mod 7) <> 0)) ) then 
begin
a[c,0]:=k;
a[c,1]:=i;
c:=c+1;
end;
end;
end;
while f = false do
begin
f:=true;
for i:=0 to c do
begin
if (a[i,0]/a[i,1]) > (a[i+1,0]/a[i+1,1]) then
begin
b:=a[i,0];
d:=a[i,1];
a[i,0]:=a[i+1,0];
a[i,1]:=a[i+1,1];
a[i+1,0]:=b;
a[i+1,1]:=d;
f:=false;
end;
end;
end;
for i:=0 to c-1 do
writeln(a[i,0],'/',a[i,1]);
end.