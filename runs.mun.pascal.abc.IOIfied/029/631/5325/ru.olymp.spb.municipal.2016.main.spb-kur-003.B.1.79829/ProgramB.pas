var n,p,q,i,j:byte;
begin
 readln(n,p,q);
 for i:=2 to 9 do
  for j:=1 to i-1 do
  if (j/i>1/p) and (j/i<1/q)
  then writeln(j,'/',i);
end.