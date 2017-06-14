
Var n,p,q,i,j: integer;
f: real;
begin
readln (n);
readln (p);
readln (q);
j:=1;
repeat
for i:= 1 to n do 
begin
if ( j mod i <> 0) and ((j/i)>(1/p))and ((j/i)<(1/q)) then writeln(j,'/',i)
end;
j:=j+1;
until j=n
end.
