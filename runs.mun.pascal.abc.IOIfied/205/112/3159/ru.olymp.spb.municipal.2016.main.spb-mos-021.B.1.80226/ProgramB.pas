var 
f: real;
n,p,q: shortint;
i,b: integer;
begin
readln (n,p,q);
for b:= 1 to n-1 do begin
for i:=1 to n-1 do begin
f:=b/i;
if (f>1/p) and (f<1/q) then writeln (b,'/',i);
end;
end;
end.
