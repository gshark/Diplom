program prg;
var n,p,q,a,i,f:integer;
d:boolean;
begin
readln (n);
readln (p);
readln (q);
for i:=1 to n do 
begin 
for a:=1 to 100 do begin 
if (a mod 2=0) and (i mod 2=0) then d:=false else d:=true;
if (a/i>1/p) and (a/i<1/q) and d=true then writeln (a,'/',i);
end;
end;
end.