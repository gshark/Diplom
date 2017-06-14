program z2;
var
  n,p,q,i,j,lmax,maxi,maxj:integer;
begin
  readln(n,p,q);
  for i:=p to n do
    begin
      for j:=1 to n-1 do
        if (j/i>1/p) and (j/i<1/q) 
          then
            lmax:=j;
    end;
  
        
  for i:=1 to lmax do
    for j:=p to n-1 do
    begin
      if (i/j>1/p) and (i/j<1/q) 
        then
          writeln(i,'/',j);
    end;
end.