Function d(ch:char):char;
begin
if ch='a' then d:='z'
else
d:=chr(ord(ch)-1);
end;
Function u(ch:char):char;
begin
if ch='z' then 
u:='a'
else
u:=chr(ord(ch)+1);
end;
Const M=100;
Var i,j,n,k:byte; a:array[1..M,1..M] of char;ch:char;
begin
Read(n);
for i:=1 to n do 
for j:=1 to n do 
a[i,j]:='0';
for i:=1 to n do 
for j:=1 to n do 
if ((i=j) or (i=(n-j+1))) 
then a[i,j]:='a';
ch:='b';
for k:=1 to ceil(n/2)-1 do 
begin
for i:=1 to n do
for j:=1 to n do
if ((a[i+1,j]=d(ch)) or (a[i,j+1]=d(ch)) or ((j>1) and (i>1) and ((a[i-1,j]=d(ch)) or (a[i,j-1]=d(ch)))))  and (a[i,j]='0') then
a[i,j]:=ch;
ch:=u(ch);
end;
for i:=1 to n do 
for j:=1 to n do 
begin
Write(a[i,j]);
if j=n then
Writeln();
end;
end.
