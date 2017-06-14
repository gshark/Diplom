var a:array[1..10] of shortint;
n:shortint;
k,m,t:integer;
begin
read(n,k);
m:=0;
t:=0;
for var l:=n downto 2 do begin
for var i :=1 to n-1 do
m+=a[i]*a[i+1];
if m mod k =0 then t+=1;
swap(a[l],a[l-1]) end;
write(t);
end.
