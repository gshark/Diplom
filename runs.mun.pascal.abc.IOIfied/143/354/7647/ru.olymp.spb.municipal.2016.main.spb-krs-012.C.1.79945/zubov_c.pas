var
n,x,i,w,j:integer;
a:array [1..10000,1..10000] of char;
b:array [1..270] of integer;
begin
for i:=1 to 26 do
b[i]:=96+i;
//for i:=1 to 26 do
//write(chr(b[i]),' ');
readln(n);
x:=(n div 2);
w:=0;
for i:=1 to n do
begin
for j:=1 to n do
begin
a[i,j]:=chr( b[j]);

end;
end;


for i:=1 to n do
begin
for j:=1 to n do
begin

for w:=0 to x do
begin
a[i,n-j+1]:=a[i,j];
//a[n-i+1,j]:=a[i,j];
end;
end;
end;


for i:=1 to n do
begin
for j:=1 to n do
begin

for w:=0 to n do
begin
//a[i,n-j+1]:=a[i,j];
if i=j then a[i,j]:=a[1,1];
if j=n-i+1 then a[i,j]:=a[1,1];
end;
end;
end;


for i:=1 to n do
begin
for j:=1 to n do
begin2
//a[j,i]:=a[i,j];
//a[i,j]:=a[j,i];
//a[n-i+1,j]:=a[i,j];
end;
end;


for i:=1 to n do
begin
for j:=1 to n do
begin
write( a[i,j]);
end;
writeln;
end;
end.