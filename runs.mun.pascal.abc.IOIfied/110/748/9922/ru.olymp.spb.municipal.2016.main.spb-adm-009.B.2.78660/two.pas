Program two;
var n,p,q,i,g,u:integer;
var a,b,c,f:real;
var Z: array[1..10000] of real;
var K: array[1..10000] of real;
var L: array[1..10000] of real;
begin
u:=1;
read (n,p,q);
a:= 1 / p; // Minimum
b:= 1/ q; // Maximum
// n - Maximalnii znamenatel
for i:=1 to n do begin
for g:=1 to i do begin
if ((g/i)>a) and ((g/i) < b )then begin  writeln(g,'/',i); 
{Z[u]:=g/i; 
K[u]:=g; 
L[u]:= i;
u:=u+1;}end;    


end;
end;
{for i:=1 to u do begin
for g:=2 to u do begin
if Z[g]< Z[i] then begin
writeln(K[g], '/', L[g]);
end
else 
begin
writeln(K[i], '/', L[i]);
end;

end;
end;

}
end.