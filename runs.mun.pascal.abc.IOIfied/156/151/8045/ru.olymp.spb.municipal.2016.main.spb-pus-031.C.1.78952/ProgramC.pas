const s = 'abcdefghijklmnopqrstuvwxyz';
var n,i,j,k,t:int64;
a:array[,] of char;
x:char;

begin
readln(n);

SetLength(a,n+2,n+2);
for i:=0 to n+1 do
for j:=0 to n+1 do
a[i,j]:=' ';

k:=0;
for i:=1 to n do
begin
a[i,i]:='a';
a[i,n-i+1]:='a';
if i <> n-i+1 then k+=2
else k+=1;
end;

t:=1;
while k<n*n do
begin
 t += 1;
 x := s[((t-1) mod 26) + 1];
 for i:=1 to n do
 for j:=1 to n do
  if (a[i,j]=' ') and (  ((a[i-1,j]<>' ') and (a[i-1,j]<>x)) or ((a[i+1,j]<>' ') and (a[i+1,j]<>x)) or ((a[i,j-1]<>' ') and (a[i,j-1]<>x)) or ((a[i,j+1]<>' ') and (a[i,j+1]<>x))    ) then begin k+=1; a[i,j]:=x; end;
end;

for i:=1 to n do
 begin
   for j:=1 to n do   
    write(a[i,j]);

 writeln();
 end;
end.