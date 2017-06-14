program bsd;
var
n,q,p:integer;

procedure av(n:integer;p:real;q:integer);
var
i1,i2,d1,d2,a:integer;
begin
a:=0;
d1:=1;
d2:=1;
for i1:=1 to n do
for i2:=1 to n do
if i1 div i2=0
 then if (p<i1/i2) and (i1/i2<1/q)
       then  if i1/i2<d1/d2
        then begin d1:=i1; d2:=i2; a:=1 end;
       
if a=1 then begin writeln(d1,'/',d2); av(n,d1/d2,q) end;
 end;      

begin
read(n);
read(p);
read(q);
av(n,1/p,q);
end.








