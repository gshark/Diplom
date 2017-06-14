const n=5;
var A:array[1..5,1..5] of char;
i,j:integer;
c:='a';
k:='b';
begin
for i:=1 to n do begin
for j:=1 to n do begin
if i=j then A[i,j]:=c
else A[i,j]:=k;
write(A[i,j]:4);
end;
writeln;
end;
end.



