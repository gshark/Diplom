Program Problem_B;
var
n,p,q,x,y,i,c:byte;
min:real:=2;
A:array[0..999] of real;
begin
readln(n,p,q);
x:=1;
y:=p;
i:=0;
for y:=1 to n do begin
for x:=1 to n do begin
if (1/p < x/y) and (x/y < 1/q) then begin A[i]:=x; A[i+1]:=y; A[i+2]:=x/y; i:=i+3; end;
end;
end;
repeat
c:=0;
for x:=0 to i div 3 do begin
if (A[x*3+2] = min) then A[x*3+2]:=0;
if (A[x*3+2] < min) and (A[x*3+2] <> 0) then min:=A[x*3+2];
if A[x*3+2] = 0 then c:=c+1;
end;
for x:=0 to i div 3 do begin
if min = A[x*3+2] then begin writeln(A[x*3],'/',A[x*3+1]); A[x*3+2]:=0; min:=2; end;
end;
until c > (i div 3);
end.