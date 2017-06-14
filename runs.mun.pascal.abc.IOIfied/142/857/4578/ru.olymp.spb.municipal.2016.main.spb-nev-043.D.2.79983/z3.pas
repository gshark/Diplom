program z3;
var n, k, i, j, tmp, last, c, res, m:integer;
mas:array [1..10] of integer;
key:array [1..10] of integer;
begin
readln(n, k);
res:=0;
for i:=1 to n do mas[i]:=i;
for j:=1 to n do begin
key[j]:=0;
for i:=1 to n-1 do
key[j]:=key[j]+(mas[i]*mas[i+1]);
last:=mas[1];
for c:=1 to n-1 do begin
mas[c]:=mas[c+1];
end;
mas[n]:=last;
end;
//for j:=1 to n do writeln(key[j]);
for j:=1 to n do
if key[j] mod k = 0 then inc(res);
m:=1;
for i:=1 to n-1 do m:=m*i;
writeln(res*m);
end.