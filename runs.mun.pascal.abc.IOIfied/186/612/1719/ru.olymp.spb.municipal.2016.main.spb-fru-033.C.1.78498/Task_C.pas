program task_c;
var n,i,j,o,closest:integer;
a:array[1..100,1..100] of integer;
begin
readln(n);
for i:=1 to n do
for j:=1 to n do
if (j=i)or(j=n-i+1)then
a[i,j]:=1;


if  (n mod 2 =1) then
for i:=1 to n do
for j:=1 to n do
if (a[i,j]<>1) then begin
if (abs(i-j)<abs(i-(n-j+1))) then
closest:=j
else
closest:=n-j+1;
a[i,j]:=abs(i-closest)+1;
end;
if  (n mod 2 =0) then begin
for i:=1 to n div 2 do
for j:=1 to n div 2 do
if (a[i,j]<>1) then begin
if (abs(i-j)<abs(i-(n-j+1))) then
closest:=j
else
closest:=n-j+1;
a[i,j]:=abs(i-closest)+1;
end;
for i:=n div 2+1 to n do
for j:=1 to n div 2 do
a[i,j]:=a[n-i+1,j];

for i:=1 to n div 2 do
for j:=n div 2+1 to n  do
a[i,j]:=a[i,n-j+1];
for i:=n div 2+1 to n do
for j:=n div 2+1 to n  do
a[i,j]:=a[n-i+1,n-j+1];
end;
for i:=1 to n do begin
for j:=1 to n do begin
a[i,j]:=a[i,j] mod 26;
if (a[i,j]=0) then
a[i,j]:=26;
write(chr(a[i,j]+96));
end;
writeln;
end;
end.