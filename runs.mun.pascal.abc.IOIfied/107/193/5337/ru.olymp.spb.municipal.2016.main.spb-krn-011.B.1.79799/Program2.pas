program B;
var n,p,q,j,d,k,i:byte;
begin
readln(n,p,q);
for i:=n downto p do begin
d:=i;
 for j:=1 to n-1 do begin
  k:=j;
  if (k/d<1/q)and(k/d>1/p)
  then begin while k<>d do 
              if d>k
              then d:=d-k
              else k:=k-d;
             if k=1             
               then writeln(j,'/',i);end;end;end;end.  
  
