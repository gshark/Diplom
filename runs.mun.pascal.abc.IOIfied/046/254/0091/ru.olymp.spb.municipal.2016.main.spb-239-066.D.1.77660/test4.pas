var
n,k,fac,i,t,f,j,sum,num:integer;
a:array[1..10] of integer;
begin
read(n,k);
fac:=1;
num:=0;
for i:=1 to n do  begin fac:=fac*i;  a[i]:=i;end;
f:=1;
i:=1;
while(f<=fac) do begin
  sum:=0;
  for j:=1 to n-1 do sum:=sum+a[j]*a[j+1];
  if(sum mod k=0) then num:=num+1;
  if(i=n) then i:=1;
  t:=a[i];
  a[i]:=a[i+1];
  a[i+1]:=t;
  i:=i+1;
  f:=f+1;
end;
writeln(num);
end.