var
a,m,n,k,i,q: integer;
mas: array[1..11] of integer;
begin
read(n,k);
for i:=1 to n do
mas[i]:=i;
for q:=1 to n do begin
for i:=1 to n-1 do begin
mas[i]:=mas[i]+mas[i+1];
mas[i+1]:=mas[i]-mas[i+1];
mas[i]:=mas[i]-mas[i+1];
for m:=1 to n do
mas[11]:=mas[11]+(mas[m]*mas[m+1]);
if(mas[11] mod k=0) then a:=a+1;
end;end;
write(a);
end.