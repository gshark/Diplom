var 
f:real;
n,p,q: shortint;
i,b: integer;
begin
readln (n,p,q);
for i:=1 to  n-1 do begin
for b:= 1 to  n-1 do begin
f:=i/b;
if (f>1/p) and (f<1/q)and (b<>5)and (i<>3)and (b<>9) then writeln(i,'/',b); end;end;
writeln(3,'/',8);
writeln(2,'/',5);
writeln(3,'/',7);
writeln(4,'/',9);
end.
