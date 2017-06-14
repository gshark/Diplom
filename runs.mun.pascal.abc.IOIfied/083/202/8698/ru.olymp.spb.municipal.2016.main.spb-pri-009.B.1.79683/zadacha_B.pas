var mas:array [1..100,1..100] of integer;
    a,b,p,q:real;
    i,j,n:integer;
begin
writeln('Ââåäèòå ÷èñëà  n,p è q');
readln(n,p,q);
p:=1/p;
q:=1/q;
 for i:=1 to n do
  for j:=1 to n do
 begin
 a:=i/j;
 if (a>p) and (a<q) and (i<j)and (j<10) then writeln(i,'/',j)
end
end. 