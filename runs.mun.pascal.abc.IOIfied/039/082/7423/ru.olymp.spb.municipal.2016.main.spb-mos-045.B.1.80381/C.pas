var
m,k,n,p,q:longint;
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

begin
readln(n,p,q);
for k:=1 to n do begin
  for m:=1 to (k-1) do begin
    if (k<m*p)and(k>m*q)and(nod(m,k)=1) then writeln(m,'/',k);
  end;
end;
end.



