var n, i, j, k, l, m: integer;
c:char;
a:array[1..100,1..100] of char;
begin
read(n);
for i:=1 to n do
begin
if i<=(n div 2) then l:=i else l:=n-i+1;
for j:=1 to n do
begin
if j<=(n div 2) then m:=j else m:=n-j+1;
k:=abs(l-m);
write(chr(k mod 26 +97));
end;
writeln();
end;
end.