program prgB;
var n,p,q,tmp,i,j:integer;
var ab,q1,p1:real;
begin
i:=1;
writeln('¬ведите n');
read(n);
writeln('¬ведите p');
read(p);
writeln('¬ведите q');
read(q);
q1:=1/q;
p1:=1/p;
while(i<(n-1))
do
  begin
    i:=i+1;
    j:=1;
    while( j<n)
    do
      begin
      j:=j+1;
      ab:=j/i;
      if ((ab<q1) AND (ab>p1)) AND (ab<1) 
      then
        begin
        writeln(j,'/',i);
        end;
    end;
end;


end.