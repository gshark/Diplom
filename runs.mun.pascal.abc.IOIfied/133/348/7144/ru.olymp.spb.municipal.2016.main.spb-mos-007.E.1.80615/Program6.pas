program stas;
var A : array [1..1000,1..1000] of integer;
F : array [1..1000] of integer;
b, c, d, i, j,i1, j1, i2, j2, i3, j3, g, h : integer;
begin
readln(b,c,d);
for i := 1 to d do begin
read(F[i]);
end;
i1 := 1;
j1 := 3;
i2 := 2;
j2 := 2;
i := 1;
j := 2;
i3 := 3;
j3 := 1;
A[1,1] := 1;
A[1,2] := 2;
A[2,1] := 3;
A[1,3] := 4;
A[2,2] := 5;
A[3,1] := 6;
g := 7;
repeat
if (j1 < c) then begin
A[i1,j1 + 1] := g;
g := g + 1;
j1 := j1 + 1;             
end;                      
if (j2 < c) then begin    
A[i2,j2 + 1] := g;
g := g + 1;
j2 := j2 + 1;
end;
if (j3 < c) then begin
A[i3,j3 + 1] := g;
g := g + 1;
j3 := j3 + 1;
end;
until (g = d + 1);
for i := 1 to d do begin
for i1 := 1 to b do begin
for j1 := 1 to c do begin
if (A[i1,j1] = F[i]) then begin
writeln(i1,' ',j1);
end;
end;
end;
end;
end.