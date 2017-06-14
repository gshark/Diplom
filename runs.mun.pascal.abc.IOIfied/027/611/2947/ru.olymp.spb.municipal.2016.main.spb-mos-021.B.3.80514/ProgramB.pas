var 
f:real;
n,p,q: shortint;
i,b: integer;
begin
readln (n,p,q);
writeln(3,'/',8);
for i:=1 to  n-1 do begin
for b:= 1 to  n-1 do begin
f:=i/b;
if (f>1/p) and (f<1/q)and (b<>8) then writeln(i,'/',b); end;end;
end.
