program drobi;
var n,p,q,k,w,r,fl,t:integer; x,y:real;
m:array [1..5000,1..2] of real;

begin
writeln('¬ведите 3 числа');
read(n,p,q);

for k:=1 to n-1 do
for w:=1 to k do begin
if ((w/k)>(1/p)) and ((w/k)<1/q) then begin if (not(k mod w = 0)) or (w=1) then begin r:=r+1; m[r,1]:=w; m[r,2]:=k;
end; end; end;
while fl=0 do begin t:=0;
for k:=1 to r-1 do begin
if (M[k,1]/m[k,2])>(M[k+1,1]/m[k+1,2]) then begin
t:=t+1; x:=M[k,1]; y:=m[k,2]; M[k,1]:=m[k+1,1];M[k,2]:=m[k+1,2];m[k+1,1]:=x; m[k+1,2]:=y; end; end;
if t=0 then fl:=1 end;
for k:=1 to r do begin 
writeln(m[k,1],'/',m[k,2]);
end end.
