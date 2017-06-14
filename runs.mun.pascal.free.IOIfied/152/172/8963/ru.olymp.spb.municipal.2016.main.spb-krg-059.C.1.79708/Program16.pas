program third;
var n,k,i,j,b:integer;
a:array[1..100,1..100]of char;
begin
read (n);
for i:=1 to n do
for j:=1 to n do a[i,j]:='c';
for i:=1 to n do
for j:=1 to n do
if(i=j)or(i+j-1=n)then a[i,j]:='a';
b:=ord('b');
for k:=1 to n do begin
for i:=1 to n do
for j:=1 to n do 
if (a[i,j]>chr(b-1))and(j=i+k)or(a[i,j]>chr(b-1))and(j=i-k)then a[i,j]:=chr(b);
b:=b+1;
end;
for i:=1 to n do begin
for j:=1 to n do 
write (a[i,j]);
writeln;
end;
end.