Program Sec;
var n, p, q,  i, j, a:integer;
var f, e, d: real;
Begin
read(n, p, q);
e:=1/p;
 
d:=1/q;
for i:=1 to n-1 do begin
for j:=i to n-1 do begin
 
f:=i/j;
 
If (f>e) and (f<d) then
writeln (i,'/',j);
end;
end;
end.