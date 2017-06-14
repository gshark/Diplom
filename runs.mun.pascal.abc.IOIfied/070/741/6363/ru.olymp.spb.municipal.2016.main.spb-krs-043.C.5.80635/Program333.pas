var
b: array [1..100,1..100] of char;
a: array [1..100] of char;
i,j,n,s,q,z,k:integer;
begin
readln(n);
s:=123;
k:=96;
if n mod 2<>0 then
for i:=1 to (n div 2)+1 do
begin
a[i]:=chr(k+1);
a[n-i+1]:=a[i];
k:=k+1;
if k=123 then k:=97;
end;
if n mod 2 =0 then
for i:=1 to (n div 2) do
begin
a[i]:=chr(k+1);
a[n-i+1]:=a[i];
k:=k+1;
if k=123 then k:=97;
end;
k:=1;
for i:=1 to n do
b[k,i]:=a[i];
k:=k+1;
if n mod 2=0 then begin
for j:=2 to n div 2 do
begin
for i:=n div 2 downto 2 do
begin
a[i]:=a[i-1];
a[n-i+1]:=a[n-i+2];
end;
a[1]:=chr(ord(a[2])+1);
if ord(a[1])=123 then a[1]:='a';
a[n]:=chr(ord(a[n-1])+1);
if ord(a[n])=123 then a[n]:='a';
for q:=1 to n do
b[k,q]:=a[q];
k:=k+1;
end;
for i:=n downto n div 2 do
for j:=1 to n do
b[i,j]:=b[n-i+1,j];
for i:=1 to n do
begin
for j:=1 to n do
write(b[i,j]);
writeln;
end;
end;
if n mod 2=1 then begin
for j:=2 to (n div 2)+1 do
begin
for i:=(n div 2)+1 downto 2 do
begin
a[i]:=a[i-1];
a[n-i+1]:=a[n-i+2];
end;
a[1]:=chr(ord(a[2])+1);
if ord(a[1])=123 then a[1]:='a';
a[n]:=chr(ord(a[n-1])+1);
if ord(a[n])=123 then a[n]:='a';
for q:=1 to n do
b[k,q]:=a[q];
k:=k+1;
end;
for i:=n downto (n div 2)+1 do
for j:=1 to n do
b[i,j]:=b[n-i+1,j];
for i:=1 to n do
begin
for j:=1 to n do
write(b[i,j]);
writeln;
end;
end;
end.