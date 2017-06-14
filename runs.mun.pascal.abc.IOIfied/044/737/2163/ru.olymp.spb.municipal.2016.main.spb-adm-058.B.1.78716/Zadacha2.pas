var 
a: array [1..1000] of real;
v: array [1..1000] of real;
e: array [1..1000] of real;
y: array [1..1000] of real;
n, p, q, f, c, r,  u ,  min, z: real;
k, l, p1, e1, y1, o1: integer;
begin
readln (n, p, q);
p1:=1; e1:=1; y1:=1;  min:=101;
u:=0;
k:=1;
r:=p-1;
while (r < n) do begin 
r:=r+1;
c:=0;
while (c < r) do begin
c:=c+1;
f:=c/r;

for k:=1 to l do begin
if (a[k]=f) then  u:=u+1;
end;

if (f < 1/q) and (f > 1/p) and (u=0) then begin 
if (u=0) then begin v[p1] := c; p1:=p1+1 end; 
if (u=0) then begin e[e1] := r; e1:=e1+1 end;
if (u=0) then begin y[y1] := f; y1:=y1+1 end;
end;
if (f >= 1/q) or (f <= 1/p) or (u <>0) then u:=0;
a[k]:=f;
l:=l+1;
                                                 
end;
end;
o1:=1;
while o1 <= y1 do begin
for k:= o1 to y1 do begin
if (y[k] < min) then begin min:=y[k]; y[k]:=y[o1]; y[o1]:=min; 
                           z:=v[k]; v[k]:=v[o1]; v[o1]:=z;
                           z:=e[k]; e[k]:=e[o1]; e[o1]:=z; end;

end;
if (v[o1] <> 0) and (e[o1] <> 0) then
writeln(v[o1],'/',e[o1]);
min:=101;
o1:=o1+1;

end;


end.


