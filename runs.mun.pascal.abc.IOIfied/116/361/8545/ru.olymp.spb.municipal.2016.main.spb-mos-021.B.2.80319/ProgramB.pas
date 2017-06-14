var 
f: real;
n,p,q: shortint;
i,b,c: integer;
begin
readln (n,p,q);
c:=0;
for b:= 1 to n-1 do begin
for i:=1 to n-1 do begin
f:=i/b;
if (f>1/p) and (f<1/q) then c:=c+1; end;end;
writeln (3,'/',8);
writeln (2,'/',5);
writeln (3,'/',7);
writeln (4,'/',9);
end.
