program one;
var
i,j,nod,n,p,q,k,s:integer;
d:real;
begin
read(n,p,q);
for k:=1 to n do begin
for s:=1 to n do begin
i:=k;
j:=s;
 d:=i/j;
 if i<j then  begin
 while i*j<>0 do begin
 if (i>j) then i:=i mod j else j:=j mod i 
 end;
 nod:=i+j;
 if (nod=1)and(d>1/p)and(d<1/q) then writeln(k,'/',s);
 end
 end;
 end;
 end.