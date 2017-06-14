var n,i,j,l:integer;
a:array[1..100,1..100] of char;
begin
read(n);
for i:=1 to n do
for j:=1 to n do
if j=i then 
begin 
a[i,j]:='a';
a[i,n-j+1]:='a';
for l:=j+1 to n do
if ord(a[i,l])=0 then
if a[i,l-1]='z' then a[i,l]:='a'
else 
begin
a[i,l]:=succ(a[i,l-1]);
a[i,n-l-1]:=succ(a[i,n-l]);
end;
for l:=j-1 downto 1 do
if ord(a[i,l])=0 then
if a[i,l+1]='z' then a[i,l]:='a'
else 
begin
a[i,l]:=succ(a[i,l+1]);
a[i,n-l+1]:=succ(a[i,n-l]);
end;
end;
for i:=1 to n do
begin
for j:=1 to n do
write(a[i,j]);
writeln;
end;
end.
