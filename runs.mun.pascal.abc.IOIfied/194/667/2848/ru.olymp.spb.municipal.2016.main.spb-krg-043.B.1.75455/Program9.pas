Program Pr3;
Var f,p,q,n,a,o: integer;
begin
read(n,p,q);
if (o<n) and (n>=1) and (n<=100) and (q>=1) and (q<=100) and (p<q) and (p>=1) and (p<=100)
then f:=a/o
else read(n,p,q);
if (1/p<f) and (f<1/q) then writeln(f);
end.