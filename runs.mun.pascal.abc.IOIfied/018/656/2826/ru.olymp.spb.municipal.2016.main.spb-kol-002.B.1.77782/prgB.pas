program prgB;
var n,p,q,tmp,i,j:integer;
var ab,q1,p1:real;
begin
i:=1;
writeln('Введите n');
read(n);
writeln('Введите p');
read(p);
writeln('Введите q');
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
      //writeln('1/p=',p1,' 1/q=',q1,' ab=',ab); //Отладка
      if ((ab<q1) AND (ab>p1)) AND (ab<1) 
      then
        begin
        writeln(j,'/',i);
        end;
    end;
end;


end.