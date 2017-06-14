program one;
var 
n,k,i,j,s:integer;
a:array[1..100,1..100] of string;
begin
for i:=1 to 100 do
for j:=1 to 100 do
a[i,j]:=' ';
readln(n);
if n mod 2<>0 then k:=(n+1)div 2 else k:=n div 2;
for i:=1 to n do begin
  for j:=1 to n do begin
    if (i=j)or(i+j=n+1) then a[i,j]:='a';
    for s:=1 to k do begin
    if ((i-s=j)or(i+s=j)or(j-s=i)or(j+s=i)or(i-s=n+1-j)or(i+s=n+1-j)or(j-s=n+1-i)or(j+s=n+1-i))and(a[i,j]=' ') then 
    a[i,j]:=chr(97+(s mod 26));
    end;
    end;
    end;
    for i:=1 to n do begin
    for j:=1 to n do begin
    write(a[i,j]);
    end;
    writeln;
    end;
    end.