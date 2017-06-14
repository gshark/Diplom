program tri;
var a:array[1..100,1..100] of string;
n,i,j:integer;
begin
readln(n);
for i:=1 to n do 
for j:=1 to n do begin
if (i=j)or(i+j=n+1) then a[i,j]:='a';
if (i=j+1)or(i+j=n)or(i=j-1)or(i+j=n+2) then a[i,j]:='b';
if (i=j+2)or(i=j-2)or(i+j=n+3)or(i+j=n-1) then a[i,j]:='c';
end;
for i:=1 to n do begin 
for j:=1 to n do 
write(a[i,j]);
writeln;
end;
end.





