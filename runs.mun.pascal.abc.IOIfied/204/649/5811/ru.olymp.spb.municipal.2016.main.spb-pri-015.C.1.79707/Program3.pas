

var  mas: array [1..100,1..100] of integer;
 b: array [1..100,1..100] of char;
i,j,n,k:integer;
begin
readln(n);

k:=1;
for i:=1 to n-1 do
for j:=1 to n-1 do
begin
mas[i+1,j+1]:=1;
mas[n-i,n-j]:=1;
end;
for i:=1 to n-1 do
for j:=1 to n-1 do
begin
if mas[i,j]=k then
   {begin if  (mas[i+1,j]<>k) and  (mas[i,j+1]<k) then}
   begin
   mas[i+1,j]:=k+1;
   mas[i,j+1]:=k+1;
   end;

k:=k+1;
end;
for i:=1 to n do
for j:=1 to n do
 case mas[i,j] of
    1: b[i,j]:='a';
    2: b[i,j]:='b';
    3: b[i,j]:='c';
    4: b[i,j]:='d';
    5: b[i,j]:='e';
    6: b[i,j]:='f';
   end;

for i:=1 to n   do
begin
for j:=1 to n do
write(b[i,j]);
writeln;
end;

end.