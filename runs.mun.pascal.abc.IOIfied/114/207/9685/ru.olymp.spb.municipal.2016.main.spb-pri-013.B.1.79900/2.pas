var n,p,q,c,z: integer;
a: real;
begin
read (n, p, q);
for c:=1 to 100 do begin
 for z:=1 to n do begin
  a:=c/z;
  if (a>1/p) and (a<1/q) then writeLn (c,'/',z);
 end;
end;
end.