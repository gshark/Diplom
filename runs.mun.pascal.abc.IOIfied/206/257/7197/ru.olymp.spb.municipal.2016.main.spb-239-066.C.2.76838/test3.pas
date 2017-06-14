var
n,i,j,m:integer;
a:array[1..100,1..100] of char;
begin
read(n);
for i:=1 to n do
for j:=1 to n do begin
m:=min(min(abs(i-j),abs(i-(n-j)-1)),min(abs(j-i),abs(j-(n-i)-1)));
if(m>=26) then while(m>=26) do m:=m-26;
a[i,j]:=chr(ord('a')+m);
end;
for i:=1 to n do begin
for j:=1 to n do write(a[i,j]);
writeln();
end;
end.