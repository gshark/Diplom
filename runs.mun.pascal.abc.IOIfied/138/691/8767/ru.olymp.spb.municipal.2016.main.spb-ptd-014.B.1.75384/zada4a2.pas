program prg;
var n,p,q,a,i:integer;
begin
readln (n);
readln (p);
readln (q);
for i:=1 to n do 
begin 
for a:=1 to 100 do begin
if (a/i>1/p) and (a/i<1/q) and  then writeln (a,'/',i);
end;
end;
end.