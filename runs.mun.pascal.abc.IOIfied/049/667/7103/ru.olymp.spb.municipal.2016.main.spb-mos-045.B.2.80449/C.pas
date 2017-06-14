var
m,k,n,p,q,i,j,t:longint;
a:array[1..1000000]of longint;
b:array[1..1000000]of longint;
function nod(m1,k1:longint):longint;
var
t:longint;
begin
while(k1>0) do begin
t:=k1;
k1:=m1 mod k1;
m1:=t;
end;
nod:=m1+k1;
end;

procedure sort;
var
i,j:longint;
begin
for i:=1 to t-1 do begin
  for j:= i+1 to t do begin
  if a[i]*b[j]>a[j]*b[i] then begin
  swap(a[i],a[j]);
  swap(b[j],b[i]);
  end;
  end;
  end;
 end;
    
begin
readln(n,p,q);
for k:=1 to n do begin
  for m:=1 to (k-1) do begin
    if (k<m*p)and(k>m*q)and(nod(m,k)=1) then begin
    t:=t+1;
    a[t]:=m;
    b[t]:=k
    end;
  end;
end;
sort;

for i:=1 to t do
writeln(a[i],'/',b[i]);
end.



