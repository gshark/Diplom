var n, p, q, a, b, k, m, v, w, t, h, y, i, j:integer;
var c, g: real;
var z: array [1..25,1..25] of real;
begin;
readln(n, p, q);
for b:=2 to n do begin
for a:=1 to n-1 do begin
c:=a/b;
m:=0;
for k:=2 to 10 do begin
v:=round(a/k*10);
w:=round(b/k*10);
if (v mod 10=0) and (w mod 10=0) then
m:=m+1;
end;
if (c<1/q) and (c>1/p) and (m=0) then begin
t:=t+1;
z[t, 1]:=a;
z[t, 2]:=b;
z[t, 3]:=a/b;
end;
end;
end;
h:=t;
j:=t;
for i:=1 to j do begin
g:=100;
for t:=1 to h do begin
if g>z[t, 3] then begin
g:=z[t, 3];
y:=t;
end;
end;
writeln(z[y, 1], '/', z[y, 2]);
z[y, 1]:=0;
z[y, 2]:=0;
z[y, 3]:=100;
end;
end.
