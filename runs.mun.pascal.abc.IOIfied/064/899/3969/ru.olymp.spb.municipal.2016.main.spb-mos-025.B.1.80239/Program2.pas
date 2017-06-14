Program pr2;
var n,p,q,i,j: integer;
BEGIN
 readln(n,p,q);
 for i:=2 to n-1 do
  for j:=1 to n-1 do
   begin
    if (1/p < j/i) and (1/q > j/i) and (i mod j <> 0) or (j mod 1 <> 0) then
     writeln (j,'/',i);
   end;
END.