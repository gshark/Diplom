var
a: array [1..100,1..100] of char;
i,j,n,s,q,z,k:integer;
begin
readln(n);
s:=123;
for i:=1 to n do
for j:=1 to n do
a[i,j]:='{';
k:=1;
for i:=1 to n do
begin
a[i,k]:='a';
a[i,n-k+1]:='a';
k:=k+1;
for j:=1 to n do
begin
if a[i,j]='{' then
begin
if i-1>0 then
if ord(a[i-1,j])<s  then s:=ord(a[i-1,j]);
if i+1<=n then
if ord(a[i+1,j])<s then s:= ord (a[i+1,j]);
if j-1>0 then
if ord(a[i,j-1])<s then s:=ord(a[i,j-1]);
if j+1<=n then
if ord(a[i,j+1])<s then s:=ord(a[i,j+1]);
if s=122 then s:=96;
a[i,j]:=chr(s+1);
end;
s:=123;
if a[i,n-j+1]='{' then
begin
if i-1>0 then
if ord(a[i-1,n-j+1])<s  then s:=ord(a[i-1,n-j+1]);
if i+1<=n then
if ord(a[i+1,n-j+1])<s then s:= ord (a[i+1,n-j+1]);
if n-j>0 then
if ord(a[i,n-j])<s then s:=ord(a[i,n-j]);
if n-j+2<=n then
if ord(a[i,n-j+2])<s then s:=ord(a[i,n-j+2]);
if s=122 then s:=96;
//writeln(s);
a[i,n-j+1]:=chr(s+1);
end;
s:=123;
for q:=1 to n do
begin
for z:=1 to n do
write(a[q,z] );
writeln;
end;
end;
end;
for i:=1 to n do
begin
for j:=1 to n do
write(a[i,j] );
writeln;
end;
end.