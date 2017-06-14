var a:array[1..100,1..100]of integer;n,i,j:integer;
begin
read(n);
for i:=1 to n do
for j:=1 to n do
a[i,j]:=1000;
for i:=1 to n do
begin
a[i,j]:=0;
a[i,n-j+1]:=0;
end;
for i:=1 to n do
for j:=1 to n do
a[i,j]:=min(abs(j-i),abs(j-(n-i+1)));
for i:=1 to n do begin
for j:=1 to n do
begin
if a[i,j] mod 26=0 then
write('a');
if a[i,j] mod 26=1  then
write('b');
if a[i,j] mod 26=2 then
write('c');
if a[i,j] mod 26=3 then
write('d');
if a[i,j] mod 26=4 then
write('e');
if a[i,j] mod 26=5 then
write('f');
if a[i,j] mod 26=6 then
write('g');
if a[i,j] mod 26=7 then
write('h');
if a[i,j] mod 26=8 then
write('i');
if a[i,j] mod 26=9 then
write('j');
if a[i,j] mod 26=10 then
write('k');
if a[i,j] mod 26=11 then
write('l');
if a[i,j] mod 26=12 then
write('m');
if a[i,j] mod 26=13 then
write('n');
if a[i,j] mod 26=14 then
write('o');
if a[i,j] mod 26=15 then
write('p');
if a[i,j] mod 26=16 then
write('q');
if a[i,j] mod 26=17 then
write('r');
if a[i,j] mod 26=18 then
write('s');
if a[i,j] mod 26=19 then
write('t');
if a[i,j] mod 26=20 then
write('u');
if a[i,j] mod 26=21 then
write('v');
if a[i,j] mod 26=22 then
write('w');
if a[i,j] mod 26=23 then
write('x');
if a[i,j] mod 26=24 then
write('y');
if a[i,j] mod 26=25 then
write('z');
end;
writeln();
end;
end.