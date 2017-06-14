program stas;
var A : array [1..1000,1..1000] of integer;
b, c, d, i, j, g : integer;
h : char;
begin
readln(c);
g := 0;
b := 97;
for i := 1 to c do begin
for j := 1 to c do begin
if (i = j)or(i + j = c + 1) then begin
A[i,j] := b;
end;
end;
end;
repeat
if (b = 122) then begin
b := 97;
end
else b := b + 1;
for i := 1 to c  do begin
for j := 1 to c  do begin
if (j < c) then begin
if (A[i,j + 1] = b - 1)and((A[i,j] > b)or(A[i,j] = 0)) then begin
A[i,j] := b;
end;
end;
if (j > 1) then begin
if (A[i,j - 1] = b - 1)and((A[i,j] > b)or(A[i,j] = 0)) then begin
A[i,j] := b;
end;
end;
if (i > c) then begin
if (A[i + 1,j] = b - 1)and((A[i,j] > b)or(A[i,j] = 0)) then begin
A[i,j] := b;
end;
end;
if (j > 1) then begin
if (A[i,j - 1] = b - 1)and((A[i,j] > b)or(A[i,j] = 0)) then begin
A[i,j] := b;
end;
end;
end;
end;
g := 0;
for i := 1 to c do begin
for j := 1 to c do begin
if (A[i,j] > 0) then begin
g := g + 1;
end;
end;
end;
until (g = c * c);
for i := 1 to c do begin
for j := 1 to c do begin
write(chr(A[i,j]),' ');
end;
writeln;
end;
end.