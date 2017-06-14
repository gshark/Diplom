program qq;
var n,i,j,k:integer;
m:array[1..100,1..100]of char;
begin
readln(n);
for i:=1 to n do
for j:=1 to n do
m[i,j]:='-';
for i:=1 to n div 2 +1 do
begin

for j:=i to n div 2 +1 do
begin
k:=ord('a')-1+j-i+1;
while(k>ord('a')-1+26)do k:=k-26;
m[i,j]:=chr(k);
end;

for j:=n-i+1 downto n div 2 +1 do
begin
k:=ord('a')-1+n-j-i+2;
while(k>ord('a')-1+26)do k:=k-26;
m[i,j]:=chr(k);
end;

for j:=i downto 1 do
begin
k:=ord('a')-1+i-j+1;
while(k>ord('a')-1+26)do k:=k-26;
m[i,j]:=chr(k);
end;

for j:=i downto 1 do
begin
k:=ord('a')-1+i-j+1;
while(k>ord('a')-1+26)do k:=k-26;
m[i,n-j+1]:=chr(k);
end;

end;
for i:=n downto n div 2 +1 do
for j:=1 to n do m[i,j]:=m[n-i+1,j];
for i:=1 to n do
begin
for j:=1 to n do
write(m[i,j]);
writeln();
end;
end.